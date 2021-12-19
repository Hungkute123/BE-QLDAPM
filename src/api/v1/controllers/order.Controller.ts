// dependencies
import { Request, Response } from 'express';
import path from 'path';
import multer from 'multer';

// Interfaces

// Middlewares
import { asyncMiddleware } from '../middlewares/async.Middleware';
import { search } from '../routes/routersApi/category.Router';

// services
import  {orderService}  from '../services/order.Services';
import cloudinary from '../../../start/cloudinaryConfig';
const generator = require('generate-password');
class OrderController {
	//-----------------------------------GET----------------------------------
	getAllOrder = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { data, message, status } = await orderService.getAll();
		const Path = process.env.PATH_API;
		res.status(status).send({ data, message, Path });
	});
	
	addNewOrder = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		try {
			const id = generator.generate({
				length: 8,
				numbers: false,
			});
			const order = {
				IDOrder: String(id),
				IDUser: Number(req.body.id_user),
                IDProduct: String(req.body.id_product),
				OrderDate: String(Date.now()),
                Quantity: Number(req.body.quantity),
                Status: "dang xu ly"
			};
			const { data, message, status } = await orderService.addNewOrder(order);
			if (data === true) {
				res.status(status).send({ data, message });
			} else {
				res.status(status).send({ data: false, message });
			}
		} catch (err) {
			console.error(err);
			res.status(500).json({ err: 'Something went wrong' });
		}
	});
}
export const orderController = new OrderController();
