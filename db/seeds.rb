# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


user = User.create(username: 'bob', password: '123')

palete = Palete.create(user_id: user.id, data: {svg:'<svg xmlns="http://www.w3.org/2000/svg" width="400px" height="400px" id="mainContainer1" viewBox="0 0 400 400"><desc>Created with Snap</desc><defs/><svg id="svg0"><desc>Created with Snap</desc><defs/><circle cx="50" cy="50" r="50" fill="#c7925b" style="" transform="matrix(1,0,0,1,65,176)"/><circle cx="50" cy="50" r="50" fill="#c7925b" style="" transform="matrix(1,0,0,1,166.6531,120.2857)"/><g transform="matrix(1.58,0,0,1.58,-47.4762,-43.5078)"><circle cx="50" cy="50" r="50" fill="#c7925b" style="" transform="matrix(1,0,0,1,34.4131,30.0767)"/></g></svg></svg>'} )

Note.create(user_id: user.id, palete_id: palete.id, content: "What a nice palete!")
