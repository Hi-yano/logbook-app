require 'rails_helper'
describe Condition do
  before do
    @condition = FactoryBot.build(:condition)
  end

  describe 'コンディション情報入力' do
    context 'コンディション情報の入力がうまくいくとき' do
      it 'すべての情報があれば保存ができる' do
        expect(@condition).to be_valid
      end
    end

    context 'コンディション情報の入力がうまく行かないとき' do
      it '天気情報が空であること' do
        @condition.weather = ''
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Weather can't be blank")
      end

      it '天気情報が空でないこと' do
        @condition.weather = ''
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Weather can't be blank")
      end

      it '波の情報が空でないこと' do
        @condition.wave = ''
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Wave can't be blank")
      end

      it '波の情報が半角数字であること' do
        @condition.wave = '１２３あいう'
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Wave is not a number")
      end

      it '風の情報が空で無いこと' do
        @condition.wind = ''
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Wind can't be blank")
      end

      it '波の情報が半角数字であること' do
        @condition.wind = '１２３あいう'
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Wind is not a number")
      end

      it '気温の情報が空で無いこと' do
        @condition.temperature = ''
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Temperature can't be blank")
      end

      it '気温の情報が半角数字であること' do
        @condition.temperature = '１２３あいう'
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Temperature is not a number")
      end

      it '水温の情報が空で無いこと' do
        @condition.water_temperature = ''
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Water temperature can't be blank")
      end

      it '水温の情報が半角数字であること' do
        @condition.water_temperature = '１２３あいう'
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Water temperature is not a number")
      end

      it '潮流の情報が空で無いこと' do
        @condition.tide_id = '1'
        @condition.valid?
        expect(@condition.errors.full_messages).to include("Tide must be other than 1")
      end
    end
  end
end

