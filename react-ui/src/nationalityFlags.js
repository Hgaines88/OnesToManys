const FLAGS_BY_NATIONALITY = {
  American: "🇺🇸",
  British: "🇬🇧",
  "British-Jamaican": "🇬🇧 🇯🇲",
  Canadian: "🇨🇦",
  Georgian: "🇬🇪",
  Italian: "🇮🇹",
  Japanese: "🇯🇵",
  "Liberian-American": "🇱🇷 🇺🇸",
  "Northern Irish": "🇬🇧",
};

export function nationalityFlags(nationality) {
  return FLAGS_BY_NATIONALITY[nationality] || "";
}
