import axios from "axios";
//This function get the news form the apis
export const getNews = async () => {
  const options = {
    method: "GET",
    url: "https://gaialens-esg-news.p.rapidapi.com/news",
    params: { companyname: "Apple Inc." },
    headers: {
      "X-RapidAPI-Key": "f7205cfaaemsh98bf9eabc748f01p166360jsn4b5f2989d96f",
      "X-RapidAPI-Host": "gaialens-esg-news.p.rapidapi.com",
    },
  };
  return await axios(options);
};

//This function saves the data to the database
export const postNews = async (data: any) => {
  try {
    const resp = await axios.post("http://localhost:3000/api/store-news", data);
    console.log("response after storing news", resp.data);
  } catch (err: any) {
    // Handle Error Here
    console.error(err.message);
  }
};
