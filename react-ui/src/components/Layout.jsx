import { Link, Outlet } from "react-router-dom";

export default function Layout() {
  return <><header className="site-header"><Link className="brand" to="/">Collection Archive</Link><p>Discover the designers behind collections across labels and seasons.</p></header><main className="page"><Outlet /></main></>;
}
