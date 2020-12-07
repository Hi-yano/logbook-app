require 'rails_helper'
describe Area do
  before do
    @area = FactoryBot.build(:area)
  end

  describe 'エリア情報入力' do
    context 'エリア情報入力がうまくいくとき' do
      it 'すべての情報があれば保存ができる' do
        expect(@area).to be_valid
      end
    end

    context 'エリア情報の入力がうまく行かないとき' do
      it '日付情報が空であること' do
        @area.dive_day = ''
        @area.valid?
        expect(@area.errors.full_messages).to include("Dive day can't be blank")
      end

      it '日付情報は半角英数字であること' do
        @area.dive_day = '２０２０-０２-０２'
        @area.valid?
        expect(@area.errors.full_messages).to include("Dive day is invalid")
      end

      it '地域情報が空だと保存できないこと' do
        @area.region = ''
        @area.valid?
        expect(@area.errors.full_messages).to include("Region can't be blank")
      end
    
      it '地域情報が空だと保存できないこと' do
        @area.entry_id = ''
        @area.valid?
        expect(@area.errors.full_messages).to include("Entry is not a number")
      end
    end
  end
end