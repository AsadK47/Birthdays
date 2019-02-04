require 'birthday'

describe Birthday do
  subject(:birthday) { described_class.new }

  it 'can store a name along with a birthday' do
    expect(birthday.add("Asad", "23 June 1994")).to eq([{name: "Asad", birthday: "23 June 1994"}])
  end
end
