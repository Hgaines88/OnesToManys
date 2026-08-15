import { useEffect, useState } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";
import { apiRequest } from "../api";
import StatusMessage from "../components/StatusMessage";

export default function CollectionDetail() {
  const { collectionId } = useParams(); const navigate = useNavigate(); const [collection, setCollection] = useState(null); const [error, setError] = useState("");
  useEffect(() => { apiRequest(`/collections/${collectionId}`).then(setCollection).catch((error) => setError(error.message)); }, [collectionId]);
  async function deleteCollection() { if (!window.confirm("Delete this collection permanently?")) return; try { await apiRequest(`/collections/${collectionId}`, { method: "DELETE" }); navigate(`/designers/${collection.designer_id}`); } catch (error) { setError(error.message); } }
  if (error && !collection) return <StatusMessage error>{error}</StatusMessage>; if (!collection) return <StatusMessage>Loading collection…</StatusMessage>;
  return <article><p className="eyebrow">{collection.label}</p><h1>{collection.name || `${collection.season} ${collection.release_year}`}</h1><p className="meta">{collection.season} {collection.release_year} · {collection.status}</p><dl className="details"><div><dt>Lead designer</dt><dd><Link to={`/designers/${collection.designer_id}`}>{collection.lead_designer}</Link></dd></div><div><dt>Piece count</dt><dd>{collection.piece_count ?? "Unavailable"}</dd></div></dl><p>{collection.description || "No description is available."}</p><div className="actions"><Link className="button secondary" to={`/collections/${collectionId}/edit`}>Edit collection</Link><button className="danger" type="button" onClick={deleteCollection}>Delete collection</button></div><StatusMessage error>{error}</StatusMessage></article>;
}
