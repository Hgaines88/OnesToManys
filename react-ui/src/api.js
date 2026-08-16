const API_ROOT = "/api";

function describeApiError(detail, fallback) {
  if (typeof detail === "string" && detail) return detail;

  if (Array.isArray(detail)) {
    const messages = detail
      .map((item) => String(item?.msg || "").replace(/^Value error,\s*/, ""))
      .filter(Boolean);
    if (messages.length) return messages.join(" ");
  }

  return fallback;
}

export async function apiRequest(path, options = {}) {
  const response = await fetch(`${API_ROOT}${path}`, {
    ...options,
    headers: {
      ...(options.body ? { "Content-Type": "application/json" } : {}),
      ...options.headers,
    },
  });

  if (response.status === 204) return null;

  let payload = null;
  try {
    payload = await response.json();
  } catch {
    payload = null;
  }

  if (!response.ok) {
    throw new Error(
      payload
        ? describeApiError(payload.detail, "The request could not be completed.")
        : `The request failed (HTTP ${response.status}).`
    );
  }

  return payload;
}
