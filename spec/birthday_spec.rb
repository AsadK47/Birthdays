require 'birthday'

describe Birthday do
  subject(:birthday) { described_class.new }

  it 'can store a name along with a birthday' do
    expect(birthday.add("Asad", "23 June 1994")).to eq([{name: "Asad", birthday: "23 June 1994"}])
  end

  it 'can store 2 peoples names and birthdays' do
    birthday.add("Asad", "23 June 1994")
    expect(birthday.add("Glass", "12 December 1994")).to eq([{name: "Asad", birthday: "23 June 1994"}, {name: "Glass", birthday: "12 December 1994"}])
  end
end
