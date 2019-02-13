module.exports = {
  attributes: {
    id: { type: 'number', autoIncrement: true },
    estado: { type: 'boolean', defaultsTo: true },
    identificacion: { type: 'string', required: true, unique: true},
    nombre: { type: 'string' },
    direccion: { type: 'string' },
    telefono: { type: 'string' },
    email: { type: 'string', email: true },
    es_admin: { type: 'boolean', defaultsTo: true },
    es_guia: { type: 'boolean', defaultsTo: false },
    es_tourPlaning: { type: 'boolean', defaultsTo: false },
    usuario: { collection: 'usuario', via: 'persona' },
  },
  primaryKey: 'id',

};

