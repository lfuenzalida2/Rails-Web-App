# frozen_string_literal: true

Region.create(name: 'I Tarapaca')
Region.create(name: 'II Antofagasta')
Region.create(name: 'III Atacama')
Region.create(name: 'IV Coquimbo')
Region.create(name: 'V Valparaiso')
Region.create(name: 'VI Libertador General Bernardo O\'Higgins')
Region.create(name: 'VII Maule')
Region.create(name: 'VIII Biobio')
Region.create(name: 'IX Araucania')
Region.create(name: 'X Los Lagos')
Region.create(name: 'XI Aysén del General Carlos Ibañez del Campo')
Region.create(name: 'XII Magallanes y Antártica Chilena')
Region.create(name: 'Region Metropolitana de Santiago')
Region.create(name: 'XIV Los Rios')
Region.create(name: 'XV Arica y Parinacota')
Region.create(name: 'XVI Ñuble')

Interest.create(name: 'Deporte')
Interest.create(name: 'Musica')
Interest.create(name: 'Danza')
Interest.create(name: 'Cocina')

Orientation.create(name: 'Hombres')
Orientation.create(name: 'Mujeres')

Gender.create(name: 'Hombre')
Gender.create(name: 'Mujer')

Admin.create(rut: 1, admin: true)
