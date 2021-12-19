import internal from 'stream';
import { TBL_BOOKS, TBL_ITEMS, TBL_PRODUCTS, TBL_FAVORITE, TBL_ORDER } from '../../../../constants/tables';
import { database } from '../../../../start/connectDB';

class OrderModel {
	async all() {
		return database.load(`select * from ${TBL_ORDER}`);
	}
	
	async addNewOrder(Order: any) {
		return database.add(Order, TBL_ORDER);
	}
	
}
export const orderModel = new OrderModel();

