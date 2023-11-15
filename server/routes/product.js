const express = require('express');
const auth = require('../middleware/auth');
const {  addProductToCart, getCartProducts, deleteCartProductById, deleteAllCart, searchProducts, getProducts } = require('../controllers/productController');
const productRouter =  express.Router();


productRouter.get('/products',auth,getProducts)


productRouter.post('/cart',auth,addProductToCart)

productRouter.get('/cart',auth,getCartProducts)

productRouter.delete('/cart/:id',auth,deleteCartProductById)

productRouter.delete('/cart',auth,deleteAllCart)


module.exports = productRouter;