# frozen_string_literal: true

require 'rails_helper'

RSpec.describe UsersController do
  let(:user) { FactoryBot.create(:user) }

  let(:params) do
    {
      user: {
        name: name,
        email: email,
        password: password
      }
    }
  end

  describe 'PATCH #update' do
    subject { patch user_path(user), params: params }

    context 'Success' do
      let(:name) { 'Bob' }
      let(:email) { 'bob@example.com' }
      let(:password) { 'new_password' }

      it '名前が正しく変更されている' do
        expect { subject }
          .to change { user.reload.name }.from('Alice').to('Bob')
          .and change { user.reload.email }.from('alice@example.com').to('bob@example.com')
          .and change { user.reload.password }.from('password').to('new_password')
      end
    end
  end
end
