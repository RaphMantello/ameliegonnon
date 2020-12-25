require "open-uri"

puts 'launching seed...'

puts 'cleaning database:'
ComponentPhoto.destroy_all
Artwork.destroy_all
Exposition.destroy_all
puts 'database clean'

description = "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte."

puts 'creation of expositions:'
contrasteExpo = Exposition.new(name: 'Contraste', description: description)
file = URI.open('https://res.cloudinary.com/dbgvvj1l3/image/upload/v1608065258/Oeuvre-9-1_kzzrvq.jpg')
contrasteExpo.photos.attach(io: file, filename: 'mélancolie', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dbgvvj1l3/image/upload/v1608065256/Oeuvre-11-3_ihm2rn.jpg')
contrasteExpo.photos.attach(io: file, filename: 'identité_multiple_3', content_type: 'image/jpg')
file = URI.open('https://res.cloudinary.com/dbgvvj1l3/image/upload/v1608065242/Oeuvre-3-1_av4kcu.jpg')
contrasteExpo.photos.attach(io: file, filename: 'tournées_vers_l_avenir_3', content_type: 'image/jpg')
contrasteExpo.save!
puts 'expositions created!'

puts 'creation of artworks:'
aw1 = Artwork.new(name: "identité multiple", description: description)
file = URI.open('https://res.cloudinary.com/dbgvvj1l3/image/upload/v1608064602/Art_Gallery_Mockup_Oeuvres1-1_pcvkmr.jpg')
aw1.photo.attach(io: file, filename: "identité_multiple", content_type: 'image/jpg')
aw1.exposition = contrasteExpo
aw1.save!
aw2 = Artwork.new(name: "tourné·e·s vers l'avenir", description: description)
file = URI.open('https://res.cloudinary.com/dbgvvj1l3/image/upload/v1608064601/Art_Gallery_Mockup_Oeuvres2_1-_ma3gfx.jpg')
aw2.photo.attach(io: file, filename: "tournées_vers_l_avenir", content_type: 'image/jpg')
aw2.exposition = contrasteExpo
aw2.save!
puts 'artworks created!'

puts 'creation of component photos:'
cp1 = ComponentPhoto.new(name: 'indentité multiple - cp1')
file = URI.open('https://res.cloudinary.com/dbgvvj1l3/image/upload/v1608065256/Oeuvre-11-3_ihm2rn.jpg')
cp1.photos.attach(io: file, filename: "identité_multiple_cp1_1")
cp1.artwork = Artwork.all.first
cp1.save!
puts 'component photo created!'
