module Features
  module SessionHelpers
    def sign_in_as(user)
      visit sign_in_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign in'
    end

    def sign_in
      user = create(:user)
      visit sign_in_path
      fill_in 'Email', with: user.email
      fill_in 'Password', with: user.password
      click_button 'Sign in'
    end

    def sign_out
      click_link I18n.t('layouts.application.sign_out')
    end
  end
end
