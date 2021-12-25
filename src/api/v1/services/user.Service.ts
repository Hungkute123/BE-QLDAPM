import { userModel } from '../models/user.Model/user.model';

class UserService {
	//--------------------------------------------GET------------------------------------------
	getUserByEmail = async (Email: string) => {
		try {
			const user = await userModel.getUserByEmail(Email);

			if (user === null) {
				return null;
			}

			return user;
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	getPassword = async (Email: string) => {
		try {
			const user = await userModel.getPassword(Email);

			if (user === null) {
				return '';
			}

			return user;
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	getInformationVAT = async (IDUser: number) => {
		try {
			const informationVAT = await userModel.getInformationVAT(IDUser);

			return informationVAT;
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	getAllUserAddress = async (IDUser: number) => {
		try {
			const address = await userModel.getAllUserAddress(IDUser);

			return address;
		} catch (error:any) {
			throw new Error(error.messages);
		}
	};

	getUserAddress = async (ID: number) => {
		try {
			const address = await userModel.getUserAddress(ID);

			return address;
		} catch (error:any) {
			throw new Error(error.messages);
		}
	};

	//--------------------------------------------POST-----------------------------------------
	registerUser = async (User: any) => {
		try {
			const user = await userModel.getUserByEmail(User.Email);

			if (user) {
				return {
					data: false,
					message: 'Account already exists',
					status: 200,
				};
			}

			userModel.registerUser(User);

			return {
				data: true,
				message: 'Register User Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	createOTP = async (otp: Object, Email: string) => {
		try {
			const user = await userModel.getUserByEmail(Email);

			if (user) {
				return {
					data: false,
					message: 'Account already exists',
					status: 200,
				};
			}

			userModel.addOTP(otp, Email);

			return {
				data: true,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	addInformationVAT = (information: Object, IDUser: string) => {
		try {
			userModel.addInformationVAT(information, IDUser);

			return {
				data: true,
				message: 'Add Information VAT success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	addUserAddress = (address: Object) => {
		try {
			userModel.addAddress(address);

			return {
				data: true,
				message: 'Add User Address success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	//--------------------------------------------PATCH------------------------------------------
	updateUser = (User: Object, IDUser: Object) => {
		try {
			userModel.updateUser(User, IDUser);

			return {
				data: true,
				message: 'Edit successfully',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	updateUserAddress = (address: Object, ID: Object) => {
		try {
			userModel.updateAddress(address, ID);

			return {
				data: true,
				message: 'Edit successfully',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};

	getAllUser = async () => {
		const users = await userModel.getAllUser();
		return users;
	};

	activeUser = async (active: number, userId: number) => {		
		await userModel.activeUser(active, userId)
		return true;
	};
	updateRole = async (role: number, userId: number) => {		
		await userModel.updateRole(role, userId)
		return true;
	}

	//--------------------------------------------DELETE----------------------------------------
	deleteUserAddress = (ID: number) => {
		userModel.deleteUserAddress(ID);

		return {
			data: true,
			message: 'Delete address successfully',
			status: 200
		}
	}
}

export const userService = new UserService();
