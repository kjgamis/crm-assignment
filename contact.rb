gem 'activerecord', '=4.2.10'
require 'active_record'
require 'mini_record'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'crm.sqlite3')

class Contact < ActiveRecord::Base

  field :first_name, as: :string
  field :last_name, as: :string
  field :email, as: :string
  field :note, as: :string

  # @@contacts = []
  # @@next_id = 0
  #
  # # This method should initialize the contact's attributes
  # def initialize(first_name, last_name, email, note = 'N/A')
  #   @first_name = first_name
  #   @last_name = last_name
  #   @email = email
  #   @note = note
  #   @id = @@next_id += 1
  # end
  #
  # def first_name
  #   @first_name
  # end
  #
  # def last_name
  #   @last_name
  # end
  #
  # def email
  #   return @email
  # end
  #
  # def note
  #   @note
  # end
  #
  # def note=(note)
  #   @note = note
  # end
  #
  # def id
  #   @id
  # end
  #
  # def first_name=(first_name)
  #   @first_name = first_name
  # end
  #
  # def last_name=(last_name)
  #   @last_name = last_name
  # end
  #
  # def email=(email)
  #   @email = email
  # end
  #
  # # This method should call the initializer,
  # # store the newly created contact, and then return it
  # def self.create(first_name, last_name, email, note = 'N/A')
  #   new_contact = Contact.new(first_name, last_name, email, note)
  #   @@contacts.push(new_contact)
  #   return new_contact
  # end
  #
  # # This method should return all of the existing contacts
  # def self.all
  #   @@contacts
  # end
  #
  # # This method should accept an id as an argument
  # # and return the contact who has that id
  # def self.find(id)
  #   @@contacts.each do |person|
  #     if person.id == id
  #       return person
  #     end
  #   end
  # end
  #
  # # This method should allow you to specify
  # # 1. which of the contact's attributes you want to update
  # # 2. the new value for that attribute
  # # and then make the appropriate change to the contact
  # def update(attribute, value)
  #
  #   if attribute == 'first_name'
  #     self.first_name = value
  #   elsif attribute == 'last_name'
  #     self.last_name = value
  #   elsif attribute == 'email'
  #     self.email = value
  #   end
  #
  # end
  #
  # # This method should work similarly to the find method above
  # # but it should allow you to search for a contact using attributes other than id
  # # by specifying both the name of the attribute and the value
  # # eg. searching for 'first_name', 'Betty' should return the first contact named Betty
  # def self.find_by(attribute, value)
  #
  #   if attribute == 'first_name'
  #     @@contacts.each do |person|
  #       if person.first_name == value
  #         return person
  #       end
  #     end
  #   elsif attribute == 'last_name'
  #     @@contacts.each do |person|
  #       if person.last_name == value
  #         return person
  #       end
  #     end
  #   elsif attribute == 'email'
  #     @@contacts.each do |person|
  #       if person.email == value
  #         return person
  #       end
  #     end
  #   end
  #
  # end
  #
  # # This method should delete all of the contacts
  # def self.delete_all
  #   @@contacts.each do |person|
  #     @@contacts.delete(person)
  #   end
  # end
  #
  def full_name
    "#{first_name} #{last_name}"
  end
  #
  # # This method should delete the contact
  # # HINT: Check the Array class docs for built-in methods that might be useful here
  # def delete
  #   @@contacts.each do |person|
  #     if person == self
  #       @@contacts.delete(self)
  #     end
  #   end
  # end

end
#
# karen  = Contact.create('Karen',  'Gamis', 'kjgamis@live.ca',  'plays guitar')
# ernest = Contact.create('Ernest', 'Gamis', 'egamis@gmail.com', 'likes sports')
# candis = Contact.create('Candis', 'Hollyman', 'candishollyman@gmail.com')

# puts karen.id

# puts Contact.all.inspect

# puts candis.id

# puts Contact.find(2).inspect

# puts Contact.find_by('first_name', 'Karen')
# puts Contact.find_by('last_name', 'Gamis')
# puts Contact.find_by('email', 'kjgamis@live.ca')

# puts Contact.all.inspect

# Contact.delete_all

# karen.delete

# puts Contact.all.inspect

# puts karen.full_name

# karen.update('first_name', 'Jane')

# puts karen.inspect
