require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a name, email, password"
  it "is invalid without a name "
  it "is invalid without an email address "
  it "is invalid without a password"
  it "is invalid with a duplicate name"
  it "is invalid with an duplicate email address"
end