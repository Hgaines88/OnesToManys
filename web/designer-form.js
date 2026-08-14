const form = document.querySelector("#designer-form");
const statusMessage = document.querySelector("#status");


form.addEventListener("submit", async function (event) {
    event.preventDefault();

    const formData = new FormData(form);
    const birthYear = formData.get("birth_year");

    const payload = {
        full_name: formData.get("full_name"),
        nationality: formData.get("nationality") || null,
        birth_year: birthYear ? Number(birthYear) : null,
        website: formData.get("website") || null,
        biography: formData.get("biography") || null,
    };

    statusMessage.textContent = "Saving designer...";

    try {
        const response = await fetch("/designers", {
            method: "POST",
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
