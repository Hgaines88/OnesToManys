import { BrowserRouter, Route, Routes } from "react-router-dom";
import Layout from "./components/Layout";
import CollectionDetail from "./pages/CollectionDetail";
import CollectionForm from "./pages/CollectionForm";
import DesignerDetail from "./pages/DesignerDetail";
import DesignerForm from "./pages/DesignerForm";
import DesignerList from "./pages/DesignerList";
import NotFound from "./pages/NotFound";
import "./App.css";

export default function App() {
  return (
    <BrowserRouter><Routes><Route element={<Layout />}>
      <Route path="/" element={<DesignerList />} />
      <Route path="/designers/new" element={<DesignerForm />} />
      <Route path="/designers/:designerId" element={<DesignerDetail />} />
      <Route path="/designers/:designerId/edit" element={<DesignerForm />} />
      <Route path="/designers/:designerId/collections/new" element={<CollectionForm />} />
      <Route path="/collections/:collectionId" element={<CollectionDetail />} />
      <Route path="/collections/:collectionId/edit" element={<CollectionForm />} />
      <Route path="*" element={<NotFound />} />
    </Route></Routes></BrowserRouter>
  );
}
