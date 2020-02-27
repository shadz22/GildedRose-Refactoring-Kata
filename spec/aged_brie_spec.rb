require 'gilded_rose'
require 'item'

describe "Aged Brie" do
  # let (:subject) { GildedRose.new(items) }

  it 'quality increases by 1 after each day' do
    items = [Item.new(name="Aged Brie", sell_in=12, quality=5)]
    subject = GildedRose.new(items)
    subject.update_quality
    expect(items[0].quality).to eq 6
  end

  it 'quality increases by 2 when sell_in is less than 10' do
    items = [Item.new(name="Aged Brie", sell_in=8, quality=10)]
    subject = GildedRose.new(items)
    4.times {subject.update_quality}
    expect(items[0].quality).to eq 14
  end

  it 'the quality will never be more than 50' do
    items = [Item.new(name="Aged Brie", sell_in=8, quality=50)]
    subject = GildedRose.new(items)
    subject.update_quality
    expect(items[0].quality).to eq 50
    
  end
end