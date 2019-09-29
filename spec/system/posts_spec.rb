require 'rails_helper'

describe '査定データ管理機能', type: :system do
  describe '一覧表示機能' do
    before do
      user_a = FactoryBot.create(:user, name: 'ユーザA', email: 'a@example.com')
    end

    context 'ユーザAがログインしている時' do
      before do
        visit login_path
        fill_in 'session[email]', with: 'a@example.com'
        fill_in 'session[password]', with: 'password'
        click_button 'ログインする'
      end

      before do
        fill_in 'post[client_name]', with: 'toshiakifurukawa'
        fill_in 'post[email]', with: 'test@example.com'
        fill_in 'post[phone_number]', with: '09049389103'
        fill_in 'post[near_station]', with: '江古田'
        fill_in 'post[parking_address]', with: '東京都練馬区豊玉北2-12-4'
        click_button '確認する'
      end

      it '登録確認画面が表示される' do
        expect(page).to have_content '登録内容の確認'
      end
    end
  end
end