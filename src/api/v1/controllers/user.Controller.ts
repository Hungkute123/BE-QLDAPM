// dependencies
import { Request, Response } from 'express';
import path from 'path';
import jwt from 'jsonwebtoken';
import bcrypt from 'bcrypt';

// dotenv
import dotenv from 'dotenv';
dotenv.config();

// Middlewares
import { asyncMiddleware } from '../middlewares/async.Middleware';
import { search } from '../routes/routersApi/category.Router';

// Service
import { userService } from '../services/user.Service';

// Nodemailer
const generator = require('generate-password');
import nodemailer from 'nodemailer';

class UserController {
	//-----------------------------------GET----------------------------------
	login = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const email = String(query.email);
		const password = String(query.pass);
		const Path = process.env.PATH_API;

		const pass = await userService.getPassword(email);
		const ret = bcrypt.compareSync(password, pass.Password);
		if (ret) {
			const data = await userService.getUserByEmail(email);
			const accessToken = jwt.sign({ ...data }, process.env.ACCESS_TOKEN_SECRET as string, {
				expiresIn: process.env.TIMERESET,
			});

			res.json({ data: accessToken, message: 'Login success', Path });
		} else {
			res.json({ data: false, message: 'Login failed', Path });
		}
	});

	sendOTP = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const email = String(query.email);

		// create OTP random
		const otp = generator.generate({
			length: 6,
			numbers: true,
		});

		// create reusable transporter object using the default SMTP transport
		const transporter = nodemailer.createTransport({
			host: 'smtp.gmail.com',
			auth: {
				user: process.env.MAIL, // generated ethereal user
				pass: process.env.PASS, // generated ethereal password
			},
		});

		// send mail with defined transport object
		const mailOptions = {
			from: 'Hệ thống Fahasa',
			to: String(email),
			subject: 'Xác nhận đăng ký tài khoản Fahasa ✔',
			text: 'Chào mừng bạn đến với Fahasa',
			html:
				'<b>Mã xác nhận OTP của bạn là : ' +
				otp +
				'<b>.Vui lòng không chia sẽ mã OTP với bất kỳ ai!',
		};

		transporter.sendMail(mailOptions, async function (error: any, info: any) {
			if (error) {
				console.log(error);
			} else {
				const otpData = {
					Email: email,
					OTP: otp,
				};

				const { data, message, status } = await userService.createOTP(otpData, email);

				if (data) {
					res.status(status).json({ data: otp, isUser: data, message });
				} else {
					res.status(status).json({ data: '', isUser: data, message });
				}
			}
		});
	});

	getInfo = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const data = await userService.getUserByEmail(res.locals.email);

		res.status(200).json({ data });
	});

	getInformationVAT = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const data = await userService.getInformationVAT(res.locals.idUser);

		res.status(200).json({ data });
	});

	//--------------------------------------------POST-----------------------------------------
	register = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const email = String(query.email);
		const pass = String(query.pass) || '';
		const Path = process.env.PATH_API;
		const passCover = bcrypt.hashSync(pass, Number(process.env.ROUNDS));

		const user = {
			Email: email,
			Password: passCover,
			Active: 1,
			TypeOfUser: 0,
		};

		const { data, message, status } = await userService.registerUser(user);

		res.status(status).json({ data, message });
	});

	addInformationVAT = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const body = req.body;
		const informationVAT = body.Information;

		if (informationVAT.IDUser != res.locals.idUser) {
			res.status(200).json({ data: false, message: 'Illegal access' });

			return;
		}

		const { data, message, status } = await userService.addInformationVAT(
			informationVAT,
			informationVAT.IDUser
		);

		res.status(status).json({ data, message });
	});

	addUserAddress = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const body = req.body;
		const address = body.Address;

		if (address.IDUser != res.locals.idUser) {
			res.status(200).json({ data: false, message: 'Illegal access' });

			return;
		}

		const { data, message, status } = await userService.addUserAddress(address);

		res.status(status).json({ data, message });
	});

	//--------------------------------------------PATCH------------------------------------------
	updateInfo = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const body = req.body;
		const infoUser = body.user;
		const key = body.key;

		if (infoUser.Email != res.locals.email) {
			res.status(200).json({ data: false, message: 'Illegal access' });

			return;
		}

		if (key.Password) {
			const pass = await userService.getPassword(infoUser.Email);
			const ret = bcrypt.compareSync(key.Password, pass.Password);

			if (ret) {
				const infoUserPass = {
					...infoUser,
					Password: bcrypt.hashSync(infoUser.Password, Number(process.env.ROUNDS)),
				};
				delete key.Password;
				const { data, message, status } = await userService.updateUser(infoUserPass, key);

				res.status(status).json({ data, message });
			} else {
				res.status(200).json({ data: false, message: 'Incorrect password' });
			}

			return;
		}

		const { data, message, status } = await userService.updateUser(infoUser, key);

		res.status(status).json({ data, message });
	});

	updateUserAddress = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const body = req.body;
		const address = body.Address;
		const key = body.key;

		if (key.IDUser != res.locals.idUser) {
			res.status(200).json({ data: false, message: 'Illegal access' });

			return;
		}

		const { data, message, status } = await userService.updateUserAddress(address, key);

		res.status(status).json({ data, message });
	});
	
	getAllUser = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const data = await userService.getAllUser();

		if(!data) {
			res.status(200).json({data: [], message: 'Info'});
		}
		else res.status(200).json({data: data.map((item: any) => {
			return {
				userid: item.IDUser,
				active: item.Active,
				email: item.Email,
				firstname: item.FirstName,
				lastname: item.LastName,
				phonenumber: item.PhoneNumber,
				typeofuser: item.TypeOfUser
			}
		}), message: 'Info'});
	});

	activeUser = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const {active, userid} = req.query;
		console.log('active,', active);
		
		if(active != undefined && userid) {
			const data = await userService.activeUser(Number(active), Number(userid))
		}
	
		res.status(200).json({data: userid, message: 'Info'});
	});

	updateRole = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const {role, userid} = req.body;		

		await userService.updateRole(parseInt(role), parseInt(userid));

		res.status(200).json({ data: {
			userid,
			role
		} });
	});
}

export const userController = new UserController();
