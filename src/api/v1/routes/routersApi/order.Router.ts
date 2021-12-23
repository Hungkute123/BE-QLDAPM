// 3rd dependencies
import { Router, Request, Response } from 'express';
const orderRouter = Router();

// Middleware

// Controller
import { orderController } from '../../controllers/order.Controller';




//-------------------------------------------- api/products/... -------------------------------

//--------------------------------------------GET------------------------------------------
orderRouter.get('/all', orderController.getAllOrder);

//--------------------------------------------POST-----------------------------------------
orderRouter.post('/add-new-order', orderController.addNewOrder);

//--------------------------------------------PATCH------------------------------------------
//orderRouter.patch('/patch-product', orderController.patchProduct);

//--------------------------------------------PUT------------------------------------------

//--------------------------------------------DELETE----------------------------------------

export = orderRouter;
