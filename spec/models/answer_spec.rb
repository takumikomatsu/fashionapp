require 'rails_helper'

RSpec.describe Answer, type: :model do
  before do
    @answer = FactoryBot.build(:answer)
  end
  describe '新規回答登録' do
    context '新規回答登録できるとき' do
      it 'image, text, user_id, request_idがあれば登録できる' do
        expect(@answer).to be_valid
      end
    end
    context '新規回答登録できないとき' do
      it 'imageが空だと登録できない' do
        @answer.image = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include "Image can't be blank"
      end
      it 'textが空だと登録できない' do
        @answer.text = ''
        @answer.valid?
        expect(@answer.errors.full_messages).to include "Text can't be blank"
      end
      it 'userが紐づいていないと登録できない' do
        @answer.user = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include 'User must exist'
      end
      it 'requestが紐づいていないと登録できない' do
        @answer.request = nil
        @answer.valid?
        expect(@answer.errors.full_messages).to include 'Request must exist'
      end
    end
  end
end
