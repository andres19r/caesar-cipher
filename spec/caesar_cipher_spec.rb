# frozen_string_literal: true

require '../lib/caesar_cipher'

describe 'caesar_cipher method' do
  it 'returns a new string' do
    cipher = caesar_cipher('What a string!', 5)
    result = 'Bmfy f xywnsl!'
    expect(cipher).to eql(result)
  end
  it 'returns with the same case' do
    cipher = caesar_cipher('WhAT A StRinG!', 5)
    result = 'BmFY F XyWnsL!'
    expect(cipher).to eql(result)
  end
end
