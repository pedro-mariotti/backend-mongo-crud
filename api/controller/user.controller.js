import User from "../model/User.js";
import saveUser from "../services/user.save.js";


const register = async (req, res) => {
    console.log("Registering user", req.body);

    if (!req.body.username || !req.body.password || !req.body.email) {
        console.log("Error registering user", req.body);
        return res.status(400).json({ message: "Please input valid username, email, and password" });
    }
    saveUser(req,res)
};

export default {register}