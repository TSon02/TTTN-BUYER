const express = require('express');
const admin = require('../middleware/admin');
const { addProduct, getProducts, delProductById } = require('../controllers/adminController');
const Product = require('../models/product');
const adminRouter = express.Router();


adminRouter.post('/add-product',admin,addProduct);

adminRouter.get('/get-products',admin,getProducts);

adminRouter.delete('/delete-product/:id',admin,delProductById);

module.exports = adminRouter;