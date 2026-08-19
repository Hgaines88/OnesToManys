const footerYear = document.querySelector(".footer-year");

if (footerYear) {
    footerYear.textContent = `NYC — ${new Date().getFullYear()}`;
}
