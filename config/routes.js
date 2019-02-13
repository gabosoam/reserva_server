module.exports.routes = {
  '/': { view: 'pages/homepage' },
  'POST /login': 'Usuario.login',
  '/token': 'Usuario.token',
  'DELETE /logout': 'Usuario.logout',
  'get /localidad/count': 'Localidad.count',
  'get /persona/count': 'Persona.count',

};
