require 'rails_helper'
describe Tweet do
  before do
    @tweet = FactoryBot.build(:tweet)
  end

  describe 'エリア情報入力' do
    context 'エリア情報入力がうまくいくとき' do
      it 'すべての情報があれば保存ができる' do
        expect(@tweet).to be_valid
      end
    end

    context 'エリア情報の入力がうまく行かないとき' do
      it '日付情報が空であること' do
        @tweet.text = ''
        @tweet.valid?
        expect(@tweet.errors.full_messages).to include("Text can't be blank")
      end
    end
  end
end
