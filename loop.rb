class Loop
  attr_accessor :count

  def loop_for_while
    if @count.respond_to?("each")
      total = 0
      @count.each do |each|
        total += each
        puts each
      end
      puts "total = #{total}"
    elsif @count.respond_to?("join")
      puts "#{@count.join("+")}"
      puts "#{@count.join("+")}"
    else
      puts "count = #{@count}"
    end
  end
end

def test
  loop = Loop.new
  loop.count = 10
  loop.loop_for_while

  loop.count = [1,2,3,4,5]
  loop.loop_for_while

  loop.count = 1...5
  loop.loop_for_while

  loop.count = [1,2,3,4,5]
  loop.loop_for_while
end

if __FILE__ == $0
  #test
  i=10
  #puts "#{i} is bigger than 5" unless i>5
  #MyClass.values = 10
  a = MyClass
  a.say
end

MyClass = Class.new do
  attr_accessor :values

  def say
    puts @values
  end
end
