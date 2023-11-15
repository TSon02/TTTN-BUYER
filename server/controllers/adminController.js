const { json } = require('express');
const Product = require('../models/product');

const addProduct =async (req, res) => {
    try {
        const {productBrand,productName,description,images,price,productVariants,category,coupons} = req.body;

        if(!productBrand|| !productName || !description || !images || !price || !productVariants || !category|| !coupons){
        return res.json({
                success: false,
                message:"Please provide all fields",
            })
        }

        console.log(productBrand);
        console.log(productName);
        console.log(description);
        console.log(images);
        console.log(price);
        console.log(productVariants);
        console.log(category);

        const product = await Product.create(
            {
                productBrand,
                productName,
                description,
                images,
                productVariants,
                price,
                category,
                userId:req.user,
                coupons,
           }
        )

        console.log(product);
        // let product = new Product({
        //         productName,
        //         description,
        //         images,
        //         price,
        //         quantity,
        //         category,
        //         userId:req.user,
        // })

        // product = await product.create();

        res.json({
            success: true,
            message:"Upload product successfully",
            product,
        })

    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}


const getProducts =async(req,res)=>{
    try {
       
     const products = await Product.find({
        userId : req.user,
     })

     res.json({
        success: true,
        message:"Get products successfully",
        products,
    });
    
    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}



const delProductById =async(req,res)=>{
    try {
       const id = req.params.id;

       const product = await Product.findByIdAndDelete(id);

       if (!product) {
        return res.json({
          success: false,
          message: 'Product not found!',
        });
      }
  
      res.json({
        success: true,
        message: 'Delete product successfully',
        product,
      });


    } catch (error) {
        res.json({
            success: false,
            message:error.message,
        })
    }
}





module.exports = {
    addProduct,
    getProducts,
    delProductById

}