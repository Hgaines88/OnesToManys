function nationalityFlags(nationality) {
    return {
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
    }[nationality] || "";
}

if (typeof module !== "undefined") {
    module.exports = { nationalityFlags };
}
