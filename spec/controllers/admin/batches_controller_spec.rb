# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Admin::BatchesController, type: :controller do
  context 'signed in as admin' do
    let(:property) { FactoryBot.create(:property_with_rates) }
    let(:admin_user) { FactoryBot.create(:admin_user, council: property.council) }

    before { sign_in admin_user }

    describe '#create' do
      let!(:rebate_forms) { FactoryBot.create_list(:processed_form, 3, property: property) }

      it 'creates a batch' do
        expect(Batch.count).to eq 0
        post :create, params: { ids: rebate_forms.map(&:id) }
        expect(Batch.count).to eq 1
        expect(RebateForm.first.batch_id).to eq Batch.first.id
        expect(RebateForm.second.batch_id).to eq Batch.first.id
        expect(RebateForm.third.batch_id).to eq Batch.first.id
      end
    end
  end
end
