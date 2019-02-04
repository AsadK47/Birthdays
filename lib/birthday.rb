class Birthday
  def initialize
    @list = []
  end

  def add(name, birthdate)
    @list << { name: name, birthday: birthdate }
  end
end
