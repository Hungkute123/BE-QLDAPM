import { productsModel } from '../models/product.Model/product.model';
class ProductService {
	getAll = async () => {
		try {
			const products = await productsModel.all();
			if (products === null) {
				return {
					data: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getAllProductPublisher = async () => {
		try {
			const products = await productsModel.getAllProductPublisher();
			if (products === null) {
				return {
					data: null,
					message: 'can not find product publisher',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getAllProductSupplier = async () => {
		try {
			const products = await productsModel.getAllProductSupplier();
			if (products === null) {
				return {
					data: null,
					message: 'can not find product supplier',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getProductsByIDCategoryWithSetLimit = async (IDCategory: number, limit: number) => {
		try {
			const products = await productsModel.getProductsByIDCategoryWithSetLimit(IDCategory, limit);

			if (products === null) {
				return {
					data: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getAllProductsByIDCategory = async (IDCategory: number) => {
		try {
			const products = await productsModel.getAllProductsByIDCategory(IDCategory);
			if (products === null) {
				return {
					data: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getProductByIDProduct = async (IDProduct: string) => {
		try {
			const products = await productsModel.getProductByIDProduct(IDProduct);
			if (products === null) {
				return {
					data: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	searchProduct = async (
		search: string,
		sort: string,
		order: string,
		limit: number,
		offset: number,
		ordervalue: string,
		typeproduct?: string,
		price?: string,
		votes?: number
	) => {
		try {
			const products = await productsModel.searchProduct(
				search,
				sort,
				order,
				limit,
				offset,
				ordervalue,
				typeproduct,
				price,
				votes
			);
			if (products === null) {
				return {
					data: [],
					message: 'can not find products',
					status: 200,
				};
			}

			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	countSearchProduct = async (
		search: string,
		sort: string,
		typeproduct: string,
		price: string,
		votes: number
	) => {
		try {
			const products = await productsModel.countSearchProduct(
				search,
				sort,
				typeproduct,
				price,
				votes
			);
			if (products === null) {
				return {
					data: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	productTrends = async (limit: number) => {
		try {
			const products = await productsModel.productTrends(limit);
			if (products === null) {
				return {
					data: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	productRanking = async (IDCategory: number, limit: number) => {
		try {
			const products = await productsModel.productRanking(IDCategory, limit);
			if (products === null) {
				return {
					data: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	favoriteList = async (IDUser: number) => {
		try {
			const products = await productsModel.favoriteProduct(IDUser);
			if (products === null) {
				return {
					data: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getProductsByIDUser = async (IDUser: number) => {
		try {
			const products = await productsModel.getProductsByIDUser(IDUser);
			if (products === null) {
				return {
					data: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				data: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getProductImageByIDProduct = async (IDProduct: string) => {
		try {
			const image = await productsModel.getProductImageByIDProduct(IDProduct);
			if (image === null) {
				return {
					dataImage: null,
					message: 'can not find image',
					status: 400,
				};
			}
			return {
				dataImage: image,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getProductPublisherByIDPublisher = async (IDPublisher: number) => {
		try {
			const products = await productsModel.getProductPublisherByIDPublisher(IDPublisher);
			if (products === null) {
				return {
					dataPublisher: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				dataPublisher: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getProductSupplierByIDSupplier = async (IDSupplier: number) => {
		try {
			const products = await productsModel.getProductSupplierByIDSupplier(IDSupplier);
			if (products === null) {
				return {
					dataSupplier: null,
					message: 'can not find products',
					status: 400,
				};
			}
			return {
				dataSupplier: products,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	addProductImage= async (Product: any) => {
		try {
			await productsModel.addProductImage(Product);
			return {
				data: true,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	addNewProduct = async (Product: any) => {
		try {
			await productsModel.addNewProduct(Product);
			return {
				data: true,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	addDetailBook = async (Book: any) => {
		try {
			await productsModel.addDetailBook(Book);
			return {
				data: true,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	addDetailItem = async (Item: any) => {
		try {
			await productsModel.addDetailItem(Item);
			return {
				data: true,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	patchProduct = async (Product: any) => {
		try {
			await productsModel.patchProduct(Product);
			return {
				data: true,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	patchItem = async (Item: any) => {
		try {
			await productsModel.patchItem(Item);
			return {
				data: true,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	patchBook= async (Book: any) => {
		try {
			await productsModel.patchBook(Book);
			return {
				data: true,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	blockProduct = async (IDProduct: any, status: any) => {
		const entity = {IDProduct: IDProduct, status: status};
		try {
			await productsModel.patchProduct(entity);
			return {
				data: true,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
}

export const productService = new ProductService();
