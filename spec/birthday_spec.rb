require 'birthday'

describe Birthday do
  subject(:birthday) { described_class.new }

  it 'can store a name along with a birthday' do
    expect(birthday.add("Leonardo", "11 November 1974")).to eq([{name: "Leonardo", birthday: "11 November 1974"}])
  end

  it 'can store 2 peoples names and birthdays' do
    birthday.add("Leonardo", "11 November 1974")
    expect(birthday.add("Glass", "12 December 1994")).to eq([{name: "Leonardo", birthday: "11 November 1974"}, {name: "Glass", birthday: "12 December 1994"}])
  end

  it 'can print the birthdays' do
    birthday.add("Leonardo", "11 November 1974")
    birthday.add("Glass", "12 December 1994")
    expect { birthday.show }.to output("Leonardo: 11 November 1974\n"\
      "Glass: 12 December 1994\n").to_stdout
  end
end
