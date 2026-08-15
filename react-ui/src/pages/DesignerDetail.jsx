import { useEffect, useState } from "react";
import { Link, useNavigate, useParams } from "react-router-dom";
import { apiRequest } from "../api";
import StatusMessage from "../components/StatusMessage";
import { nationalityFlags } from "../nationalityFlags";

export default function DesignerDetail() {
  const { designerId } = useParams();
  const navigate = useNavigate();
  const [designer, setDesigner] = useState(null);
  const [collections, setCollections] = useState([]);
  const [error, setError] = useState("");

  useEffect(() => {
    Promise.all([
      apiRequest(`/designers/${designerId}`),
      apiRequest(`/designers/${designerId}/collections`),
    ]).then(([designerData, collectionData]) => {
      setDesigner(designerData);
      setCollections(collectionData);
    }).catch((requestError) => setError(requestError.message));
  }, [designerId]);

  async function deleteDesigner() {
    if (!window.confirm("Delete this designer and all of their collections permanently?")) return;
    try {
      await apiRequest(`/designers/${designerId}`, { method: "DELETE" });
      navigate("/");
    } catch (requestError) {
      setError(requestError.message);
    }
  }

  if (error && !designer) return <StatusMessage error>{error}</StatusMessage>;
  if (!designer) return <StatusMessage>Loading designer…</StatusMessage>;

  const flags = nationalityFlags(designer.nationality);
  const details = [designer.nationality, designer.birth_year ? `Born ${designer.birth_year}` : null].filter(Boolean);
  return (
    <>
      <p className="eyebrow">Designer profile</p>
      <h1>{flags && <span className="profile-flag" aria-label={`${designer.nationality} flag`}>{flags}</span>}{designer.full_name}</h1>
      <p className="meta">{details.join(" · ") || "Additional details unavailable"}</p>
      <p>{designer.biography || "No biography is available."}</p>
      <p>{designer.website ? <a href={designer.website} target="_blank" rel="noreferrer">Visit website ↗</a> : "No website is available."}</p>
      <div className="actions">
        <Link className="button" to={`/designers/${designerId}/collections/new`}>Add a collection</Link>
        <Link className="button secondary" to={`/designers/${designerId}/edit`}>Edit designer</Link>
        <button className="danger" type="button" onClick={deleteDesigner}>Delete designer</button>
      </div>
      <StatusMessage error>{error}</StatusMessage>
      <section className="section">
        <h2>Collections</h2>
        {collections.length === 0 ? <p>No collections have been added.</p> : (
          <ul className="collection-list">
            {collections.map((collection) => (
              <li key={collection.id}><Link to={`/collections/${collection.id}`}><strong>{collection.name || collection.label}</strong><span>{collection.label} · {collection.season} {collection.release_year}</span></Link></li>
            ))}
          </ul>
        )}
      </section>
    </>
  );
}
