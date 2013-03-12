class Gallows
  attr_reader :n, :length
  def initialize word
    @a=['/','/','\\','\\','---','---','|','|']
    @word=word.to_s
    @length=@word.length
    @word_ch=["__ "]*@length
    @n=5

  end

  def gallows!
    puts "
    ________________
   / \\              |
   \\ /              |
    |               |
 #{@a[4]}-#{@a[5]}            |
    #{@a[6]}               |
    #{@a[7]}               |
   #{@a[1]} #{@a[3]}              |
  #{@a[0]}   #{@a[2]}             |
              ______|_____

   "
   print "    "
   @word_ch.each {|x| print   x  }
    puts ""
  end

  def takeLatter c
    i=0
    if @word.count(c)
      @word.each_char do |letter|
        if letter==c
          @word_ch[i]=" #{c} "
          @length-=1
        end
        i+=1
      end
    end
   if @word.count(c)==0
    begin
      if @n==5
        @a[0]=' '
        @a[1]=' '
      elsif @n==4
        @a[2]=" "
        @a[3]=" "
      elsif @n==3
        @a[4]="   "
      elsif @n==2
        @a[5]="   "
      elsif @n==1
        @a[6]=" "
        @a[7]=" "
      end
      @n-=1
    end
    end
    gallows!
  end

end


