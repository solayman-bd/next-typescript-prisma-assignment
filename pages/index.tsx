import type { GetServerSideProps, NextPage } from "next";
import HeaderItem from "../components/pages/home/HeaderItem";
import axios from "axios";
import { prisma } from "../lib/prisma";
import { useQuery } from "@tanstack/react-query";
import SingleNewsContainer from "../components/pages/home/SingleNewsContainer";
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
  news: {
    id: number;
    title: string;
    url: string;
    date: string;
  }[];
}
const getNews = () => {
  const options = {
    method: "GET",
    url: "https://gaialens-esg-news.p.rapidapi.com/news",
    params: { companyname: "Apple Inc." },
    headers: {
      "X-RapidAPI-Key": "72098cc78fmshd268d4519c44e79p175631jsn345335b9ed94",
      "X-RapidAPI-Host": "gaialens-esg-news.p.rapidapi.com",
    },
  };
  return axios(options);
};

const postNews = async (data: any) => {
  try {
    const resp = await axios.post("http://localhost:3000/api/store-news", data);
    console.log("response after storing news", resp.data);
  } catch (err: any) {
    // Handle Error Here
    console.error(err.message);
  }
};

const Home: NextPage = ({ news }: INews) => {
  const { data } = useQuery(["news_data"], () => getNews(), {
    onSuccess({ data }) {
      postNews(data[0]);
    },
  });

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
