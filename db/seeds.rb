# frozen_string_literal: true

User.create(email: "example@dccitas.cl",
             password: "123456",
             rut:"9900747-8",
              name:"Pedro Piedra",
               birthday:"02/05/1997",
                description:"Un chico alegre",
                 photos:"none",
                  gender:"male",
                   interests:"musica",
                    sexual_orientation:"female",
                     region: "I")

User.create(email: "example2@dccitas.cl",
            password: "123456",
            rut:"6379858-4",
            name:"Pedra Piedra",
            birthday:"02/05/1997",
            description:"Una chica alegre",
            photos:"none",
            gender:"female",
            interests:"musica",
            sexual_orientation:"male",
            region: "I")
        