# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController do
  describe 'PATCH #update' do
    subject { patch user_path(user), params: params }
    let(:user) { FactoryBot.create(:user) }

    let(:params) { { name: name } }
    let(:name) { 'Bob' }

    context 'Success' do
      it '名前が正しく変更されている' do
        expect { subject }
          .to change { user.reload.name }.from('Alice').to('Bob')
      end
    end
  end
end
