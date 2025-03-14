import express from "express";

const app = express();

app.get("/h", (req, res) => {
  res.json({
    health: true,
  });
});

//hi this from bind mount
//hi from docker compose

app.listen(3000, () => {
  console.log("http://localhost:3000");
});
