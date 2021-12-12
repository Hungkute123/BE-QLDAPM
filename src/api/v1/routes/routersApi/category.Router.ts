// 3rd dependencies
import { Router, Request, Response } from 'express';

const categoryRouter = Router();

// Middleware

// Controller
import { categoryController } from '../../controllers/category.Controller';


//-------------------------------------------- api/category/... -------------------------------

//--------------------------------------------GET------------------------------------------
categoryRouter.get('/level', categoryController.getCategoryProductByLevel);
categoryRouter.get('/idparent', categoryController.getCategoryProductByIDParent);
categoryRouter.get('/idparent-limit', categoryController.getCategoryProductByIDParentwithSetLimit);
categoryRouter.get('/idcategory',categoryController.getDetailCategoryByID);
categoryRouter.get('/get-one-cate', categoryController.getOneCategory);
categoryRouter.post('/update-cate', categoryController.updateOneCategory);
categoryRouter.post('/delete-cate', categoryController.deleteOneCategory);
categoryRouter.post('/add-cate', categoryController.addOneCategory);

//--------------------------------------------POST-----------------------------------------

//--------------------------------------------PUT------------------------------------------

//--------------------------------------------DELETE----------------------------------------

export = categoryRouter;