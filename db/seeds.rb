# frozen_string_literal: true
require 'faker'

User.create(
    email: "example1@dccitas.cl",
    password: "123456",
    rut:"12312312-3",
    name:"Pedro Piedra",
    birthday:"02/05/1997",
    description:"Un chico alegre",
    number: 99058260,
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

region = ['I', 'I', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI', 'XII', 'Metropolitana', 'XIV', 'XV', 'XVI']
interests = ['deporte', 'musica', 'arte', 'ciencias', 'comer', 'literatura', 'teatro']

30.times do |i|
    User.create(
        email: Faker::Internet.unique.email,
        password: "123456",
        rut: Faker::ChileRut.unique.full_rut,
        name: Faker::Name.unique.name,
        birthday: Faker::Date.unique.birthday(min_age: 18, max_age: 65),
        description: "I love to #{Faker::Verb.base}",
        number: Faker::Number.unique.number(digits: 8),
        photos:"none",
        gender: Faker::Gender.binary_type.downcase,
        interests: interests[rand(interests.length)],
        sexual_orientation: Faker::Gender.binary_type.downcase,
        region: region[rand(region.length)])
end

10.times do |i|
    DuenoUser.create(
        email: Faker::Internet.unique.email,
        password: "123456",
        rut: Faker::ChileRut.unique.full_rut,
        name: Faker::Name.unique.name)
end

