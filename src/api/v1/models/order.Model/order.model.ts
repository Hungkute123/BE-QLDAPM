import internal from 'stream';
import { TBL_ORDER, TBL_PRODUCTS, TBL_USER, TBL_USER_ADDRESS } from '../../../../constants/tables';
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
		const sql = `select * from ${TBL_ORDER} od join ${TBL_USER_ADDRESS} ad on od.Address = ad.ID where od.IDUser = ${IDUser}`;
		const rows = await database.load(sql);

		if (rows.length === 0) {
			return null;
		}

		return rows;
	}

	async getOrderByIDOrder(IDOrder: number) {
		const sql = `select * from ${TBL_ORDER} where IDOrder = ${IDOrder}`;
		const rows = await database.load(sql);

		if (rows.length === 0) {
			return null;
		}

		return rows[0];
	}

	async addNewOrder(Order: any) {
		return database.add(Order, TBL_ORDER);
	}

	//lay cac don hang nguoi dung dat san pham của seller dang ban
	async getOrderOfSeller(IDUser: number) {
		const rows = await database.load(
			`select *, od.Quantity as QuantityOrder,od.Status as StatusOrder, od.Price as OrderPrice from ${TBL_ORDER} od join ${TBL_PRODUCTS} pd on 
			pd.IDProduct = od.IDProduct join ${TBL_USER_ADDRESS} ad on ad.ID = od.Address where pd.IDUser = ${IDUser}`
		);
		if (rows.length === 0) return null;

		return rows;
	}

	updateStatus(status: string, IDOrder: number) {
		const entity = { Status: status };
		const condition = { IDOrder: IDOrder };

		return database.patch(entity, condition, TBL_ORDER);
	}
}
export const orderModel = new OrderModel();
