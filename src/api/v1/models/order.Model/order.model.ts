import internal from 'stream';
import { TBL_ORDER, TBL_PRODUCTS } from '../../../../constants/tables';
import { database } from '../../../../start/connectDB';

class OrderModel {
	async all() {
		var query = `select * from ${TBL_ORDER}`;
		//var query = `SELECT * FROM db_fahasa.order;`;
		console.log(query);
		
		return database.load(query);
	}
	
	async addNewOrder(Order: any) {
		return database.add(Order, TBL_ORDER);
	}
	
}
export const orderModel = new OrderModel();

