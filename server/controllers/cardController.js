const Card = require("../models/card");

const addNewCard = async (req,res) =>{
    try {
        const {bank,cardNumber,fullName,expiredTime,cvv} = req.body;
        

        console.log(bank);
        console.log(cardNumber);
        console.log(fullName);
        console.log(expiredTime);
        console.log(cvv);



        if(!bank||!cardNumber||!fullName||!expiredTime||!cvv){
            return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }

        const card = await Card.create({
            userId:req.user,
            bank,
            cardNumber,
            fullName,
            expiredTime,
            cvv,
        })


        console.log(card);

        if(!card){
            return res.json({
                success: false,
                message:"Something wrong, Can't create credit card",
            })
        }


        return res.json({
            success: true,
            message:"Create credit card successfully",
            card:card,
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}

const UpdateCard = async (req,res) =>{
    try {
        const {bank,cardNumber,fullName,expiredTime,cvv} = req.body;
        const id = req.params.id;
        

        console.log(bank);
        console.log(cardNumber);
        console.log(fullName);
        console.log(expiredTime);
        console.log(cvv);



        if(!bank||!cardNumber||!fullName||!expiredTime||!cvv){
            return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }


        const card = await Card.findOneAndUpdate(
            {
                "_id":id
            },
            {
                userId:req.user,
                bank,
                cardNumber,
                fullName,
                expiredTime,
                cvv,
           },
           { new: true },
        )


        console.log(card);

        if(!card){
            return res.json({
                success: false,
                message:"Something wrong, Can't create credit card",
            })
        }


        return res.json({
            success: true,
            message:"Create credit card successfully",
            card:card,
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}

const getMyCards = async (req, res) => {

    try {
        const cards =await Card.find({});

        res.json({
            success: true,
            message:"Get all card successfully",
            cards
        });

    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}

const deleteCreditCardById = async (req,res) =>{
    try {
        const id = req.params.id;

        console.log(id);
        const response = await Card.findByIdAndDelete(id)

        console.log(response);

        if(!response){
            return res.json({
                success: false,
                message:"Failed to remove the credit card. Please try again later.",
            })
        }



        return res.json({
            success: true,
            message:"The card has been successfully removed.",
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}

module.exports = {addNewCard,getMyCards,deleteCreditCardById,UpdateCard}