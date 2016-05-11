c = Utilisateur.new(email: 'demo@dev-crea.com',
                    password: 'supermotdepasse',
                    password_confirmation: 'supermotdepasse',
                    nom: 'Michel',
                    prenom: 'Demo')
c.confirm!
c.save
