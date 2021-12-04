"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
var dotenv_1 = __importDefault(require("dotenv"));
dotenv_1.default.config();
var MYSQL_HOST = process.env.MYSQL_HOST || '127.0.0.1';
var MYSQL_PORT = Number(process.env.MYSQL_PORT) || 3306;
var MYSQL_USER = process.env.MYSQL_USER || 'root';
var MYSQL_PASS = process.env.MYSQL_PASS || 'password';
var MYSQL_DATABASE = process.env.MYSQL_DATABASE || 'db_fahasa';
var MYSQL = {
    host: MYSQL_HOST,
    port: MYSQL_PORT,
    user: MYSQL_USER,
    pass: MYSQL_PASS,
    database: MYSQL_DATABASE,
};
var config = {
    mysql: MYSQL,
};
exports.default = config;
