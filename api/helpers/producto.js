module.exports = {


  friendlyName: 'Producto',


  description: 'Producto something.',


  inputs: {

  },


  exits: {

    success: {
      description: 'All done.',
    },

  },


  fn: async function (id, exists) {

    console.log('LLEGUEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE');
    
 
 await Producto.find({id:id}).exec(function cb(err, res){
      if(err){
        console.log(err)
        return exists.success(id);
      }else{
        console.log(res)
        return exists.success(res);
      }
    })

  }


};

