const parameters = new URLSearchParams(window.location.search);
const designerId = parameters.get("designer_id");

const form = document.querySelector("#collection-form");
const statusMessage = document.querySelector("#status");


if (!designerId) {
    statusMessage.textContent = "No designer was selected.";
    form.hidden = true;
}


form.addEventListener("submit", async function (event) {
    event.preventDefault();

    const formData = new FormData(form);
    const pieceCount = formData.get("piece_count");

    const payload = {
        designer_id: Number(designerId),
        label: formData.get("label"),
        name: formData.get("name") || null,
        season: formData.get("season"),
        release_year: Number(formData.get("release_year")),
        status: formData.get("status"),
        piece_count: pieceCount ? Number(pieceCount) : null,
        description: formData.get("description") || null,
    };

    statusMessage.textContent = "Saving collection...";

    try {
        const response = await fetch("/collections", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
            },
            body: JSON.stringify(payload),
        });

        const result = await response.json();

        if (!response.ok) {
            throw new Error(
                result.detail || "Collection could not be saved"
            );
        }

        window.location.href =
            `/collection.html?id=${result.id}`;
    } catch (error) {
        statusMessage.textContent = error.message;
    }
});
