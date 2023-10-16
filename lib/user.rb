class User
  attr_accessor :email, :age
  @@all_users = [] # Variable de classe pour stocker tous les utilisateurs créés
  
  def initialize(email, age)
    @email = email
    @age = age
    @@all_users << self # Ajoute le nouvel utilisateur à @@all_users
  end
  
  def self.all
    @@all_users # Retourne l'array contenant tous les utilisateurs
  end

  def self.find_by_email(email)
    @@all_users.find { |user| user.email == email }
  end
end