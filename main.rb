require './lib/gallow'
require './lib/dictionary'
require './lib/game'

word=Dictionary.new.takeWord
gal=Gallows.new(word)
gal.gallows!
game=Game.new(gal)

until game.over?
  chose=gets.chomp
  gal.takeLatter(chose)
end

puts game.answer
