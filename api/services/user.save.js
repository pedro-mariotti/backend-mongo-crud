import User from "../model/User.js";
import bcrypt from "bcrypt";

const saveUser = async(req, res) => {
    const { username, password, email } = req.body;
    const hashedPassword = await bcrypt.hash(password, 10);
    
    try{
        const savedUser = await User.create({
            username,
            password: hashedPassword,
            email
        });
        //console.log("User saved", savedUser.username);
        res.status(200).json({ message: "User registered successfully"});
    } catch (error) {
        console.error("Error saving user", error);
        return res.status(500).json({ message: `Error saving user:${error}` });
    }
}
export default saveUser;