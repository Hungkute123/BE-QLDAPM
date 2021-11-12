import dotenv from 'dotenv';

dotenv.config();

const MYSQL_HOST = process.env.MYSQL_HOST || '127.0.0.1';
const MYSQL_PORT = Number(process.env.MYSQL_PORT) || 3306;
const MYSQL_USER = process.env.MYSQL_HOST || 'root';
const MYSQL_PASS = process.env.MYSQL_HOST || 'Anhkiem0701';
const MYSQL_DATABASE = process.env.MYSQL_DATABASE || 'fahasa';

const MYSQL = {
    host: MYSQL_HOST,
    port: MYSQL_PORT,
    user: MYSQL_USER,
    pass: MYSQL_PASS,
    database: MYSQL_DATABASE,
};


const config = {
    mysql: MYSQL,
};

export default config;