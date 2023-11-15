const express = require('express');
const auth = require('../middleware/auth');
const { createShippingInfo, getShippingInfo, deleteShippingInformationById, updateShippingInfo } = require('../controllers/addressController');

const shippingInfoRouter = express.Router();

//create address
shippingInfoRouter.post('/shipping',auth,createShippingInfo);

// get address
shippingInfoRouter.get('/shipping',auth,getShippingInfo);

shippingInfoRouter.delete('/shipping/:id',auth,deleteShippingInformationById);

shippingInfoRouter.put('/shipping/:id',auth,updateShippingInfo);





module.exports = shippingInfoRouter;