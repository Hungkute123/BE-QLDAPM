// 3rd dependencies
import { Router, Request, Response } from 'express';

const discountRouter = Router();

// Middleware

// Controller
import { discountController } from '../../controllers/discount.Controller';
import { authenticateSellerMiddleware } from '../../middlewares/authenToken.Middleware';


//-------------------------------------------- api/discount/... -------------------------------

//--------------------------------------------GET------------------------------------------
discountRouter.get('/iduser',authenticateSellerMiddleware, discountController.getDiscountByIDUser);
discountRouter.get('/idproduct', discountController.getDiscountByIDProduct);
discountRouter.get('/iddiscount',authenticateSellerMiddleware, discountController.getDiscountByIDDiscount);
//--------------------------------------------POST-----------------------------------------
discountRouter.post('/add-new-discount',authenticateSellerMiddleware, discountController.addNewDiscount);
//--------------------------------------------PATCH------------------------------------------
discountRouter.patch('/patch-discount',authenticateSellerMiddleware, discountController.patchDiscount);
//--------------------------------------------PUT------------------------------------------

//--------------------------------------------DELETE----------------------------------------

export = discountRouter;