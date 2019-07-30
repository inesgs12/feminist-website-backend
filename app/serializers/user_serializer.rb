class UserSerializer < ActiveModel::Serializer
  attributes :id, :username, :first_name, :last_name, :photo, :bio, :password_digest, :favourite_books, :favourite_authors, :favourite_theories

  def favourite_books
    self.object.books
  end
  def favourite_authors
    self.object.authors
  end
  def favourite_theories
    self.object.theories
  end
end
