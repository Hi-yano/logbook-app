require 'rails_helper'
describe Item do
  before do
    @item = FactoryBot.build(:item)
  end

  describe '装備品情報入力' do
    context '装備品情報の入力がうまくいくとき' do
      it 'すべての情報があれば保存ができる' do
        expect(@item).to be_valid
      end
    end

    context '装備品情報の入力がうまくいかないとき' do
      it 'スーツの厚み情報が空であること' do
        @item.thickness = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Thickness can't be blank")
      end

      it 'スーツの厚み情報が半角数字であること' do
        @item.thickness = '１２３あいう'
        @item.valid?
        expect(@item.errors.full_messages).to include("Thickness is not a number")
      end

      it 'ウエイト情報が空であること' do
        @item.weight = ''
        @item.valid?
        expect(@item.errors.full_messages).to include("Weight can't be blank")
      end

      it 'ウエイト情報が半角数字であること' do
        @item.weight = '１２３あいう'
        @item.valid?
        expect(@item.errors.full_messages).to include("Weight is not a number")
      end

      it 'スーツタイプが１であること' do
        @item.suitstype_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Suitstype must be other than 1")
      end

      it 'タンク容量が１であること' do
        @item.capacity_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Capacity must be other than 1")
      end

      it 'タンクタイプが１であること' do
        @item.type_id = '1'
        @item.valid?
        expect(@item.errors.full_messages).to include("Type must be other than 1")
      end
    end
  end
end
