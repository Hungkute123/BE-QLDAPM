// 3rd dependencies
import { Router, Request, Response } from 'express';

const discountRouter = Router();

// Middleware

// Controller
import { discountController } from '../../controllers/discount.Controller';


//-------------------------------------------- api/discount/... -------------------------------

//--------------------------------------------GET------------------------------------------
discountRouter.get('/iduser', discountController.getDiscountByIDUser);
discountRouter.get('/idproduct', discountController.getDiscountByIDProduct);
discountRouter.get('/iddiscount', discountController.getDiscountByIDDiscount);
//--------------------------------------------POST-----------------------------------------
discountRouter.post('/add-new-discount', discountController.addNewDiscount);
//--------------------------------------------PATCH------------------------------------------
discountRouter.patch('/patch-discount', discountController.patchDiscount);
//--------------------------------------------PUT------------------------------------------

//--------------------------------------------DELETE----------------------------------------

export = discountRouter;