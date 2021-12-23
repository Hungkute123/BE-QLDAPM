import { TBL_STATISTIC } from '../../../../constants/tables';
import { database } from '../../../../start/connectDB';

class StatisticModel {
	async getStatisticByYear(IDYear: number) {
		const rows = await database.load(`select * from ${TBL_STATISTIC} where IDYear = '${IDYear}'`);
		if (rows.length === 0) return null;

		return rows;
	}
}
export const StatisticsModel = new StatisticModel();
