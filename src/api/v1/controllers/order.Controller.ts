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
import { reduceEachLeadingCommentRange } from 'typescript';
const generator = require('generate-password');
class OrderController {
	//-----------------------------------GET----------------------------------
	getAllOrder = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { data, message, status } = await orderService.getAll();
		const Path = process.env.PATH_API;
		res.status(status).send({ data, message, Path });
		//res.send("day la controller cua order");
	});
	
	addNewOrder = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
			const order = {
				IDUser: req.body.id_user,
                IDProduct: req.body.id_product,
				OrderDate: req.body.order_date,
                Quantity: req.body.quantity,
                Status: req.body.status,
			};
			console.log(order);
			
			const { data, message, status } = await orderService.addNewOrder(order);
			if(data === true) {
				res.status(status).send({ data, message });	
			}else{
				res.status(status).send({data: false, message});
			}
		});
}
export const orderController = new OrderController();
