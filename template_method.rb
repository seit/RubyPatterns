class AbstractClass
  def proc_a
    raise "Called abstract method: a"
  end

  def proc_b
    raise "Called abstract method: b"
  end

  def proc_c
    raise "Called abstract method: c"
  end

  def work
    proc_a()
    proc_b()
    proc_c()
  end
end

class SubClass < AbstractClass

  def proc_a
    puts "This is procA"
  end

  def proc_b
    puts "This is procB"
  end

  def proc_c
    puts "This is procC"
  end
end

abstract = SubClass.new
abstract.work
