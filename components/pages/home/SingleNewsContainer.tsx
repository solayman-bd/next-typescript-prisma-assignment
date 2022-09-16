import React from "react";
export interface ISingleNews {
  id: number;
  title: string;
  url: string;
  date: string;
}
const SingleNewsContainer: React.FC<{ singleNews: ISingleNews }> = ({
  singleNews,
}) => {
  const options: Intl.DateTimeFormatOptions = {
    weekday: "long",
    year: "numeric",
    month: "long",
    day: "numeric",
  };
  const { title, date, url } = singleNews;
  const convertedDate = new Date(date).toLocaleDateString("en-US", options);

  return (
    <div className="news-item bg-gray-600 rounded-md p-3 my-2">
      <h6 className=" text-blue-700 my-2">News | {convertedDate}</h6>
      <h5 className="my-2">{title}</h5>

      <a href={url} className="underline text-gray-400">
        {url}
      </a>
    </div>
  );
};

export default SingleNewsContainer;
