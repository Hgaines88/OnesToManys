const parameters = new URLSearchParams(window.location.search);
const designerId = parameters.get("id");
const isEditing = Boolean(designerId);

const form = document.querySelector("#designer-form");
const statusMessage = document.querySelector("#status");


async function loadDesignerForEditing() {
    if (!isEditing) {
        return;
    }

    statusMessage.textContent = "Loading designer...";

    try {
        const response = await fetch(
            `/designers/${designerId}`
        );

        if (!response.ok) {
            throw new Error("Designer could not be loaded");
        }

        const designer = await response.json();

        document.querySelector("#form-title").textContent =
            "Edit Designer";

        document.querySelector("#submit-button").textContent =
            "Save changes";

        document.querySelector("#full-name").value =
            designer.full_name;

        document.querySelector("#nationality").value =
            designer.nationality || "";

        document.querySelector("#birth-year").value =
            designer.birth_year ?? "";

        document.querySelector("#website").value =
            designer.website || "";

        document.querySelector("#biography").value =
            designer.biography || "";

        statusMessage.textContent = "";
    } catch (error) {
        statusMessage.textContent = error.message;
        form.hidden = true;
    }
}


form.addEventListener("submit", async function (event) {
    event.preventDefault();

    const formData = new FormData(form);
    const birthYear = formData.get("birth_year");

    const websiteInput =
    formData.get("website").trim();

    const website =
        websiteInput &&
        !websiteInput.startsWith("http://") &&
        !websiteInput.startsWith("https://")
            ? `https://${websiteInput}`
            : websiteInput || null;

    const payload = {
        full_name: formData.get("full_name"),
        nationality: formData.get("nationality") || null,
        birth_year: birthYear ? Number(birthYear) : null,
        website: website,
        biography: formData.get("biography") || null,
    };

    statusMessage.textContent = "Saving designer...";

    try {
        const endpoint = isEditing
            ? `/designers/${designerId}`
            : "/designers";

        const method = isEditing
            ? "PUT"
            : "POST";

        const response = await fetch(endpoint, {
            method: method,
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(payload),
        });

        const result = await response.json();

        if (!response.ok) {
            throw new Error(
                result.detail || "Designer could not be saved"
            );
        }

        window.location.href =
            `/designer.html?id=${result.id}`;
    } catch (error) {
        statusMessage.textContent = error.message;
    }
});


loadDesignerForEditing();