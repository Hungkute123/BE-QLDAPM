// dependencies
import { Request, Response } from 'express';
import path from 'path';
import { asyncMiddleware } from '../middlewares/async.Middleware';

// services
import { statisticsServices } from '../services/statistic.Service';

class statisticController {
	getStatisticByYear = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { IDYear }: any = req.query;
		const year = parseInt(IDYear);
		const { data, message, status } = await statisticsServices.getStatisticByYear(year);
		const Path = process.env.PATH_API;
		res.status(status).send({ data, message, Path });
	});
}

export const statisticsController = new statisticController();
