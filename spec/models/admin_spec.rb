require 'rails_helper'

RSpec.describe Admin, type: :model do
  context 'validation tests' do
    it 'username is not empty' do
      admin = Admin.new(email: "me@domain.com").save
      expect(admin).to eq(false)
    end

    it 'username is not spaces only' do
      admin = Admin.new(username: "    ", email: "me@domain.com").save
      expect(admin).to eq(false)
    end

    it 'email is not empty' do
      admin = Admin.new(username: "Username").save
      expect(admin).to eq(false)
    end

    it 'email is correctly formated' do
      admin = Admin.new(username: "First", email: "me.domain.com").save
      admin = Admin.new(username: "First", email: "me@domaincom").save
      expect(admin).to eq(false)
    end

    it 'admin is correctly saved' do
      admin = Admin.new(username: "First", email: "me@domain.com").save
      expect(admin).to eq(true)
    end

  end
end
