const FLAGS_BY_NATIONALITY = {
  American: "🇺🇸",
  Belgian: "🇧🇪",
  British: "🇬🇧",
  "British-Jamaican": "🇬🇧 🇯🇲",
  Canadian: "🇨🇦",
  "Dominican-American": "🇩🇴 🇺🇸",
  French: "🇫🇷",
  "French-Belgian": "🇫🇷 🇧🇪",
  Georgian: "🇬🇪",
  German: "🇩🇪",
  Italian: "🇮🇹",
  Japanese: "🇯🇵",
  "Liberian-American": "🇱🇷 🇺🇸",
  "Northern Irish": "🇬🇧",
};

export function nationalityFlags(nationality) {
  return FLAGS_BY_NATIONALITY[nationality] || "";
}
