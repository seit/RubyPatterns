class Factory
  def self.getProduct(flg)
     if flg == 0
       AProductClass.new
     elsif flg == 1
       BProductClass.new
     end
  end
end

class  ProductClass
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

class AProductClass < ProductClass
  def proc_a
    puts "This is procA of AProductClass"
  end

  def proc_b
    puts "This is procB of AProductClass"
  end

  def proc_c
    puts "This is procC of AProductClass"
  end
end

class BProductClass < ProductClass
  def proc_a
    puts "This is procA of BProductClass"
  end

  def proc_b
    puts "This is procB of BProductClass"
  end

  def proc_c
    puts "This is procC of BProductClass"
  end
end

factoryClass = Factory.getProduct(0)
factoryClass.work
