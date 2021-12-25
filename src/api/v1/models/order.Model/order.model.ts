import internal from 'stream';
import { TBL_ORDER, TBL_PRODUCTS, TBL_USER } from '../../../../constants/tables';
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
	//lay danh sach don hang nguoi dung da dat
	async getOrderByIDUser(IDUser: number) {
		const rows = await database.load(
			`select * from ${TBL_ORDER} where IDUser = ${IDUser}`
		);
		if (rows.length === 0) return null;

		return rows;
	}
	//lay cac don hang nguoi dung dat san pham của seller dang ban
	async getOrderOfSeller(IDUser: number) {
		const rows = await database.load(
			`select *, od.Quantity as QuantityOrder,od.Status as StatusOrder from ${TBL_ORDER} od join ${TBL_PRODUCTS} pd on pd.IDProduct = od.IDProduct where pd.IDUser = ${IDUser}`
		);
		if (rows.length === 0) return null;

		return rows;
	}
	updateStatus(status: string, IDOrder: number) {		
		const entity = { Status: status };
		const condition = { IDOrder: IDOrder  };

		return database.patch(entity, condition, TBL_ORDER);
	}
}
export const orderModel = new OrderModel();

