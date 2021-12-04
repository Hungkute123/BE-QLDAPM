"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
// 3rd dependencies
var express_1 = require("express");
var userRouter = (0, express_1.Router)();
// Middleware
var authenToken_Middleware_1 = require("../../middlewares/authenToken.Middleware");
// Controller
var user_Controller_1 = require("./../../controllers/user.Controller");
//-------------------------------------------- api/user/... -------------------------------
//--------------------------------------------GET------------------------------------------
userRouter.get('/login', user_Controller_1.userController.login);
userRouter.get('/send-otp', user_Controller_1.userController.sendOTP);
userRouter.get('/get-info', authenToken_Middleware_1.authenTokenMiddleware, user_Controller_1.userController.getInfo);
//--------------------------------------------POST-----------------------------------------
userRouter.get('/register', user_Controller_1.userController.register);
//--------------------------------------------PUT------------------------------------------
//--------------------------------------------DELETE----------------------------------------
exports.default = userRouter;
