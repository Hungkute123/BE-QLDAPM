// dependencies
import {  Request, Response } from 'express';
import path from 'path';

// Interfaces

// Middlewares
import { asyncMiddleware } from '../middlewares/async.Middleware';
import { search } from '../routes/routersApi/category.Router';

// services
import { productService } from '../services/product.Service';

// validations
// Website you wish to allow to connect
		// res.setHeader('Access-Control-Allow-Origin', 'http://localhost:3001');

		// // Request methods you wish to allow
		// res.setHeader('Access-Control-Allow-Methods', 'GET, POST, OPTIONS, PUT, PATCH, DELETE');

		// // Request headers you wish to allow
		// res.setHeader('Access-Control-Allow-Headers', 'X-Requested-With,content-type');

		// // Set to true if you need the website to include cookies in the requests sent
		// // to the API (e.g. in case you use sessions)
		// res.setHeader('Access-Control-Allow-Credentials', 'true');

class ProductsController {
	//-----------------------------------GET----------------------------------
	getAllProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		
		const {data, message, status} = await productService.getAll();
		const Path = process.env.PATH_API;
		res.status(status).send({data , message, Path});
	});
	getProductsByIDCategoryWithSetLimit = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const IDCategory = Number(query.IDCategory);
		const Limit = Number(query.limit);
		const Path = process.env.PATH_API;
		const {data, message, status} = await productService.getProductsByIDCategoryWithSetLimit(IDCategory, Limit);
		
		res.status(status).send({data , message, Path});
	});
	getAllProductsByIDCategory = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		
		const query = req.query;
		const IDCategory = Number(query.IDCategory);
		const Path = process.env.PATH_API;
		const {data, message, status} = await productService.getAllProductsByIDCategory(IDCategory);
		
		res.status(status).send({data , message, Path});
	});
	getProductByIDProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		
		const query = req.query;
		const IDProduct = String(query.IDProduct);
		const Path = process.env.PATH_API;
		const {data, message, status} = await productService.getProductByIDProduct(IDProduct);
		
		res.status(status).send({data , message, Path});
	});
	searchProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		
		const query = req.query;
		const Search= String(query.search) || ''; 
		const Sort = String(query.sort)|| '';
		const Order =  String(query.order) || '';
		const Limit =  Number(query.limit) || 48; 
		const Offset = Number(query.offset) || 1;
		const Path = process.env.PATH_API;
		const {data, message, status} = await productService.searchProduct(Search, Sort, Order, Limit, Offset);
		
		res.status(status).send({data , message, Path});
	});
	countSearchProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		
		const query = req.query;
		const Search= String(query.search) || ''; 
		const Sort = String(query.sort)|| '';
		
		const Path = process.env.PATH_API;
		const {data, message, status} = await productService.countSearchProduct(Search, Sort);
		
		res.status(status).send({data , message, Path});
	});
	productTrends = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		
		const {data, message, status} = await productService.productTrends();
		const Path = process.env.PATH_API;
		res.status(status).send({data , message, Path});
	});
	productRanking = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		
		const query = req.query;
		const IDCategory = Number(query.IDCategory);
		const Limit =  Number(query.limit) || 5; 
		const {data, message, status} = await productService.productRanking(IDCategory, Limit);
		const Path = process.env.PATH_API;
		res.status(status).send({data , message, Path});
	});
}
export const productsController = new ProductsController();
