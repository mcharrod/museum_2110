class Museum
  attr_reader :name, :exhibits
  def initialize(name)
    @name = name
    @exhibits = []
  end

  def add_exhibit(exhibit)
    @exhibits.push(exhibit)
  end


  def recommend_exhibits(patron)
    exhibits.find_all do |exhibit|
      patron.interests.include? exhibit.name
      end
    end
  end
