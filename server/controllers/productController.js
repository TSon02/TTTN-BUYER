const CartProduct = require("../models/cartProduct");
const Product = require("../models/product")


const getProducts = async (req, res) => {
// console.log(req.params);
// console.log(req.query);

    try {
        // const page = parseInt(req.query.page)-1 || 0;
        // const limit = parseInt(req.query.limit) || 4;
        // const search = req.query.search || "";
        // let sort = req.query.sort || "createdAt";
        // let categories = req.query.categories || "All"

        // console.log(page);
        // console.log(limit);
        // console.log(search);
        // console.log(categories);

        // const categoryOptions = [
        //     "Clothes",
        //     "Bags",
        //     "Shoes",
        //     "Electronics",
        //     "Jewelry"
        // ];

        // categories === "All" ? (categories = [...categoryOptions]) : (categories = req.query.categories.split(","));

        // console.log(categories);
        // req.query.sort ? (sort = req.query.sort.split(",")) : (sort= [sort]);

        // let sortBy = {};

        // if(sort[1]){
        //     sortBy[sort[0]] = sort[1];
        // }else{
        //     sortBy[sort[0]] = "asc";

        // }

        // const products = await Product.find({
        //     productName:{
        //         $regex:search,
        //         $options:"i"
        //     }
        // })
        // .where("category")
        // .in([...categories])
        // .skip(page * limit)
        // .sort(sortBy)
        // .limit(limit)

        // console.log('products');    
        // console.log(products);

        const products =await Product.find({});

        res.json({
            success: true,
            message:"Get all products successfully",
            products
        });

    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}



const addProductToCart = async (req,res) =>{
    try {
        const {productId,sellerId,productBrand,productName,price,productVariant,image,coupons} = req.body;
        
        console.log(productId);
        console.log(sellerId);
        console.log(productBrand);
        console.log(productName);
        console.log(price);
        console.log(productVariant);
        console.log(image);



        if(!productId||!sellerId||!productBrand||!productName||!price||!productVariant||!image||!coupons){
            return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }

        const product = await CartProduct.create({
            productId,
            sellerId,
            buyerId:req.user,
            productBrand,
            productName,
            price,
            productVariant,
            coupons,
            image,
        })

        console.log(product);

        if(!product){
            return res.json({
                success: false,
                message:"Something wrong, Can't add product to cart",
            })
        }


        return res.json({
            success: true,
            message:"Add product to cart successfully",
            product:product,
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}

// user

const getCartProducts = async (req,res) =>{
    try {
        

        const products = await CartProduct.find({
            buyerId:req.user,
        });

        console.log(products.length);

        if(!products){
            return res.json({
                success: false,
                message:"Something wrong, Can't get cart products",
            })
        }



        return res.json({
            success: true,
            message:"Get cart products successfully",
            products,
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}



const deleteCartProductById = async (req,res) =>{
    try {
        const id = req.params.id;

        console.log(id);
        const response = await CartProduct.findByIdAndDelete(id)


        console.log(response);

        if(!response){
            return res.json({
                success: false,
                message:"Failed to remove the product from the cart. Please try again later.",
            })
        }



        return res.json({
            success: true,
            message:"The product has been successfully removed from the cart.",
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}

const deleteAllCart = async (req,res) =>{
    try {
        const id = req.user;

        console.log(id);
        const response = await CartProduct.deleteMany({
            buyerId:id,
        })

        
        console.log(response);

        if(response.deletedCount == 0){
            return res.json({
                success: false,
                message:"Failed to remove the product from the cart. Please try again later.",
            })
        }



        return res.json({
            success: true,
            message:"The products has been successfully removed from the cart.",
        })

    } catch (error) {
        res.json({
            success:false,
            message:error.message,
        })
    }
}


module.exports = { getProducts,addProductToCart,getCartProducts,deleteCartProductById,deleteAllCart}