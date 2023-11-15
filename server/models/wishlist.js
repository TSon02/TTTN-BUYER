const mongoose = require('mongoose')


const wishlistSchema = mongoose.Schema({
    userId: {
        type : String,
        require : true,  
    },

    productsId: [
        {
            type:String,
            require:true,
            default:[]
        }
    ]
},{
    timestamps:true,
})

const Wishlist = mongoose.model('Wishlist',wishlistSchema);

module.exports = Wishlist; 