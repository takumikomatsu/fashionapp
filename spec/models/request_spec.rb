require 'rails_helper'

RSpec.describe Request, type: :model do
  before do
    @request = FactoryBot.build(:request)
  end
  describe '新規リクエスト登録' do
    context '新規リクエスト登録できるとき' do
      it 'sex_id, text, user_idがあれば新規登録できる' do
        expect(@request).to be_valid
      end
    end
    context '新規リクエスト登録できないとき' do
      it 'sex_idが1だと登録できない' do
        @request.sex_id = 1
        @request.valid?
        expect(@request.errors.full_messages).to include "Sex can't be blank"
      end
      it 'textが空だと登録できない' do
        @request.text = ''
        @request.valid?
        expect(@request.errors.full_messages).to include "Text can't be blank"
      end
      it 'userが紐づいていないと登録できない' do
        @request.user = nil
        @request.valid?
        expect(@request.errors.full_messages).to include 'User must exist'
      end
    end
  end
end
