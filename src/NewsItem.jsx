import React from 'react';

export default function NewsItem({ imageUrl, title, description, newsUrl, source, author, publishedAt }) {
  return (
    <div>
      <div className="card" style={{ width: "18rem" }}>
        <span className="position-absolute top-0 start-100 translate-middle badge rounded-pill bg-danger">
          {source && source.length > 0 ? source : "X source"}
        </span>
        <img
          src={imageUrl || "/assets/image.png"}
          className="card-img-top"
          alt="News"
        />
        <div className="card-body">
          <h5 className="card-title">{title ? title : "Title not available"}...</h5>
          <p className="card-text">
            {description ? description : "Description not available. Click 'Read More' to learn more."}
          </p>
          <p className="fs-10 fw-lighter">
            By {author ? author : "Unknown author"} on {new Date(publishedAt).toLocaleDateString()}-{new Date(publishedAt).toLocaleTimeString()}
          </p>
          <a target="_blank" rel="noopener noreferrer" href={newsUrl} className="btn btn-primary">
            Read more
          </a>
        </div>
      </div>
    </div>
  );
}
