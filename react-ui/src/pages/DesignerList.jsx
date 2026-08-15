import { useEffect, useState } from "react";
import { Link } from "react-router-dom";
import { apiRequest } from "../api";
import StatusMessage from "../components/StatusMessage";

export default function DesignerList() {
  const [designers, setDesigners] = useState([]);
  const [error, setError] = useState("");
  const [loading, setLoading] = useState(true);
  useEffect(() => { apiRequest("/designers").then(setDesigners).catch((error) => setError(error.message)).finally(() => setLoading(false)); }, []);
  return <><div className="page-heading"><div><p className="eyebrow">The directory</p><h1>Designers</h1></div><Link className="button" to="/designers/new">Add a designer</Link></div><StatusMessage>{loading ? "Loading designers…" : ""}</StatusMessage><StatusMessage error>{error}</StatusMessage><div className="card-grid">{designers.map((designer) => { const details = [designer.nationality, designer.birth_year ? `Born ${designer.birth_year}` : null].filter(Boolean); return <article className="card" key={designer.id}><h2><Link to={`/designers/${designer.id}`}>{designer.full_name}</Link></h2><p>{details.join(" · ") || "Additional details unavailable"}</p></article>; })}</div></>;
}
