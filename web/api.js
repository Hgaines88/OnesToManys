function describeApiError(detail, fallback) {
    if (typeof detail === "string" && detail) {
        return detail;
    }

    if (Array.isArray(detail)) {
        const messages = detail
            .map((item) =>
                String((item && item.msg) || "").replace(/^Value error,\s*/, "")
            )
            .filter(Boolean);

        if (messages.length) {
            return messages.join(" ");
        }
    }

    return fallback;
}


async function readJson(response, fallback) {
    let payload = null;

    try {
        payload = await response.json();
    } catch (error) {
        payload = null;
    }

    if (!response.ok) {
        throw new Error(
            payload
                ? describeApiError(payload.detail, fallback)
                : `${fallback} (HTTP ${response.status})`
        );
    }

    return payload;
}
