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
userRouter.get('/get-information-vat', authenTokenMiddleware, userController.getInformationVAT);

//--------------------------------------------POST-----------------------------------------
userRouter.get('/register', userController.register);
userRouter.post('/add-information-vat', authenTokenMiddleware, userController.addInformationVAT);
userRouter.post('/add-user-address', authenTokenMiddleware, userController.addUserAddress);

//--------------------------------------------PATCH------------------------------------------
userRouter.patch('/update-info', authenTokenMiddleware, userController.updateInfo);
userRouter.patch('/update-user-address', authenTokenMiddleware, userController.updateUserAddress);

//--------------------------------------------DELETE----------------------------------------

export default userRouter;
