"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.authenTokenMiddleware = void 0;
var jsonwebtoken_1 = __importDefault(require("jsonwebtoken"));
// dotenv
var dotenv_1 = __importDefault(require("dotenv"));
dotenv_1.default.config();
function authenTokenMiddleware(req, res, next) {
    try {
        var token = String(req.query.jwt);
        console.log(token);
        if (!token)
            res.sendStatus(401);
        jsonwebtoken_1.default.verify(token, process.env.ACCESS_TOKEN_SECRET, function (err, data) {
            if (err)
                res.status(200).json({ data: false, message: 'JWT wrong' });
            res.locals.data = data;
            next();
        });
    }
    catch (error) {
        res.status(401).json(error);
    }
}
exports.authenTokenMiddleware = authenTokenMiddleware;
