import { orderModel } from '../models/order.Model/order.model';
class OrderService {
	getAll = async () => {
		try {
			const order = await orderModel.all();

			if (order === null) {
				return {
					data: null,
					message: 'can not find orders',
					status: 400,
				};
			}
			return {
				data: order,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			console.log(error);

			throw new Error(error.messages);
		}
	};

	addNewOrder = async (Order: any) => {
		try {
			await orderModel.addNewOrder(Order);
			return {
				data: true,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	getOrderByIDUser = async (IDUser: number) => {
		try {
			const order = await orderModel.getOrderByIDUser(IDUser);

			return {
				data: order,
				message: `Order ${IDUser}`,
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
}

export const orderService = new OrderService();
