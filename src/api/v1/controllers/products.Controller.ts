// dependencies
import { Request, Response } from 'express';
import path from 'path';
import multer from 'multer';

// Interfaces

// Middlewares
import { asyncMiddleware } from '../middlewares/async.Middleware';
import { search } from '../routes/routersApi/category.Router';

// services
import { productService } from '../services/product.Service';
import cloudinary from '../../../start/cloudinaryConfig';
const generator = require('generate-password');
class ProductsController {
	//-----------------------------------GET----------------------------------
	getAllProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { data, message, status } = await productService.getAll();
		const Path = process.env.PATH_API;
		res.status(status).send({ data, message, Path });
	});
	getProductsByIDCategoryWithSetLimit = asyncMiddleware(
		async (req: Request, res: Response): Promise<void> => {
			const query = req.query;
			const IDCategory = Number(query.IDCategory);
			const Limit = Number(query.limit);
			const Path = process.env.PATH_API;
			const { data, message, status } = await productService.getProductsByIDCategoryWithSetLimit(
				IDCategory,
				Limit
			);

			res.status(status).send({ data, message, Path });
		}
	);
	getAllProductsByIDCategory = asyncMiddleware(
		async (req: Request, res: Response): Promise<void> => {
			const query = req.query;
			const IDCategory = Number(query.IDCategory);
			const Path = process.env.PATH_API;
			const { data, message, status } = await productService.getAllProductsByIDCategory(IDCategory);

			res.status(status).send({ data, message, Path });
		}
	);
	getProductByIDProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const IDProduct = String(query.IDProduct);
		const Path = process.env.PATH_API;
		const { data, message, status } = await productService.getProductByIDProduct(IDProduct);

		res.status(status).send({ data, message, Path });
	});
	searchProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const Search = String(query.search || '');
		const Sort = String(query.sort || '');
		const Order = String('Price');
		const OrderValue = String(query.orderby || 'ASC');
		const Limit = Number(query.limit || 48);
		const Page = Number(query.page || 0);
		const Offset = Page * Limit;
		const Path = process.env.PATH_API;

		const TypeProduct =
			String(query.typeproduct || '') === 'Sách, vở'
				? 'Book'
				: String(query.typeproduct || '') === 'Dụng cụ học tập'
				? 'Item'
				: '';
		const Price = String(query.price || '');
		const Votes = parseInt(String(query.votes || ''));

		const { data, message, status } = await productService.searchProduct(
			Search,
			Sort,
			Order,
			Limit,
			Offset,
			OrderValue,
			TypeProduct,
			Price,
			Votes
		);

		res.status(status).send({ data, message, Path });
	});
	countSearchProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const Search = String(query.search) || '';
		const Sort = String(query.sort) || '';
		const TypeProduct =
			String(query.typeproduct || '') === 'Sách, vở'
				? 'Book'
				: String(query.typeproduct || '') === 'Dụng cụ học tập'
				? 'Item'
				: '';
		const Price = String(query.price || '');
		const Votes = parseInt(String(query.votes || ''));

		const Path = process.env.PATH_API;
		const { data, message, status } = await productService.countSearchProduct(
			Search,
			Sort,
			TypeProduct,
			Price,
			Votes
		);

		res.status(status).send({ data, message, Path });
	});
	productTrends = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;
		const Limit = Number(query.limit) || 10;
		const { data, message, status } = await productService.productTrends(Limit);
		const Path = process.env.PATH_API;
		res.status(status).send({ data, message, Path });
	});
	productRanking = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const query = req.query;

		const IDCategory = Number(query.IDCategory);
		const Limit = Number(query.limit) || 5;
		const { data, message, status } = await productService.productRanking(IDCategory, Limit);
		const Path = process.env.PATH_API;
		res.status(status).send({ data, message, Path });
	});

	favoriteList = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const { data, message, status } = await productService.favoriteList(1);
		const Path = process.env.PATH_API;
		res.status(status).send({ data, message, Path });
	});
	getProductsByIDUser = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const IDUser = Number(req.query.IDUser);
		console.log(req.query);
		const { data, message, status } = await productService.getProductsByIDUser(IDUser);
		res.status(status).send({ data, message });
	});
	addNewProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		//--------------------use multer---------------------------------
		// const storage = multer.diskStorage({
		// 	destination: function (req, file, cb) {
		// 		cb(null, './src/assets/images/products');
		// 	},
		// 	filename: function (req, file, cb) {
		// 		cb(null, Date.now() + '_' + file.originalname);
		// 	},
		// });
		// const upload = multer({ storage });
		// upload.fields([
		// 	{ name: 'cover_image', maxCount: 1 },
		// 	{ name: 'image_one', maxCount: 1 },
		// 	{ name: 'image_two', maxCount: 1 },
		// 	{ name: 'image_three', maxCount: 1 },
		// ])(req, res, async function (err) {
		// 	if (err) {
		// 		console.log(err);
		// 	} else {
		// 		console.log(req.body);
		// 		const id = generator.generate({
		// 			length: 3,
		// 			numbers: false,
		// 		});
		// 		let CoverImage: string = '';
		// 		let ImageOne: string = '';
		// 		let ImageTwo: string = '';
		// 		let ImageThree: string = '';
		// 		const files = req.files as { [fieldname: string]: Express.Multer.File[] };
		// 		if (files['cover_image'] !== undefined) {
		// 			CoverImage = files['cover_image'][0].filename;
		// 		}
		// 		if (files['image_one'] !== undefined) {
		// 			ImageOne = files['image_one'][0].filename;
		// 		}
		// 		if (files['image_two'] !== undefined) {
		// 			ImageTwo = files['image_two'][0].filename;
		// 		}
		// 		if (files['image_three'] !== undefined) {
		// 			ImageThree = files['image_three'][0].filename;
		// 		}
		// 		const product = {
		// 			IDProduct: String(Date.now()) + String(id),
		// 			IDUser: Number(req.body.id_user),
		// 			IDCategory: Number(req.body.id_category),
		// 			TypeProduct: req.body.type_product,
		// 			NameProduct: req.body.product_name,
		// 			Image: CoverImage,
		// 			SubImageOne: ImageOne,
		// 			SubImageTwo: ImageTwo,
		// 			SubImageThree: ImageThree,
		// 			Price: req.body.product_price,
		// 			Weight: req.body.product_weight,
		// 			PackagingSize: req.body.product_package_size,
		// 			Description: req.body.description,
		// 			Quantity: Number(req.body.product_quantity),
		// 			Discount: Number(req.body.product_discount),
		// 			Status: Number(req.body.status),
		// 		};
		// 		const { data, message, status } = await productService.addNewProduct(product);
		// 		if(data === true){
		// 			res.status(status).send({ data, message });
		// 		}else{
		// 			res.status(status).send({ data: false, message });
		// 		}

		// 		if (req.body.type_product === 'Item' && data === true) {
		// 			const Item = {
		// 				IDProduct: product.IDProduct,
		// 				Origin: req.body.product_origin,
		// 				Trademark: req.body.product_trademark,
		// 				ProcessingPlace: req.body.product_processing_place,
		// 				Supplier: req.body.product_supplier,
		// 				Color: req.body.product_color,
		// 				Material: req.body.product_material,
		// 			};
		// 			const { data, message, status } = await productService.addDetailItem(Item);
		// 			console.log(data)
		// 		} else if(req.body.type_product === 'Book' && data === true) {
		// 			const Book = {
		// 				IDProduct: product.IDProduct,
		// 				Author: req.body.product_author,
		// 				Supplier: req.body.product_supplier,
		// 				PublishingCompany: req.body.product_publishing_company,
		// 				CoverForm: req.body.product_cover_form,
		// 				Translator: req.body.product_translator,
		// 				PublishingYear: req.body.product_publishing_year,
		// 				NumberOfPage: req.body.product_number_of_page,
		// 			};
		// 			await productService.addDetailBook(Book);
		// 		}
		// 	}
		// });
		//--------------------use cloudinary---------------------------------

		try {
			let CoverImage: string = '';
			let ImageOne: string = '';
			let ImageTwo: string = '';
			let ImageThree: string = '';
			const fileStrImage = req.body.cover_image;
			if (fileStrImage !== '') {
				const uploadResponseImage = await cloudinary.uploader.upload(fileStrImage, {
					upload_preset: 'products',
				});
				CoverImage = uploadResponseImage.public_id;
			}
			const fileStrSubImageOne = req.body.image_one;
			if (fileStrSubImageOne !== '') {
				const uploadResponseSubImageOne = await cloudinary.uploader.upload(fileStrSubImageOne, {
					upload_preset: 'products',
				});
				ImageOne = uploadResponseSubImageOne.public_id;
			}
			const fileStrSubImageTwo = req.body.image_two;
			if (fileStrSubImageTwo !== '') {
				const uploadResponseSubImageTwo = await cloudinary.uploader.upload(fileStrSubImageTwo, {
					upload_preset: 'products',
				});
				ImageTwo = uploadResponseSubImageTwo.public_id;
			}

			const fileStrSubImageThree = req.body.image_three;
			if (fileStrSubImageThree) {
				const uploadResponseSubImageThree = await cloudinary.uploader.upload(fileStrSubImageThree, {
					upload_preset: 'products',
				});
				ImageThree = uploadResponseSubImageThree.public_id;
			}

			const id = generator.generate({
				length: 3,
				numbers: false,
			});
			const product = {
				IDProduct: String(Date.now()) + String(id),
				IDUser: Number(req.body.id_user),
				IDCategory: Number(req.body.id_category),
				TypeProduct: req.body.type_product,
				NameProduct: req.body.product_name,
				Image: CoverImage,
				SubImageOne: ImageOne,
				SubImageTwo: ImageTwo,
				SubImageThree: ImageThree,
				Price: req.body.product_price,
				Weight: req.body.product_weight,
				PackagingSize: req.body.product_package_size,
				Description: req.body.description,
				Quantity: Number(req.body.product_quantity),
				Discount: Number(req.body.product_discount),
				Status: Number(req.body.status),
			};
			const { data, message, status } = await productService.addNewProduct(product);
			if (data === true) {
				res.status(status).send({ data, message });
			} else {
				res.status(status).send({ data: false, message });
			}

			if (req.body.type_product === 'Item' && data === true) {
				const Item = {
					IDProduct: product.IDProduct,
					Origin: req.body.product_origin,
					Trademark: req.body.product_trademark,
					ProcessingPlace: req.body.product_processing_place,
					Supplier: req.body.product_supplier,
					Color: req.body.product_color,
					Material: req.body.product_material,
				};
				const { data, message, status } = await productService.addDetailItem(Item);
				console.log(data);
			} else if (req.body.type_product === 'Book' && data === true) {
				const Book = {
					IDProduct: product.IDProduct,
					Author: req.body.product_author,
					Supplier: req.body.product_supplier,
					PublishingCompany: req.body.product_publishing_company,
					CoverForm: req.body.product_cover_form,
					Translator: req.body.product_translator,
					PublishingYear: req.body.product_publishing_year,
					NumberOfPage: req.body.product_number_of_page,
				};
				await productService.addDetailBook(Book);
			}
		} catch (err) {
			console.error(err);
			res.status(500).json({ err: 'Something went wrong' });
		}
	});
	patchProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		try {
			let CoverImage: string = req.body.cover_image != '' ? req.body.cover_image : '';
			let ImageOne: string = req.body.image_one != '' ? req.body.image_one : '';
			let ImageTwo: string = req.body.image_two != '' ? req.body.image_two : '';
			let ImageThree: string = req.body.image_three != '' ? req.body.image_three : '';
			const fileStrImage = req.body.cover_image || '';
			if (fileStrImage !== '' && fileStrImage.length > 400) {
				const uploadResponseImage = await cloudinary.uploader.upload(fileStrImage, {
					upload_preset: 'products',
				});
				CoverImage = uploadResponseImage.public_id;
			}
			const fileStrSubImageOne = req.body.image_one || '';
			if (fileStrSubImageOne !== '' && fileStrSubImageOne.length > 400) {
				const uploadResponseSubImageOne = await cloudinary.uploader.upload(fileStrSubImageOne, {
					upload_preset: 'products',
				});
				ImageOne = uploadResponseSubImageOne.public_id;
			}
			const fileStrSubImageTwo = req.body.image_two || '';
			if (fileStrSubImageTwo !== '' && fileStrSubImageTwo.length > 400) {
				const uploadResponseSubImageTwo = await cloudinary.uploader.upload(fileStrSubImageTwo, {
					upload_preset: 'products',
				});
				ImageTwo = uploadResponseSubImageTwo.public_id;
			}

			const fileStrSubImageThree = req.body.image_three || '';
			if (fileStrSubImageThree && fileStrSubImageThree.length > 400) {
				const uploadResponseSubImageThree = await cloudinary.uploader.upload(fileStrSubImageThree, {
					upload_preset: 'products',
				});
				ImageThree = uploadResponseSubImageThree.public_id;
			}

			const id = generator.generate({
				length: 3,
				numbers: false,
			});
			const product = {
				IDProduct: req.body.id_product,
				IDUser: Number(req.body.id_user),
				IDCategory: Number(req.body.id_category),
				TypeProduct: req.body.type_product,
				NameProduct: req.body.product_name,
				Image: CoverImage,
				SubImageOne: ImageOne,
				SubImageTwo: ImageTwo,
				SubImageThree: ImageThree,
				Price: Number(req.body.product_price),
				Weight: req.body.product_weight,
				PackagingSize: req.body.product_package_size,
				Description: req.body.description,
				Quantity: Number(req.body.product_quantity),
				Discount: Number(req.body.product_discount),
				View: req.body.product_view,
				Votes: req.body.product_votes,
				Sold: req.body.product_sold,
				Rating: req.body.product_rating,
				Status: Number(req.body.status),
			};
			
			const { data, message, status } = await productService.patchProduct(product);
			if (data === true) {
				res.status(status).send({ data, message });
			} else {
				res.status(status).send({ data: false, message });
			}

			if (req.body.type_product === 'Item' && data === true) {
				const Item = {
					IDItem: req.body.id_item,
					IDProduct: req.body.id_product,
					Origin: req.body.product_origin,
					Trademark: req.body.product_trademark,
					ProcessingPlace: req.body.product_processing_place,
					Supplier: req.body.product_supplier,
					Color: req.body.product_color,
					Material: req.body.product_material,
				};
				await productService.patchItem(Item);
				
			} else if (req.body.type_product === 'Book' && data === true) {
				const Book = {
					IDBook: req.body.id_book,
					IDProduct: req.body.id_product,
					Author: req.body.product_author,
					Supplier: req.body.product_supplier,
					PublishingCompany: req.body.product_publishing_company,
					CoverForm: req.body.product_cover_form,
					Translator: req.body.product_translator,
					PublishingYear: req.body.product_publishing_year,
					NumberOfPage: req.body.product_number_of_page,
				};
				await productService.patchBook(Book);
			}
		} catch (err) {
			console.error(err);
			res.status(500).json({ err: 'Something went wrong' });
		}
	});
}
export const productsController = new ProductsController();
