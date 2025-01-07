require_relative 'main'

RSpec.describe 'Caesar Cipher' do

  it 'shifts letter by given number' do
    expect(caesar_cipher("What a string!", 5)).to eq('Bmfy f xywnsl!')
  end


  it 'wraps around alphabet' do
    expect(caesar_cipher('Zebra', 2)).to eq('Bgdtc')
  end


  it 'maintains non alphabetic characters' do
    expect(caesar_cipher('Hello, World!', 3)).to eq('Khoor, Zruog!')
  end


  it 'handles negative shifts' do
    expect(caesar_cipher('Khoor, Zruog!', -3)).to eq('Hello, World!')
  end


  it 'handles large shifts' do
    expect(caesar_cipher('abc', 29)).to eq('def')
  end

end