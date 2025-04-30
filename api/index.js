import express from "express";
import dotenv from "dotenv";
import db from "./database/configdb.js";
import User from "./model/User.js";


dotenv.config();
db.connect()

const app = express();
const PORT = process.env.PORT || 5000;

app.use(express.json());

app.get("/", (req, res) => {
  res.send(`{message: "Hello from the API!"}`);
});

app.listen(PORT, () => {
  console.log(`Server is running on port ${PORT}`);
});
