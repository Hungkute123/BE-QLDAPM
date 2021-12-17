// 3rd dependencies
import { Router, Request, Response } from 'express';

const categoryRouter = Router();

// Middleware
import { authenTokenMiddleware, authenticateAdminMiddleware } from '../../middlewares/authenToken.Middleware';

// Controller
import { categoryController } from '../../controllers/category.Controller';


//-------------------------------------------- api/category/... -------------------------------

//--------------------------------------------GET------------------------------------------
categoryRouter.get('/level', categoryController.getCategoryProductByLevel);
categoryRouter.get('/idparent', categoryController.getCategoryProductByIDParent);
categoryRouter.get('/idparent-limit', categoryController.getCategoryProductByIDParentwithSetLimit);
categoryRouter.get('/idcategory',categoryController.getDetailCategoryByID);
categoryRouter.get('/get-one-cate', authenticateAdminMiddleware, categoryController.getOneCategory);
categoryRouter.post('/update-cate', authenticateAdminMiddleware, categoryController.updateOneCategory);
categoryRouter.post('/delete-cate', authenticateAdminMiddleware, categoryController.deleteOneCategory);
categoryRouter.post('/add-cate', authenticateAdminMiddleware, categoryController.addOneCategory);
categoryRouter.get('/all-cate', authenticateAdminMiddleware, categoryController.getAllCate);
categoryRouter.get('/search-cate', authenticateAdminMiddleware, categoryController.searchCate);



//--------------------------------------------POST-----------------------------------------

//--------------------------------------------PUT------------------------------------------

//--------------------------------------------DELETE----------------------------------------

export = categoryRouter;