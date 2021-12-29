// 3rd dependencies
import { Router, Request, Response } from 'express';
const orderRouter = Router();

// Middleware
import { authenTokenMiddleware } from '../../middlewares/authenToken.Middleware';

// Controller
import { orderController } from '../../controllers/order.Controller';

//-------------------------------------------- api/products/... -------------------------------

//--------------------------------------------GET------------------------------------------
orderRouter.get('/all', orderController.getAllOrder);
orderRouter.get('/get-order', orderController.getOrderByIDUser);
orderRouter.get('/order-of-seller', orderController.getOrderOfSeller);

//--------------------------------------------POST-----------------------------------------
//orderRouter.post('/add-new-order', authenTokenMiddleware, orderController.addNewOrder);
orderRouter.post('/add-new-order', orderController.addNewOrder);

//--------------------------------------------PATCH------------------------------------------
//orderRouter.patch('/patch-product', orderController.patchProduct);
orderRouter.patch('/update-status',  orderController.updateStatus);
//--------------------------------------------PUT------------------------------------------

//--------------------------------------------DELETE----------------------------------------

export = orderRouter;
