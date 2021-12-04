import { discountModel } from '../models/discount.Model/discount.model';

class DiscountServices {
	getDiscountByIDUser = async (IDUser: number) => {
		try {
			const discount = await discountModel.getDiscountByIDUser(IDUser);
			if (discount === null) {
				return {
					data: null,
					message: 'can not find discount',
					status: 400,
				};
			}
			return {
				data: discount,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	getDiscountByIDProduct = async (IDProduct: string) => {
		try {
			const discount = await discountModel.getDiscountByIDProduct(IDProduct);
			if (discount === null) {
				return {
					data: null,
					message: 'can not find discount',
					status: 400,
				};
			}
			return {
				data: discount,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
	addNewDiscount = async (Discount: any) => {
		try {
			await discountModel.addNewDiscount(Discount);
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
export const discountServices = new DiscountServices();
