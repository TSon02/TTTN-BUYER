const express = require('express');
const auth = require('../middleware/auth');
const { getMyWishlist, createOrUpdateWishlist } = require('../controllers/wishlistController');
const wishlistRouter =  express.Router();


wishlistRouter.get('/wishlists',auth,getMyWishlist)

wishlistRouter.post('/wishlists',auth,createOrUpdateWishlist)

module.exports = wishlistRouter;