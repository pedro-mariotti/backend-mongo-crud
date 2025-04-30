import express from "express";
import dotenv from "dotenv";
import db from "./database/configdb.js";
import User from "./model/User.js";
import userRoutes from "./routes/user.route.js";
import protectedRoutes from "./routes/protected.route.js";

dotenv.config();
db.connect()

const app = express();
const PORT = process.env.PORT || 5000;

app.use(express.json());

app.use("/users", userRoutes);
app.get("/", (req, res) => {
  res.send(`{message: "Hello from the API!"}`);
});

app.use("/protected", protectedRoutes);

app.listen(PORT, () => {
  console.log(`Server is running on http://localhost:${PORT}`);
});
