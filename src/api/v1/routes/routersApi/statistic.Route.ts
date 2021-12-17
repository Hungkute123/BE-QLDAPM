// 3rd dependencies
import { Router, Request, Response } from 'express';
const statisticRouter = Router();

// Middleware
import { authenTokenMiddleware, authenticateAdminMiddleware } from '../../middlewares/authenToken.Middleware';

// Controller
import { statisticsController } from '../../controllers/statistic.Controller';

//-------------------------------------------- api/favorite/... -------------------------------

statisticRouter.get('/get-statistic-by-year', authenticateAdminMiddleware, statisticsController.getStatisticByYear);

export = statisticRouter;
