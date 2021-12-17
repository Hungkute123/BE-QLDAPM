// dependencies

import { Request, Response } from 'express';
import { parse } from 'path/posix';

// Interfaces

// Middlewares
import { asyncMiddleware } from '../middlewares/async.Middleware';

// services
import { categoryServices } from '../services/category.Service';

class CategoryController {
	getCategoryProductByLevel = asyncMiddleware(
		async (req: Request, res: Response): Promise<void> => {
			const query = req.query;
			const Level = Number(query.level);
			const { data, message, status } = await categoryServices.getCategoryProductByLevel(Level);

			res.status(status).send({ data, message });
		}
	);
	getCategoryProductByIDParent = asyncMiddleware(
		async (req: Request, res: Response): Promise<void> => {
			const query = req.query;
			const IDParent = Number(query.idparent);
			const { data, message, status } = await categoryServices.getCategoryProductByIDParent(
				IDParent
			);

			res.status(status).send({ data, message });
		}
	);
	getCategoryProductByIDParentwithSetLimit = asyncMiddleware(
		async (req: Request, res: Response): Promise<void> => {
			const query = req.query;
			const IDParent = Number(query.idparent);
			const Limit = Number(query.limit);
			const { data, message, status } =
				await categoryServices.getCategoryProductByIDParentwithSetLimit(IDParent, Limit);

			res.status(status).send({ data, message });
		}
	);

	getDetailCategoryByID = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const IDCategory = Number(query.IDCategory);
		const listCategory = [];
		for (let i = IDCategory; ; ) {
			const { data } = await categoryServices.getDetailCategoryByID(i);
			listCategory.push(data);
			i = data.IDParent;
			if (data.Level === 0) {
				break;
			}
		}

		res.status(200).send({ data: listCategory });
   });

	getOneCategory = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const IDCategory = Number(query.IDCategory);

		if(!IDCategory)  res.status(200).send('error');
		const { data, message, status } = await categoryServices.getOneCategory(IDCategory);

		res.status(status).send({ data, message });
	});

	updateOneCategory = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { IDCategory, Name, IDParent } = req.body;
		const category = { IDCategory, Name, IDParent };
		const { data, message, status } = await categoryServices.updateOneCategory(category);

		res.status(status).send({ data, message });
	});

	deleteOneCategory = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { IDCategory } = req.body;
		const { data, message, status } = await categoryServices.deleteOneCategory(IDCategory);

		res.status(status).send({ data, message });
	});

	addOneCategory = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { Name, IDParent } = req.body;
		const newData = { Name, IDParent };
		const { data, message, status } = await categoryServices.addOneCategory(newData);

		res.status(status).send({ data, message });
	});

	getAllCate = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { data, message, status } = await categoryServices.getAllCate();

		res.status(status).send({ data, message });
	});

	searchCate = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const {text} = req.query;
		const { data, message, status } = await categoryServices.searchCate(text ? text.toString() : '');

		res.status(status).send({ data, message });
	});
}
export const categoryController = new CategoryController();