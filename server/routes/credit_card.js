const express = require('express');
const auth = require('../middleware/auth');
const { addNewCard, getMyCards, deleteCreditCardById, UpdateCard } = require('../controllers/cardController');
const cardRouter =  express.Router();


cardRouter.post('/card',auth,addNewCard)

cardRouter.get('/card',auth,getMyCards)

cardRouter.delete('/card/:id',auth,deleteCreditCardById)

cardRouter.put('/card/:id',auth,UpdateCard)




module.exports = cardRouter;