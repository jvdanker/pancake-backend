# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'RebateForm', type: :feature do
  let!(:rebate_form) { FactoryBot.create :rebate_form }

  context 'signed in as dia' do
    let(:user) { FactoryBot.create :admin_user }

    before { login_as(user, scope: :user) }

    it ' Can see rebate forms' do
      visit '/admin/rebate_forms'
      fill_in 'name', with: rebate_form.fields['full_name']
      click_button 'SEARCH'
      expect(page).to have_text(rebate_form.fields['full_name'])

      # show the form
      click_link 'right-arrow'
      expect(page).to have_text(rebate_form.fields['full_name'])
    end
  end

  context 'signed in as council' do
    let(:user) { FactoryBot.create :user, council_id: rebate_form.property.council_id }

    before { login_as(user, scope: :user) }

    it ' Can see rebate forms' do
      visit '/admin/rebate_forms'
      fill_in 'name', with: rebate_form.fields['full_name']
      click_button 'SEARCH'
      expect(page).to have_text(rebate_form.fields['full_name'])

      # show the form
      click_link 'right-arrow'
      expect(page).to have_text(rebate_form.fields['full_name'])
    end
  end
end
