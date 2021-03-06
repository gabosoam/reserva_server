module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    estado: { type: 'string' },
    email: { type: 'string' },
    password: { type: 'string' },
    persona: { model: 'persona', unique: true }
  },

  primaryKey: 'id',

  customToJSON: function() {
    return _.omit(this, ['password'])
  },

  beforeCreate: function (valuesToSet, proceed) {
 
    sails.helpers.encriptacion(valuesToSet.password).exec((err, hashedPassword) => {
      if (err) { return proceed(err); }
      valuesToSet.password = hashedPassword;
      return proceed();
    });
  }

};

