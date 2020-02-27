require 'item'

describe Item do
  describe '#initialize' do
    it 'is instantiated with 3 attributes' do
      items = [Item.new(name = 'cheese', sell_in = 3, quality = 4)]
      expect(items[0].name).to eq('cheese')
      expect(items[0].sell_in).to eq(3)
      expect(items[0].quality).to eq(4)
    end
  end

  describe '#to_s' do
    it 'changes the attributes into a string' do
      items = [Item.new(name = 'cheese', sell_in = 3, quality = 4)]
      expect(items[0].to_s).to eq 'cheese, 3, 4'
    end
  end
    
end
  