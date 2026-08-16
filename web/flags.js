function nationalityFlags(nationality) {
    return {
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
    }[nationality] || "";
}
