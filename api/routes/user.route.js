import express from "express";

const router = express.Router();

router.post("/register", async (req, res) => {
  console.log("Registering user", req.body);
  res.status(201).json({ message: "User registered successfully" });
});

export default router;
