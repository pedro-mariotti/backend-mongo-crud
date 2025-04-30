import express from "express";

const router = express.Router();

router.post("/register", async (req, res) => {
    console.log("Registering user", req.body);
});

export default router;