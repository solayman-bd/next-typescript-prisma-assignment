import type { GetServerSideProps, NextPage } from "next";
import HeaderItem from "../components/pages/home/HeaderItem";
import { prisma } from "../lib/prisma";
import SingleNewsContainer from "../components/pages/home/SingleNewsContainer";
import { getNews, postNews } from "../apis/apis";
export interface IHeaderItem {
  id: number;
  title: string;
  select: string;
  options: IOption[];
}
interface IOption {
  name: string;
  value: string | number;
}
interface INews {
  news: ISingleNews[];
}
export interface ISingleNews {
  id: number;
  title: string;
  url: string;
  date: string;
}
const Home: NextPage<INews> = ({ news }) => {
  return (
    <div className="flex items-center justify-center min-h-screen min-w-full">
      <div className="rounded-lg bg-slate-800 text-white p-11 w-4/5 ">
        <div className="header flex flex-wrap">
          {headerOptions.map((item) => (
            <HeaderItem key={item.id} item={item} />
          ))}
        </div>

        <div className="container my-2 overflow-auto max-h-500">
          {news.map((singleNews) => (
            <SingleNewsContainer singleNews={singleNews} key={singleNews.id} />
          ))}
        </div>
      </div>
    </div>
  );
};

export default Home;

const headerOptions: IHeaderItem[] = [
  {
    id: 1,
    title: "Content Search",
    select: "Select",
    options: [
      {
        name: "One",
        value: 1,
      },
      {
        name: "Two",
        value: 2,
      },
    ],
  },
  {
    id: 2,
    title: "Date Published",
    select: "Select a date range",
    options: [
      {
        name: "One",
        value: 1,
      },
      {
        name: "Two",
        value: 2,
      },
    ],
  },
  {
    id: 3,
    title: "Source Search",
    select: "Select",
    options: [
      {
        name: "One",
        value: 1,
      },
      {
        name: "Two",
        value: 2,
      },
    ],
  },
];
export const getServerSideProps: GetServerSideProps = async () => {
  const { data } = await getNews();
  if (data) {
    await postNews(data[0]);
  }
  const news = await prisma.news_feed.findMany({
    select: {
      id: true,
      title: true,
      url: true,
      date: true,
    },
  });

  return {
    props: {
      news,
    },
  };
};
