async function loadCollection() {
    const parameters = new URLSearchParams(window.location.search);
    const collectionId = parameters.get("id");

    const statusMessage = document.querySelector("#status");
    const collectionArticle =
        document.querySelector("#collection");

    if (!collectionId) {
        statusMessage.textContent =
            "No collection was selected.";
        return;
    }

    try {
        const response = await fetch(
            `/collections/${collectionId}`
        );

        if (!response.ok) {
            throw new Error("Collection not found");
        }

        const collection = await response.json();

        document.querySelector("#collection-title").textContent =
            collection.name || collection.label;

        const designerLink = document.createElement("a");
        designerLink.textContent = collection.lead_designer;
        designerLink.href =
            `/designer.html?id=${collection.designer_id}`;

        const designerContainer =
            document.querySelector("#collection-designer");

        designerContainer.textContent = "Lead designer: ";
        designerContainer.append(designerLink);

        document.querySelector("#collection-season").textContent =
            `${collection.label} · ` +
            `${collection.season} ${collection.release_year}`;

        document.querySelector("#collection-status").textContent =
            `Status: ${collection.status}`;

        document.querySelector(
            "#collection-piece-count"
        ).textContent = collection.piece_count === null
            ? "Piece count unavailable"
            : `Piece count: ${collection.piece_count}`;

        document.querySelector(
            "#collection-description"
        ).textContent =
            collection.description ||
            "No description is available.";

        statusMessage.textContent = "";
        collectionArticle.hidden = false;
        const deleteButton =
            document.querySelector("#delete-collection");

        deleteButton.addEventListener("click", async function () {
            const confirmed = window.confirm(
                "Delete this collection permanently?"
            );

            if (!confirmed) {
                return;
            }

            try {
                const deleteResponse = await fetch(
                    `/collections/${collection.id}`,
                    {
                        method: "DELETE",
                    }
                );

                if (!deleteResponse.ok) {
                    throw new Error(
                        "Collection could not be deleted"
                    );
                }

                window.location.href =
                    `/designer.html?id=${collection.designer_id}`;
            } catch (error) {
                statusMessage.textContent = error.message;
            }
        });
    } catch (error) {
        statusMessage.textContent =
            "This collection could not be loaded.";
        console.error(error);
    }
}


loadCollection();
