import { categoryModel } from '../models/category.Model/category.model';

class CategoryServices {
	getCategoryProductByLevel = async (Level: number) => {
		try {
			const categories = await categoryModel.getCategoryProductByLevel(Level);
			if (categories === null) {
				return {
					data: null,
					message: 'can not find categories',
					status: 400,
				};
			}
			return {
				data: categories,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getCategoryProductByIDParentwithSetLimit = async (IDParent: number, limit: number) => {
		try {
			const categories = await categoryModel.getCategoryProductByIDParentwithSetLimit(
				IDParent,
				limit
			);
			if (categories === null) {
				return {
					data: null,
					message: 'can not find categories',
					status: 400,
				};
			}
			return {
				data: categories,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
    getCategoryProductByIDParent = async (IDParent: number) => {
		try {
			const categories = await categoryModel.getCategoryProductByIDParent(IDParent)
			if (categories === null) {
				return {
					data: null,
					message: 'can not find categories',
					status: 400,
				};
			}
			return {
				data: categories,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	getOneCategory = async (IDCategory: number) => {
		try {
			const category = await categoryModel.getOneCategory(IDCategory)
			if (category === null) {
				return {
					data: null,
					message: 'can not find categories',
					status: 400,
				};
			}
			return {
				data: category,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	updateOneCategory = async (category: any) => {
		try {
			await categoryModel.updateOneCategory(category)
			if (category === null) {
				return {
					data: null,
					message: 'can not find categories',
					status: 400,
				};
			}
			return {
				data: category,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	deleteOneCategory = async (IDCategory: number) => {
		try {
			await categoryModel.deleteOneCategory(IDCategory)
			if (IDCategory === null) {
				return {
					data: null,
					message: 'can not find categories',
					status: 400,
				};
			}
			return {
				data: IDCategory,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	addOneCategory = async (category: any) => {
		try {
			await categoryModel.addOneCategory(category)
			if (category === null) {
				return {
					data: null,
					message: 'can not find categories',
					status: 400,
				};
			}
			return {
				data: category,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
}
export const categoryServices = new CategoryServices()