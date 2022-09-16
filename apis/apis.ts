import axios from "axios";
export const getNews = async () => {
  const options = {
    method: "GET",
    url: "https://gaialens-esg-news.p.rapidapi.com/news",
    params: { companyname: "Apple Inc." },
    headers: {
      "X-RapidAPI-Key": "72098cc78fmshd268d4519c44e79p175631jsn345335b9ed94",
      "X-RapidAPI-Host": "gaialens-esg-news.p.rapidapi.com",
    },
  };
  return await axios(options);
};

export const postNews = async (data: any) => {
  try {
    const resp = await axios.post("http://localhost:3000/api/store-news", data);
    console.log("response after storing news", resp.data);
  } catch (err: any) {
    // Handle Error Here
    console.error(err.message);
  }
};
