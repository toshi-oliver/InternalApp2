require 'rails_helper'

describe '査定データ管理機能', type: :system do
  describe '一覧表示機能'　do
    before do
      user_a = FactoryBot.create(:user, name: 'ユーザA', email: 'a@example.com')
      FactoryBot.create(:post, name: '最初のクライアント', user: user_a)
    end

    content 'ユーザAがログインしている時' do
      before do
      visit login_path
      fill_in 'メールアドレス', with: 'a@example.com'
      fill_in 'パスワード(8文字以上)', with: 'password'
      click_button 'ログインする'
      end

    it 'ユーザーAが登録した査定データが表示される'
      expect(page).to have_content '最初のクライアント'
    end
  end
end
