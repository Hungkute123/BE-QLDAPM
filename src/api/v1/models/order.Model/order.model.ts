import internal from 'stream';
import { TBL_ORDER, TBL_PRODUCTS } from '../../../../constants/tables';
import { database } from '../../../../start/connectDB';

class OrderModel {
	async all() {
		const query = `select * from ${TBL_ORDER}`;
		const rows = await database.load(query);

		if (rows.length === 0) {
			return null;
		}

		return rows;
	}

	async getOrderByIDUser(IDUser: number) {
		const sql = `select * from ${TBL_ORDER} where IDUser = ${IDUser}`;
		const rows = await database.load(sql);

		if (rows.length === 0) {
			return null;
		}

		return rows;
	}

	async addNewOrder(Order: any) {
		return database.add(Order, TBL_ORDER);
	}
}
export const orderModel = new OrderModel();
