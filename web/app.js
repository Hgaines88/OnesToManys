async function loadDesigners() {
    const status = document.querySelector("#status");
    const designerList = document.querySelector("#designer-list");

    try {
        const response = await fetch("/designers");

        if (!response.ok) {
            throw new Error("Could not load designers");
        }

        const designers = await response.json();

        status.textContent = "";

        for (const designer of designers) {
            const listItem = document.createElement("li");
            const heading = document.createElement("h3");
            const details = document.createElement("p");

            heading.textContent = designer.full_name;

            const detailParts = [];

            if (designer.nationality) {
                detailParts.push(designer.nationality);
            }

            if (designer.birth_year) {
                detailParts.push(`Born ${designer.birth_year}`);
            }

            details.textContent =
                detailParts.join(" · ") ||
                "Additional details unavailable";

            listItem.append(heading, details);
            designerList.append(listItem);
        }
    } catch (error) {
        status.textContent =
            "The designer archive could not be loaded.";
        console.error(error);
    }
}


loadDesigners();
