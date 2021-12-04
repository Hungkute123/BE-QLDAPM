import { TBL_DISCOUNT } from '../../../../constants/tables';
import { database } from '../../../../start/connectDB';


class DiscountModel {
    async getDiscountByIDUser(IDUser: number) {
		// const rows = await database.load(`select * from ${TBL_DISCOUNT} where IDProduct = '${IDProduct}'`);
		// if (rows.length === 0 ) return null;

		// return rows;
		return 0;
	}
	async getDiscountByIDProduct(IDProduct: string) {
		const rows = await database.load(`select * from ${TBL_DISCOUNT} where IDProduct = '${IDProduct}'`);
		if (rows.length === 0 ) return null;

		return rows;
	}
    async addNewDiscount(Discount: any) {
		return database.add(Discount, TBL_DISCOUNT);
	}
}
export const discountModel = new DiscountModel();