require 'rails_helper'
describe Logbook do
  before do
    @logbook = FactoryBot.build(:logbook)
  end

  describe 'ログ情報入力' do
    context 'ログ情報の入力がうまくいくとき' do
      it 'すべての情報があれば保存ができる' do
        expect(@logbook).to be_valid
      end
    end

    context 'ログ情報の入力がうまくいかないとき' do
      it 'エントリータイム情報が空であること' do
        @logbook.entry_time = ''
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Entry time can't be blank")
      end

      it 'エントリータイム情報が半角数字であること' do
        @logbook.entry_time = '１２３あいう'
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Entry time can't be blank")
      end

      it 'エキジットタイム情報が空であること' do
        @logbook.exit_time = ''
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Exit time can't be blank")
      end

      it 'エキジットタイム情報が半角数字であること' do
        @logbook.exit_time = '１２３あいう'
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Exit time can't be blank")
      end


      it 'テキスト情報が空であること' do
        @logbook.text = ''
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Text can't be blank")
      end

      it 'ポイント情報が空であること' do
        @logbook.point = ''
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Point can't be blank")
      end

      it 'スタート残圧の情報が空であること' do
        @logbook.start_air = ''
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Start air can't be blank")
      end

      it 'スタート残圧の情報が半角数字でないこと' do
        @logbook.start_air = 'あいう１２３'
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Start air is not a number")
      end

      it 'エキジット残圧の情報が空であること' do
        @logbook.finish_air = ''
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Finish air can't be blank")
      end

      it 'エキジット残圧の情報が半角数字でないこと' do
        @logbook.finish_air = 'あいう１２３'
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Finish air is not a number")
      end

      it '最大水深情報が空であること' do
        @logbook.max_depth = ''
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Max depth can't be blank")
      end

      it '最大水深の情報が半角数字でないこと' do
        @logbook.max_depth = 'あいう１２３'
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Max depth is not a number")
      end

      it '平均水深の情報が空であること' do
        @logbook.ave_depth = ''
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Ave depth can't be blank")
      end

      it '平均水深の情報が半角数字でないこと' do
        @logbook.ave_depth = 'あいう１２３'
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Ave depth is not a number")
      end

      it 'カウントの情報が空であること' do
        @logbook.count = ''
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Count can't be blank")
      end

      it 'カウントの情報が半角数字でないこと' do
        @logbook.count = 'あいう１２３'
        @logbook.valid?
        expect(@logbook.errors.full_messages).to include("Count is not a number")
      end
    end
  end
end
