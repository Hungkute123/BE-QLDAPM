import internal from 'stream';
import { TBL_ORDER, TBL_PRODUCTS, TBL_USER } from '../../../../constants/tables';
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
