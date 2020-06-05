# frozen_string_literal: true

User.create(
    email: "example@dccitas.cl",
    password: "123456",
    rut:"12312312-3",
    name:"Pedro Piedra",
    birthday:"02/05/1997",
    description:"Un chico alegre",
    photos:"none",
    gender:"male",
    interests:"musica",
    sexual_orientation:"female",
    region: "I")


User.create(
    email: "example2@dccitas.cl",
    password: "123456",
    rut:"19891757-5",
    name:"Nicolas Alberto",
    birthday:"02/05/1997",
    description:"Un chico mas alegre",
    photos:"none",
    gender:"male",
    interests:"comer",
    sexual_orientation:"female",
    region: "X")

Local.create(
    nombre: "Pizza dil Bambino",
    direccion: "Andres Bello 2023",
    tipo: "restaurante",
    n_citas: 20
)

Local.create(
    nombre: "Cuncuna Bar",
    direccion: "Geronimo Alderete 1313",
    tipo: "bar",
    n_citas: 15
)

Local.create(
    nombre: "Motel Piramide",
    direccion: "Av Panamericana Sur Km 21"
    tipo: "motel",
    n_citas: 100
)

Local.create(
    nombre: "Cine Hoyts"
    direccion: "Av los Trapenses 5050",
    tipo: "cine",
    n_citas: 50
)

DuenoUser.create(
    email: "ownerexample@dccitas.cl",
    password: "123456",
    name: "Juan Pastrami",
    rut: "20038500-4"
)

DuenoUser.create(
    email: "ownerexample2@dccitas.cl",
    password: "123456",
    name: "Jose Motocicleta",
    rut: "22172573-5"
)

DuenoUser.create(
    email: "ownerexample2@dccitas.cl",
    password: "123456",
    name: "Manuel Teamo",
    rut: "14820205-2"
)

# Review.create(
#     id_local: 1,
#     review: "La comida estuvo muy buena",
#     rating: 5,
# )

# Review.create(
#     id_local: 1,
#     review: "Me toco un pelo en la comida",
#     rating: 2,
# )

# Review.create(
#     id_local: 2,
#     review: "Perro, estuvo piola, buen ambiente, buen mood, pero las pilsens estaban tibias",
#     rating: 3,
# )

# Review.create(
#     id_local: 4,
#     review: "Habia una pareja en el asiento de atras que no se dejaban tranquilos, tienen que mejorar la seguridad",
#     rating: 1,
# )

# Review.create(
#     id_local: 3,
#     review: "Pesimo servicio, por lo menos hagan el aseo después de arrendar la pieza",
#     rating: 1,
# )

# Review.create(
#     id_local: 3,
#     review: "Buen precio",
#     rating: 4,
# )