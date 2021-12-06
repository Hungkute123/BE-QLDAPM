import { TBL_CATEGORYPRODUCT } from '../../../../constants/tables';
import { database } from '../../../../start/connectDB';

class CategoryModel {
	async getCategoryProductByLevel(Level: number) {
		let rows = [];
		if (Level === 0) {
			rows = await database.load(
				`SELECT * FROM ${TBL_CATEGORYPRODUCT} WHERE Level = ${Level}`
			);
		} else {
			rows = await database.load(
				`SELECT c1.IDCategory, c1.Name, c1.Level, c1.IDParent, c2.Name as ParentName 
				FROM ${TBL_CATEGORYPRODUCT} c1 INNER JOIN ${TBL_CATEGORYPRODUCT} c2 ON c1.IDParent = c2.IDCategory 
				WHERE c1.Level = ${Level}`
			);
		}

		if (rows.length === 0) return null;

		return rows;
	}
	async getCategoryProductByIDParentwithSetLimit(IDParent: number, limit: number) {
		const rows = await database.load(
			`select * from ${TBL_CATEGORYPRODUCT} where IDParent = ${IDParent} limit ${limit}`
		);
		if (rows.length === 0) return null;

		return rows;
	}
	async getCategoryProductByIDParent(IDParent: number) {
		const rows = await database.load(
			`select * from ${TBL_CATEGORYPRODUCT} where IDParent = ${IDParent}`
		);
		if (rows.length === 0) return null;

		return rows;
	}

	async getOneCategory(IDCategory: number) {
		const rows = await database.load(
			`select * from ${TBL_CATEGORYPRODUCT} where IDCategory = ${IDCategory}`
		);
		if (rows.length === 0) return null;

		return rows[0];
	}

	async updateOneCategory(category: any) {
		return database.patch(category, category.IDCategory, TBL_CATEGORYPRODUCT);
	}

	async deleteOneCategory(IDCategory: number) {
		return database.del(IDCategory, TBL_CATEGORYPRODUCT);
	}

	async addOneCategory(category: any) {
		return database.add(category, TBL_CATEGORYPRODUCT);
	}
}
export const categoryModel = new CategoryModel();
