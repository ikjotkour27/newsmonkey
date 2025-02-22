import React from 'react';
import { Routes, Route } from 'react-router-dom';
import News from './News.jsx';
// import Navbar from './Navbar';

export default function App() {
  return (
    <div>
      
      <Routes>
        <Route exact path="/" element={<News key="general" category="general" />} />
        <Route exact path="/business" element={<News key="business" category="business" />} />
        <Route exact path="/sports" element={<News key="sports" category="sports" />} />
        <Route exact path="/technology" element={<News key="technology" category="technology" />} />
        <Route exact path="/entertainment" element={<News key="entertainment" category="entertainment" />} />
        <Route exact path="/health" element={<News key="health" category="health" />} />
        <Route exact path="/science" element={<News key="science" category="science" />} />
      </Routes>
    </div>
  );
}
