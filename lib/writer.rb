class Writer
  attr_accessor :name, :novel, :theme, :influences

  def initialize
    @influences = []
  end 

  def add_influence(influence)
    @influences << influence
  end

  def influences
    @influences
  end

end