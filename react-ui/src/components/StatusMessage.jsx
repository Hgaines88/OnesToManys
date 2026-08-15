export default function StatusMessage({ children, error = false }) {
  if (!children) return null;
  return <p className={error ? "status error" : "status"}>{children}</p>;
}
