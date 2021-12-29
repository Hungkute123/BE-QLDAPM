// 3rd dependencies
import { Router, Request, Response } from 'express';
const productsRouter = Router();

// Middleware

// Controller
import { productsController } from '../../controllers/products.Controller';
import { authenticateSellerMiddleware } from '../../middlewares/authenToken.Middleware';




//-------------------------------------------- api/products/... -------------------------------

//--------------------------------------------GET------------------------------------------
productsRouter.get('/all', productsController.getAllProduct);
productsRouter.get('/all-product-publisher', productsController.getAllProductPublisher);
productsRouter.get('/all-product-supplier', productsController.getAllProductSupplier);
productsRouter.get('/idcategory-limit', productsController.getProductsByIDCategoryWithSetLimit);
productsRouter.get('/idcategory', productsController.getAllProductsByIDCategory);
productsRouter.get('/idproduct', productsController.getProductByIDProduct);
productsRouter.get('/search', productsController.searchProduct);
productsRouter.get('/count-search', productsController.countSearchProduct);
productsRouter.get('/trend', productsController.productTrends);
productsRouter.get('/rank', productsController.productRanking);
productsRouter.get('/favorite-list', productsController.favoriteList);
productsRouter.get('/iduser',authenticateSellerMiddleware, productsController.getProductsByIDUser);

//--------------------------------------------POST-----------------------------------------
productsRouter.post('/add-new-product',authenticateSellerMiddleware, productsController.addNewProduct);
productsRouter.post('/block-product', productsController.blockProduct);

//--------------------------------------------PATCH------------------------------------------
productsRouter.patch('/patch-product', productsController.patchProduct);
productsRouter.patch('/update-sold-product', productsController.updateSoldProduct);

//--------------------------------------------PUT------------------------------------------

//--------------------------------------------DELETE----------------------------------------

export = productsRouter;
