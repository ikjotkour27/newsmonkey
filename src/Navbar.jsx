import React, { useState } from "react";
import { Link } from "react-router-dom";

export default function Navbar(props) {
  const [query, setquery] = useState(""); // Initialize query as an empty string

  // Handle search input changes
  const searchInput = (e) => {
    setquery(e.target.value); // Update query state
  };

  // Filter data based on the query
  const filteredData = props.data
  ? props.data.filter((item) =>
      item.title.toLowerCase().includes(query.toLowerCase())
    )
  : [];

  // Prevent form submission (page reload)
  const handleSubmit = (e) => {
    e.preventDefault();
  };

  return (
    <div>
      {/* Navbar */}
      <div className="sticky-top">
        <nav className="navbar navbar-expand-lg bg-body-tertiary">
          <div className="container-fluid">
            <a className="navbar-brand" href="#">
              NewsStop
            </a>
            <button
              className="navbar-toggler"
              type="button"
              data-bs-toggle="collapse"
              data-bs-target="#navbarSupportedContent"
              aria-controls="navbarSupportedContent"
              aria-expanded="false"
              aria-label="Toggle navigation"
            >
              <span className="navbar-toggler-icon"></span>
            </button>
            <div className="collapse navbar-collapse" id="navbarSupportedContent">
              <ul className="navbar-nav me-auto mb-2 mb-lg-0">
                <li className="nav-item">
                  <Link className="nav-link" to="/">
                    Home
                  </Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="/business">
                    Business
                  </Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="/sports">
                    Sports
                  </Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="/health">
                    Health
                  </Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="/entertainment">
                    Entertainment
                  </Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="/science">
                    Science
                  </Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="/technology">
                    Technology
                  </Link>
                </li>
                <li className="nav-item">
                  <Link className="nav-link" to="/contact">
                    Contact Us
                  </Link>
                </li>
              </ul>
              {/* Search Form */}
              <form className="d-flex" role="search" onSubmit={handleSubmit}>
                <input
                  className="rounded-pill form-control me-2"
                  value={query}
                  onChange={searchInput}
                  type="search"
                  placeholder="Search"
                  aria-label="Search"
                />
                <button className="btn btn-outline-success rounded-pill" type="submit">
                  Search
                </button>
              </form>
            </div>
          </div>
        </nav>
      </div>

      {/* Display Filtered Results */}
      <div className="container mt-4">
        {query && filteredData.length > 0 ? (
          filteredData.map((item) => (
            <div key={item.id} className="mb-3">
              <h3>{item.title}</h3>
              <p>{item.description}</p>
              <p><a target="_blank" rel="noopener noreferrer" href={item.url} className="btn btn-primary">
            Read more
          </a></p>
            </div>
          ))
        ) : query ? (
          <p>No results found.</p>
        ) : null}
      </div>
    </div>
  );
}