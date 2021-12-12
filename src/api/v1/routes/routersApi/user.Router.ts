// 3rd dependencies
import { Router, Request, Response } from 'express';
const userRouter = Router();

// Middleware
import { authenTokenMiddleware } from '../../middlewares/authenToken.Middleware';

// Controller
import { userController } from './../../controllers/user.Controller';

//-------------------------------------------- api/user/... -------------------------------

//--------------------------------------------GET------------------------------------------
userRouter.get('/login', userController.login);
userRouter.get('/send-otp', userController.sendOTP);
userRouter.get('/get-info', authenTokenMiddleware, userController.getInfo);
userRouter.get('/get-all-user', userController.getAllUser);

//--------------------------------------------POST-----------------------------------------
userRouter.get('/register', userController.register);
userRouter.get('/active-user', userController.activeUser);

//--------------------------------------------PUT------------------------------------------

//--------------------------------------------DELETE----------------------------------------

export default userRouter;
