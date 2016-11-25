# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Listn.destroy_all

art_b_winter = Listn.create!(artist:"Art Bears", work: "Winter Songs", work_type:"Album")
art_b_world = Listn.create!(artist:"Art Bears", work: "The World As It Is Today", work_type:"Album")
eastman = Listn.create!(artist:"Julius Eastman")
iso = Listn.create!(artist:"Iso Papasov")
eliane = Listn.create!(artist:"Eliane Radigue")
dm = Listn.create!(artist:"Depeche Mode")
smm = Listn.create!(artist:"Samla Mammas Manna", work: "Maltid", work_type: "Album")
Note.create!(body: "Goth Daddy Fugue", listn_id: dm.id)
Note.create!(body: "Severe!", listn_id: art_b_winter.id)
Note.create!(body: "Check out the evil 3", listn_id: eastman.id)
Note.create!(body: "Scratching the Surface with the Wedding Band", listn_id: iso.id)

