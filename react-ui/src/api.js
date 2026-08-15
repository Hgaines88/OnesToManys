const API_ROOT = "/api";

export async function apiRequest(path, options = {}) {
  const response = await fetch(`${API_ROOT}${path}`, {
    ...options,
    headers: { ...(options.body ? { "Content-Type": "application/json" } : {}), ...options.headers },
  });
  if (response.status === 204) return null;
  const result = await response.json();
  if (!response.ok) {
    throw new Error(typeof result.detail === "string" ? result.detail : "The request could not be completed.");
  }
  return result;
}
