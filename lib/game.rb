class Game
  attr_reader :answer
  def initialize  gal
    @over=false
    @gal=gal
    @answer=nil
  end
  def over?
   if @gal.n==0
     @over=true
     @answer="YYou lose! Hahaha!!!"
   elsif @gal.length==0
     @over=true
     @answer="You win!"
   end
    @over
  end
end