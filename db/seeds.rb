puts 'launching seed...'

puts 'cleaning database:'
Exposition.destroy_all
puts 'database clean'

description = "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte."

puts 'creation of expositions:'
repereExpo = Exposition.new(name: 'Repère', description: description)
repereExpo.save!
contrasteExpo = Exposition.new(name: 'Contraste', description: description)
contrasteExpo.save!
puts 'expositions created!'

puts 'creation of artworks:'
aw1 = Artwork.new(name: "Tourné•e•s vers l'avenir", description: description)
aw1.exposition = repereExpo
aw1.save!
aw1 = Artwork.new(name: "Identité multiple", description: description)
aw1.exposition = repereExpo
aw1.save!
aw1 = Artwork.new(name: "Mélancolie", description: description)
aw1.exposition = repereExpo
aw1.save!
aw1 = Artwork.new(name: "D'angoisse est ma crise", description: description)
aw1.exposition = contrasteExpo
aw1.save!
aw1 = Artwork.new(name: "Harmonie", description: description)
aw1.exposition = contrasteExpo
aw1.save!
aw1 = Artwork.new(name: "Évolution, altération", description: description)
aw1.exposition = contrasteExpo
aw1.save!
puts 'artworks created!'
