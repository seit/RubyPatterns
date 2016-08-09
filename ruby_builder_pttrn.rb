class Pattern
    attr_accessor :a
    attr_accessor :b

    def output
      puts a + b
    end
end

class PatternBuilder

  def initialize
    @pattern = Pattern.new
  end

  def setA(a)
    @pattern.a = a
  end

  def setB(b)
    @pattern.b = b
  end

  def build
    return @pattern
  end
end

builder = PatternBuilder.new
builder.setA('a')
builder.setB('b')
builder.build.output
