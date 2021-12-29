// dependencies
import { Request, Response } from 'express';
// Interfaces
// Middlewares
import { asyncMiddleware } from '../middlewares/async.Middleware';
// services
import { orderService } from '../services/order.Service';

class OrderController {
	//-----------------------------------GET----------------------------------
	getAllOrder = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { data, message, status } = await orderService.getAll();
		const Path = process.env.PATH_API;
		res.status(status).send({ data, message, Path });
		//res.send("day la controller cua order");
	});

	getOrderByIDUser = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const IDUser = Number(query.IDUser);

		const { data, message, status } = await orderService.getOrderByIDUser(IDUser);

		res.status(status).json({ data, message });
	});

	addNewOrder = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const order = {
			IDUser: req.body.id_user,
			IDProduct: req.body.id_product,
			OrderDate: req.body.order_date,
			Quantity: req.body.quantity,
			Status: req.body.status,
			Address: req.body.address,
			Price: req.body.price
		};
		console.log(order);

		const { data, message, status } = await orderService.addNewOrder(order);
		if (data === true) {
			res.status(status).send({ data, message });
		} else {
			res.status(status).send({ data: false, message });
		}
	});
	getOrderOfSeller = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const IDUser = Number(query.IDUser);
		const { data, message, status } = await orderService.getOrderOfSeller(IDUser);

		res.status(status).send({ data, message });
	});
	updateStatus = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { status, IDOrder } = req.body;

		await orderService.updateStatus(status, parseInt(IDOrder));

		res.status(200).json({ data: true });
	});
}
export const orderController = new OrderController();
