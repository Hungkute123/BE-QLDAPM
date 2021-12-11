import { TBL_DISCOUNT } from '../../../../constants/tables';
import { TBL_PRODUCTS } from '../../../../constants/tables';
import { database } from '../../../../start/connectDB';

class DiscountModel {
	async getDiscountByIDUser(IDUser: number) {
		const rows = await database.load(
			`select * from ${TBL_PRODUCTS},${TBL_DISCOUNT} where ${TBL_PRODUCTS}.IDUser = ${IDUser} and 
			 ${TBL_DISCOUNT}.IDProduct = ${TBL_PRODUCTS}.IDProduct`
		);
		if (rows.length === 0) return null;

		return rows;
	}
	async getDiscountByIDProduct(IDProduct: string) {
		const rows = await database.load(
			`select * from ${TBL_DISCOUNT} where IDProduct = '${IDProduct}'`
		);
		if (rows.length === 0) return null;

		return rows;
	}
	async addNewDiscount(Discount: any) {
		return database.add(Discount, TBL_DISCOUNT);
	}
	async getDiscountByIDDiscount(IDDiscount: string) {
		const rows = await database.load(
			`select * from ${TBL_PRODUCTS},${TBL_DISCOUNT} where IDDiscount = ${IDDiscount} and 
			${TBL_DISCOUNT}.IDProduct = ${TBL_PRODUCTS}.IDProduct`
		);
		if (rows.length === 0) return null;

		return rows;
	}
	patchDiscount(entity: any) {
		const condition = { IDDiscount: entity.IDDiscount };
		delete entity.IDDiscount;
		return database.patch(entity, condition, TBL_DISCOUNT);
	}
}
export const discountModel = new DiscountModel();
