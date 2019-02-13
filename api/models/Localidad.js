
module.exports = {

  attributes: {
    id: { type: 'number', autoIncrement: true },
    nombre: { type: 'string', unique: true },
    descripcion: { type: 'string' },
    ubicacion: { type: 'string' },
    foto: { type: 'text' },
    altura: { type: 'string' },
    localizacion: { type: 'string' }

  },

  primaryKey: "id"

};

