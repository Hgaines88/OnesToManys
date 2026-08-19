const FLAGS_BY_NATIONALITY = {
  American: "🇺🇸",
  Belgian: "🇧🇪",
  British: "🇬🇧",
  "British-Jamaican": "🇬🇧 🇯🇲",
  Canadian: "🇨🇦",
  "Dominican-American": "🇩🇴 🇺🇸",
  French: "🇫🇷",
  "French-American": "🇫🇷 🇺🇸",
  "French-Belgian": "🇫🇷 🇧🇪",
  "French-Colombian": "🇫🇷 🇨🇴",
  Georgian: "🇬🇪",
  German: "🇩🇪",
  Italian: "🇮🇹",
  Japanese: "🇯🇵",
  "Liberian-American": "🇱🇷 🇺🇸",
  "Northern Irish": "🇬🇧",
  Russian: "🇷🇺",
};

export function nationalityFlags(nationality) {
  return FLAGS_BY_NATIONALITY[nationality] || "";
}
