import {
	TBL_USER,
	TBL_OTP,
	TBL_INFORMATION_VAT,
	TBL_USER_ADDRESS,
} from '../../../../constants/tables';
import { database } from '../../../../start/connectDB';

class UserModel {
	// Get Data
	async getUserByEmail(Email: string) {
		const rows = await database.load(
			`select IDUser, FirstName, LastName, Email, DateOfBirth, Gender, TypeOfUser, Active, Vip, PhoneNumber from ${TBL_USER} where Email = "${Email}"`
		);

		if (rows.length === 0) return null;

		return rows[0];
	}

	async getPassword(Email: string) {
		const rows = await database.load(`select Password from ${TBL_USER} where Email = "${Email}"`);

		if (rows.length === 0) return null;

		return rows[0];
	}

	async getAllUser() {
		const rows = await database.load(`select * from ${TBL_USER}`);

		if (rows.length === 0) return null;

		return rows;
	}

	async getInformationVAT(IDUser: number) {
		const rows = await database.load(
			`select * from ${TBL_INFORMATION_VAT} where IDUser = ${IDUser}`
		);

		if (rows.length === 0) return null;

		return rows[0];
	}

	async getAllUserAddress(IDUser: number) {
		const rows = await database.load(
			`select * from ${TBL_USER_ADDRESS} where IDUser = ${IDUser}`
		);

		if (rows.length === 0) return null;

		return rows;
	}

	async getUserAddress(ID: number) {
		const rows = await database.load(
			`select * from ${TBL_USER_ADDRESS} where ID = ${ID}`
		);

		if (rows.length === 0) return null;

		return rows[0];
	}

	// Add Data
	registerUser(user: any) {
		return database.add(user, TBL_USER);
	}

	async addOTP(otp: Object, Email: string) {
		const rows = await database.load(`select * from ${TBL_OTP} where Email = "${Email}"`);

		if (rows.length != 0) {
			database.del({ Email }, TBL_OTP);
		}

		return database.add(otp, TBL_OTP);
	}

	async addInformationVAT(information: Object, IDUSer: string) {
		const rows = await database.load(
			`select * from ${TBL_INFORMATION_VAT} where IDUser = ${IDUSer}`
		);

		if (rows.length != 0) {
			database.del({ IDUSer: IDUSer }, TBL_INFORMATION_VAT);
		}

		return database.add(information, TBL_INFORMATION_VAT);
	}

	async addAddress(address: Object) {
		return database.add(address, TBL_USER_ADDRESS);
	}

	// Edit Date
	updateUser(User: Object, IDUser: Object) {
		return database.patch(User, IDUser, TBL_USER);
	}

	updateAddress(address: Object, IDUser: Object) {
		return database.patch(address, IDUser, TBL_USER_ADDRESS);
	}

	activeUser(active: number, IDUser: number) {
		const entity = { Active: !active };
		const condition = { IDUser: IDUser };

		return database.patch(entity, condition, TBL_USER);
	}

	// Delete Data
	deleteUserAddress(ID: number) {
		const condition = { ID: ID };

		return database.del(condition, TBL_USER_ADDRESS);
	}
}

export const userModel = new UserModel();
