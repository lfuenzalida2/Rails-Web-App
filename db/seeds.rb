# frozen_string_literal: true

User.create(
    email: "example1@dccitas.cl",
    password: "123456",
    rut:"12312312-3",
    name:"Pedro Piedra",
    birthday:"02/05/1997",
    description:"Un chico alegre",
    number: 99058260,
    photos:"none",
    gender:"male",
    interests:"musica",
    sexual_orientation:"female",
    region: "I")

User.create(
    email: "example2@dccitas.cl",
    password: "123456",
    rut:"14589717-3",
    name:"Manuel Alberto",
    birthday:"02/10/1995",
    description:"Un chico mas alegre",
    number: 52487860,
    photos:"none",
    gender:"male",
    interests:"teatro",
    sexual_orientation:"female",
    region: "X")     

User.create(
    email: "example3@dccitas.cl",
    password: "123456",
    rut:"5836091-0",
    name:"Luisa Martines",
    birthday:"10/05/1998",
    description:"Un chica muy alegre",
    number: 36332576,
    photos:"none",
    gender:"female",
    interests:"teatro",
    sexual_orientation:"female",
    region: "III")

User.create(
    email: "example4@dccitas.cl",
    password: "123456",
    rut:"5836091-0",
    name:"Marta Brunet",
    birthday:"10/05/1995",
    description:"Yo soy mas alegre",
    number: 36332576,
    photos:"none",
    gender:"female",
    interests:"teatro",
    sexual_orientation:"male",
    region: "IV")

DuenoUser.create(
    email: "duenoexample2@dccitas.cl",
    password: "123456",
    rut:"6645166-6",
    name:"Gloria Carmina")

DuenoUser.create(
    email: "duenoexample3@dccitas.cl",
    password: "123456",
    rut:"6717405-4",
    name:"Magnus Midtbo")

DuenoUser.create(
    email: "duenoexample1@dccitas.cl",
    password: "123456",
    rut:"15427936-9",
    name:"Hillary Clinton")

Local.create(
    nombre: "Pizza Dil Bambino",
    tipo: "restaurante",
    direccion: "Av Italia 2014",
    dueno_user_id: 1)

Local.create(
    nombre: "Cine Hoytz",
    tipo: "cine",
    direccion: "Av avenida los trapenses",
    dueno_user_id: 3)

Local.create(
    nombre: "Bar Ianza",
    tipo: "bar",
    direccion: "Andres Bello 1313",
    dueno_user_id: 2)

Local.create(
    nombre: "Motel Piramide",
    tipo: "motel",
    direccion: "Av Panamericana Km 21",
    dueno_user_id: 1)

Review.create(
    id_local: 1,
    review: "Muy ricas las pizzas",
    rating: 5)

Review.create(
    id_local: 2,
    review: "Habia una pareja atras mio que no paraba de hacer cosas, deben mejorar la seguridad",
    rating: 2)

Review.create(
    id_local: 3,
    review: "Muy buen bar, los precios no varian mucho con respecto a otros bar",
    rating: 4)

Review.create(
    id_local: 4,
    review: "Pesimo servicio, deberían limpiar las piezas antes de volver a arrendarlas",
    rating: 1)

Review.create(
    id_local: 4,
    review: "Los precios muy buenos",
    rating: 4)
