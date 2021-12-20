// dependencies

import { Request, Response } from 'express';
import { parse } from 'path/posix';

// Interfaces

// Middlewares
import { asyncMiddleware } from '../middlewares/async.Middleware';
import { discountServices } from '../services/discount.Service';

// services

class DiscountController {
	getDiscountByIDUser = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const IDUser: number = Number(req.query.IDUser);
		const { data, message, status } = await discountServices.getDiscountByIDUser(IDUser);
		res.status(status).send({ data, message });
	});
    getDiscountByIDProduct = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const IDProduct: string = String(req.query.IDProduct);
		const { data, message, status } = await discountServices.getDiscountByIDProduct(IDProduct);
		res.status(status).send({ data, message });
	});
    addNewDiscount = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
        const Discount = {
            IDProduct: req.body.id_product,
            DiscountName: req.body.discount_name,
            VoucherCode: req.body.voucher_code,
            StartTime: req.body.start_time,
            EndTime: req.body.end_time,
            PercentDiscount: req.body.percent_discount,
            Quantity: req.body.quantity
            // IDProduct: '1116090011532',
            // DiscountName: 'discount',
            // VoucherCode: 'ABC',
            // StartTime: '2021-12-12T16:52',
            // EndTime: '2021-12-15T16:52',
            // PercentDiscount: 4,
            // Quantity: 50
        }
		const { data, message, status } = await discountServices.addNewDiscount(Discount);
        if(data === true){
            res.status(status).send({ data, message });
        }else{
            res.status(status).send({ data: false, message });
        }
	});
    getDiscountByIDDiscount = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
		const IDDiscount: string = String(req.query.IDDiscount);
		const { data, message, status } = await discountServices.getDiscountByIDDiscount(IDDiscount);
		res.status(status).send({ data, message });
	});
    patchDiscount = asyncMiddleware(async (req: Request, res: Response): Promise<void> => {
        const Discount = {
            IDDiscount: req.body.id_discount,
            IDProduct: req.body.id_product,
            DiscountName: req.body.discount_name,
            VoucherCode: req.body.voucher_code,
            StartTime: req.body.start_time,
            EndTime: req.body.end_time,
            PercentDiscount: req.body.percent_discount,
            Quantity: req.body.quantity
        }
		const { data, message, status } = await discountServices.patchDiscount(Discount);
        if(data === true){
            res.status(status).send({ data, message });
        }else{
            res.status(status).send({ data: false, message });
        }
	});
}
export const discountController = new DiscountController();