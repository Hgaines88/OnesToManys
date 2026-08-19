async function loadDesigners() {
    const status = document.querySelector("#status");
    const designerList = document.querySelector("#designer-list");

    try {
        const response = await fetch("/designers");

        if (!response.ok) {
            throw new Error("Could not load designers");
        }

        const designers = await response.json();

        document.querySelector("#profile-count").textContent =
            `INDEX / ${String(designers.length).padStart(3, "0")} ACTIVE PROFILES`;

        status.textContent = "";

        for (const [index, designer] of designers.entries()) {
            const listItem = document.createElement("li");
            const cardIndex = document.createElement("span");
            const heading = document.createElement("h3");
            const link = document.createElement("a");
            const details = document.createElement("p");

            cardIndex.className = "card-index";
            cardIndex.textContent = String(index + 1).padStart(3, "0");
            link.textContent = `${designer.full_name} `;
            const arrow = document.createElement("span");
            arrow.className = "arrow";
            arrow.textContent = "↗";
            link.append(arrow);
            link.href = `/designer.html?id=${designer.id}`;
            heading.append(link);

            const detailParts = [];

            const flags = nationalityFlags(designer.nationality);
            if (flags) {
                detailParts.push(flags);
            }

            if (designer.nationality) {
                detailParts.push(designer.nationality);
            }

            if (designer.birth_year) {
                detailParts.push(`Born ${designer.birth_year}`);
            }

            if (designer.collection_count !== undefined) {
                detailParts.push(`${designer.collection_count} collections`);
            }

            details.textContent =
                detailParts.join(" · ") ||
                "Additional details unavailable";

            listItem.append(cardIndex, heading, details);
            designerList.append(listItem);
        }
    } catch (error) {
        status.textContent =
            "The designer archive could not be loaded.";
        console.error(error);
    }
}


loadDesigners();
