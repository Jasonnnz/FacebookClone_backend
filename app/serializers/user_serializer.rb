class UserSerializer < ActiveModel::Serializer
  attributes :id, :f_name, :l_name, :email, :dob, :following, :followers

  has_many :comments
  has_many :posts
end
