class Birthday
  def initialize
    @list = []
  end

  def add(name, birthdate)
    @list << { name: name, birthday: birthdate }
  end

  def show
    @list.each do |hash|
      puts "#{hash[:name]}: #{hash[:birthday]}"
    end
  end
end
