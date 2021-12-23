import { StatisticsModel } from '../models/statistic.Model/statistic.model';

class statisticServices {
	getStatisticByYear = async (IDYear: number) => {
		try {
			const result = await StatisticsModel.getStatisticByYear(IDYear);
			return {
				data: result,
				message: 'Success',
				status: 200,
			};
		} catch (error: any) {
			throw new Error(error.messages);
		}
	};
}
export const statisticsServices = new statisticServices();
