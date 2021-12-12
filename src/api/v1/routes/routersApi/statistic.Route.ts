// 3rd dependencies
import { Router, Request, Response } from 'express';
const statisticRouter = Router();

// Middleware

// Controller
import { statisticsController } from '../../controllers/statistic.Controller';

//-------------------------------------------- api/favorite/... -------------------------------

statisticRouter.get('/get-statistic-by-year', statisticsController.getStatisticByYear);

export = statisticRouter;
