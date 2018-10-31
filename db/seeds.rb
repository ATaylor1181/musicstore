# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Category.delete_all
Subcategory.delete_all


string_instrument = Category.create( family: "String")
Subcategory.create(instrument: "Banjo", category_id: string_instrument.id)
Subcategory.create(instrument: "Cello", category_id: string_instrument.id)
Subcategory.create(instrument: "Cittern", category_id: string_instrument.id)
Subcategory.create(instrument: "Guitar", category_id: string_instrument.id)
Subcategory.create(instrument: "Harp", category_id: string_instrument.id)
Subcategory.create(instrument: "Lute", category_id: string_instrument.id)
Subcategory.create(instrument: "Upright Bass", category_id: string_instrument.id)
Subcategory.create(instrument: "Viola", category_id: string_instrument.id)
Subcategory.create(instrument: "Violin", category_id: string_instrument.id)


wood_wind = Category.create( family: "Woodwind")
Subcategory.create(instrument: "Clarinet", category_id: wood_wind.id)
Subcategory.create(instrument: "Flute", category_id: wood_wind.id)
Subcategory.create(instrument: "Oboe", category_id: wood_wind.id)
Subcategory.create(instrument: "Pipe", category_id: wood_wind.id)
Subcategory.create(instrument: "Recorder", category_id: wood_wind.id)
Subcategory.create(instrument: "Reeds", category_id: wood_wind.id)
Subcategory.create(instrument: "Saxophone", category_id: wood_wind.id)


percussion = Category.create( family: "Percussion")
Subcategory.create(instrument: "Acoustic Drum Set", category_id: percussion.id)
Subcategory.create(instrument: "Bells", category_id: percussion.id)
Subcategory.create(instrument: "Cymbals", category_id: percussion.id)
Subcategory.create(instrument: "Castanets", category_id: percussion.id)
Subcategory.create(instrument: "Congas", category_id: percussion.id)
Subcategory.create(instrument: "Electric Drum Set", category_id: percussion.id)
Subcategory.create(instrument: "Frame Drums", category_id: percussion.id)
Subcategory.create(instrument: "Hand Drums", category_id: percussion.id)
Subcategory.create(instrument: "Maracas", category_id: percussion.id)
Subcategory.create(instrument: "Xylophone", category_id: percussion.id)



brass = Category.create( family: "Brass")
Subcategory.create(instrument: "Bugle", category_id: brass.id)
Subcategory.create(instrument: "Cornet", category_id: brass.id)
Subcategory.create(instrument: "Euphonium", category_id: brass.id)
Subcategory.create(instrument: "Flugelhorn", category_id: brass.id)
Subcategory.create(instrument: "Helicon", category_id: brass.id)
Subcategory.create(instrument: "Horn", category_id: brass.id)
Subcategory.create(instrument: "Mellophone", category_id: brass.id)
Subcategory.create(instrument: "Trombone", category_id: brass.id)
Subcategory.create(instrument: "Trumpet", category_id: brass.id)
Subcategory.create(instrument: "Tuba", category_id: brass.id)


keyboard = Category.create( family: "Keyboard")
Subcategory.create(instrument: "Accordions & Concertinas", category_id: keyboard.id)
Subcategory.create(instrument: "Harpsichord", category_id: keyboard.id)
Subcategory.create(instrument: "Keyboard", category_id: keyboard.id)
Subcategory.create(instrument: "Piano", category_id: keyboard.id)
Subcategory.create(instrument: "Sound Synthesizers", category_id: keyboard.id)