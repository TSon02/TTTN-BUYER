const Wishlist = require("../models/wishlist");
const Product = require("../models/product")


const getMyWishlist = async (req, res) => {
    try {

        const wishlist = await Wishlist.findOne({
            userId:req.user,
        });


        if(!wishlist){
            return res.json({
                success: false,
                message:"Something wrong, Can't get my wishlist",
            })
        }

        let products = [];

        for (let i = 0; i < wishlist.productsId.length; i++) {
            // console.log(wishlist.productsId[i]);      
            
            const product = await Product.findOne({
                _id:wishlist.productsId[i]
            })

            // console.log(product);

            products.push(product);
        }

        for (let i = 0; i < products.length; i++) {
           if(products[i] == null){
            products.splice(i,1);
           }
        }

        console.log(products);

        return res.json({
            success: true,
            message:"Get my wishlist successfully",
            products,
        })}
        catch (error) {
            res.json({
                success:false,
                message:error.message,
            })
        }
}

const createOrUpdateWishlist = async (req,res) =>{
    try {
        const {productId} = req.body;
        
        const userId = req.user;

        if(!productId||!userId){
            return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }
        let wishlist = await Wishlist.findOne({
            userId
        });

        if (!wishlist) {
            wishlist = new Wishlist({ userId, productsId: [] });
        }

        const index = wishlist.productsId.indexOf(productId);

        if (index === -1) {
            wishlist.productsId.push(productId);
          } else {
            wishlist.productsId.splice(index, 1);
          }

        await wishlist.save();

        return res.json({
            success: true,
            message:"Update wishlist successfully",
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}

module.exports = {getMyWishlist,createOrUpdateWishlist}