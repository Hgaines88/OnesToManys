function nationalityFlags(nationality) {
    return {
        American: "🇺🇸",
        British: "🇬🇧",
        "British-Jamaican": "🇬🇧 🇯🇲",
        Canadian: "🇨🇦",
        Georgian: "🇬🇪",
        Italian: "🇮🇹",
        Japanese: "🇯🇵",
        "Liberian-American": "🇱🇷 🇺🇸",
        "Northern Irish": "🇬🇧",
    }[nationality] || "";
}


async function loadDesigner() {
    const parameters = new URLSearchParams(window.location.search);
    const designerId = parameters.get("id");

    const status = document.querySelector("#status");
    const profile = document.querySelector("#profile");

    if (!designerId) {
        status.textContent = "No designer was selected.";
        return;
    }

    try {
        const designerResponse = await fetch(
            `/designers/${designerId}`
        );

        if (!designerResponse.ok) {
            throw new Error("Designer not found");
        }

        const collectionsResponse = await fetch(
            `/designers/${designerId}/collections`
        );

        if (!collectionsResponse.ok) {
            throw new Error("Collections could not be loaded");
        }

        const designer = await designerResponse.json();
        const collections = await collectionsResponse.json();
        document.querySelector("#edit-designer").href =
            `/designer-form.html?id=${designer.id}`;

        const flags = nationalityFlags(designer.nationality);
        document.querySelector("#designer-name").textContent =
            flags
                ? `${flags} ${designer.full_name}`
                : designer.full_name;

        const details = [
            designer.nationality,
            designer.birth_year
                ? `Born ${designer.birth_year}`
                : null,
        ].filter(Boolean);

        const websiteContainer =
            document.querySelector("#designer-website");

        if (designer.website) {
            const websiteLink = document.createElement("a");

            websiteLink.href = designer.website;
            websiteLink.textContent = designer.website;
            websiteLink.target = "_blank";
            websiteLink.rel = "noopener noreferrer";

            websiteContainer.append(websiteLink);
        } else {
            websiteContainer.textContent =
                "No website is available.";
        }

        document.querySelector("#designer-details").textContent =
            details.join(" · ");

        document.querySelector("#designer-biography").textContent =
            designer.biography || "No biography is available.";

        document.querySelector("#add-collection-link").href =
            `/collection-form.html?designer_id=${designerId}`;

        const collectionList =
            document.querySelector("#collection-list");

        for (const collection of collections) {
            const item = document.createElement("li");

            const link = document.createElement("a");

            link.textContent =
                `${collection.label} — ` +
                `${collection.season} ${collection.release_year}`;

            link.href = `/collection.html?id=${collection.id}`;

            item.append(link);

            collectionList.append(item);
        }

        status.textContent = "";
        profile.hidden = false;

        const deleteButton =
    document.querySelector("#delete-designer");

    deleteButton.addEventListener("click", async function () {
        const confirmed = window.confirm(
            "Delete this designer and all of their collections permanently?"
        );

        if (!confirmed) {
            return;
        }

        try {
            const deleteResponse = await fetch(
                `/designers/${designerId}`,
                {
                    method: "DELETE",
                }
            );

            if (!deleteResponse.ok) {
                throw new Error(
                    "Designer could not be deleted"
                );
            }

            window.location.href = "/";
        } catch (error) {
            status.textContent = error.message;
        }
    });

    } catch (error) {
        status.textContent =
            "This designer profile could not be loaded.";
        console.error(error);
    }
}


loadDesigner();
