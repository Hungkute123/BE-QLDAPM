import internal from 'stream';
import { TBL_BOOKS, TBL_ITEMS, TBL_PRODUCTS, TBL_FAVORITE, TBL_PRODUCT_SUPPLIER, TBL_PRODUCT_PUBLISHER,TBL_PRODUCT_IMAGE } from '../../../../constants/tables';
import { database } from '../../../../start/connectDB';

class ProductsModel {
	// lay tat ca san pham
	async all() {
		return database.load(`select * from ${TBL_PRODUCTS}`);
	}
	async getAllProductSupplier() {
		return database.load(`select * from ${TBL_PRODUCT_SUPPLIER}`);
	}
	async getAllProductPublisher() {
		return database.load(`select * from ${TBL_PRODUCT_PUBLISHER}`);
	}
	async getProductsByIDCategoryWithSetLimit(IDCategory: number, limit: number) {
		const rows = await database.load(
			`select * from ${TBL_PRODUCTS} where IDCategory = ${IDCategory} limit ${limit}`
		);

		if (rows.length === 0) return null;

		return rows;
	}
	async getAllProductsByIDCategory(IDCategory: number) {
		const rows = await database.load(
			`select * from ${TBL_PRODUCTS} where IDCategory = ${IDCategory}`
		);
		if (rows.length === 0) return null;

		return rows;
	}
	// chi tiet san pham theo id
	async getProductByIDProduct(IDProduct: string) {
		const rows = await database.load(
			`select * from ${TBL_PRODUCTS} where IDProduct = '${IDProduct}'`
		);
		if (rows.length === 0) {
			return null;
		} else {
			let data;
			if (rows[0].TypeProduct === 'Book') {
				data = database.load(
					`select * from ${TBL_PRODUCTS} pd join ${TBL_BOOKS} bk on pd.IDProduct = bk.IDProduct where pd.IDProduct = '${IDProduct}'`
				);
			} else {
				data = database.load(
					`select * from ${TBL_PRODUCTS} pd join ${TBL_ITEMS} bk on pd.IDProduct = bk.IDProduct where pd.IDProduct = '${IDProduct}'`
				);
			}
			return data;
		}
	}
	async searchProduct(
		search: string,
		sort: string,
		order: string,
		limit: number,
		offset: number,
		ordervalue: string,
		typeproduct?: string,
		price?: string,
		votes?: number
	) {
		let sql: string = ``;
		let whereCondition = ``;

		if (search) {
			whereCondition += `where match(NameProduct) against('${search}')`;
		}

		if (price) {
			const index = price.indexOf('and');
			if (index > 0) {
				if (whereCondition) whereCondition += ` and Price between ${price}`;
				else whereCondition += `where Price between ${price}`;
			} else {
				if (whereCondition) whereCondition += ` and Price ${price}`;
				else whereCondition += `where Price ${price}`;
			}
		}

		if (typeproduct) {
			if (whereCondition) whereCondition += ` and TypeProduct = '${typeproduct}'`;
			else whereCondition += `where TypeProduct = '${typeproduct}'`;
		}

		if (votes) {
			if (whereCondition) whereCondition += ` and Votes = ${votes}`;
			else whereCondition += `where Votes = ${votes}'`;
		}
		switch (sort) {
			case 'B??n Ch???y Tu???n':
				break;
			case 'B??n Ch???y Th??ng':
				break;
			case 'B??n Ch???y N??m':
				break;
			case 'N???i B???t Tu???n':
				break;
			case 'N???i B???t Th??ng':
				break;
			case 'N???i B???t N??m':
				break;
			case 'Chi???t Kh???u':
				break;
			case 'Gi?? B??n':
				break;
			case 'M???i Nh???t':
				break;
			default:
				sql = `select *
					from (
					select * 
					from ${TBL_PRODUCTS}
					${whereCondition}
					order by ${order} ${ordervalue}
					limit ${limit}
					offset ${offset}
				   ) as p
				   `;

				break;
		}
		console.log('mysql', sql);

		const rows = await database.load(sql);
		if (rows.length === 0) return null;

		return rows;
	}
	// phan trang
	async countSearchProduct(
		search: string,
		sort: string,
		typeproduct: string,
		price: string,
		votes: number
	) {
		let sql: string = ``;
		let whereCondition = ``;

		if (search) {
			whereCondition += `where match(NameProduct) against('${search}')`;
		}

		if (price) {
			const index = price.indexOf('and');
			if (index > 0) {
				if (whereCondition) whereCondition += ` and Price between ${price}`;
				else whereCondition += `where Price between ${price}`;
			} else {
				if (whereCondition) whereCondition += ` and Price ${price}`;
				else whereCondition += `where Price ${price}`;
			}
		}

		if (typeproduct) {
			if (whereCondition) whereCondition += ` and TypeProduct = '${typeproduct}'`;
			else whereCondition += `where TypeProduct = '${typeproduct}'`;
		}

		if (votes) {
			if (whereCondition) whereCondition += ` and Votes = ${votes}`;
			else whereCondition += `where Votes = ${votes}'`;
		}
		switch (sort) {
			case 'B??n Ch???y Tu???n':
				break;
			case 'B??n Ch???y Th??ng':
				break;
			case 'B??n Ch???y N??m':
				break;
			case 'N???i B???t Tu???n':
				break;
			case 'N???i B???t Th??ng':
				break;
			case 'N???i B???t N??m':
				break;
			case 'Chi???t Kh???u':
				break;
			case 'Gi?? B??n':
				break;
			case 'M???i Nh???t':
				break;
			default:
				sql = `select *
                    from (
                    select * 
                    from ${TBL_PRODUCTS}
                    ${whereCondition}
                   ) as p
                   `;
				break;
		}
		const rows = await database.load(sql);
		if (rows.length === 0) return null;

		return rows.length;
	}
	async productTrends(limit: number) {
		const rows = await database.load(
			`select * from ${TBL_PRODUCTS}
			order by View desc 
			limit ${limit}`
		);

		if (rows.length === 0) return null;

		return rows;
	}
	async productRanking(IDCategory: number, limit: number) {
		const rows = await database.load(
			`select * from ${TBL_PRODUCTS}
			where IDCategory = ${IDCategory}
			order by Votes desc 
			limit ${limit}`
		);

		if (rows.length === 0) return null;

		return rows;
	}

	// favorite
	async favoriteProduct(IDUser: number) {
		const rows = await database.load(
			`select * from ${TBL_PRODUCTS} as a join ${TBL_FAVORITE} as b ON a.IDProduct = b.IDProduct
			where IDUser = ${IDUser}`
		);

		if (rows.length === 0) return null;

		return rows;
	}
	async getProductsByIDUser(IDUser: number) {
		const rows = await database.load(`select * from ${TBL_PRODUCTS} where IDUser = ${IDUser}`);

		if (rows.length === 0) return null;

		return rows;
	}
	async getProductImageByIDProduct(IDProduct: string) {
		const rows = await database.load(`select * from ${TBL_PRODUCT_IMAGE} where IDProduct = '${IDProduct}'`);

		if (rows.length === 0) return null;

		return rows;
	}
	async getProductSupplierByIDSupplier(IDSupplier: number) {
		const rows = await database.load(`select * from ${TBL_PRODUCT_SUPPLIER} where IDSupplier = ${IDSupplier}`);

		if (rows.length === 0) return null;

		return rows;
	}
	async getProductPublisherByIDPublisher(IDPublisher: number) {
		const rows = await database.load(`select * from ${TBL_PRODUCT_PUBLISHER} where IDPublisher = ${IDPublisher}`);

		if (rows.length === 0) return null;

		return rows;
	}
	async addProductImage(Image: any) {
		return database.add(Image, TBL_PRODUCT_IMAGE);
	}
	async addNewProduct(Product: any) {
		return database.add(Product, TBL_PRODUCTS);
	}
	async addDetailBook(Book: any) {
		return database.add(Book, TBL_BOOKS);
	}
	async addDetailItem(Item: any) {
		return database.add(Item, TBL_ITEMS);
	}
	patchProduct(entity: any) {
		const condition = { IDProduct: entity.IDProduct };
		delete entity.IDProduct;
		return database.patch(entity, condition, TBL_PRODUCTS);
	}
	patchItem(entity: any) {
		const condition = { IDItem: entity.IDItem };
		delete entity.IDItem;
		return database.patch(entity, condition, TBL_ITEMS);
	}
	patchBook(entity: any) {
		const condition = { IDBook: entity.IDBook };
		delete entity.IDBook;
		return database.patch(entity, condition, TBL_BOOKS);
	}
}
export const productsModel = new ProductsModel();

