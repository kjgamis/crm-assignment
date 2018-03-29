require_relative 'contact.rb'

class CRM

  def initialize(name)
    @name = name

  end

  def main_menu
    while true # repeat indefinitely
    print_main_menu
    user_selected = gets.to_i
    call_option(user_selected)
    end
  end

  def print_main_menu
    puts '--------------------------------'
    puts '[1] Add a new contact'
    puts '[2] Modify an existing contact'
    puts '[3] Delete a contact'
    puts '[4] Display all the contacts'
    puts '[5] Search by attribute'
    puts '[6] Exit'
    puts '--------------------------------'

    puts "Enter a number"
  end

  def call_option(user_selected)
    case user_selected
     when 1 then add_new_contact
     when 2 then modify_existing_contact
     when 3 then delete_contact
     when 4 then display_all_contacts
     when 5 then search_by_attribute
     when 6 then exit
    end
  end

  def add_new_contact
    puts "Enter First Name:"
    first_name = gets.chomp

    puts "Enter Last Name:"
    last_name = gets.chomp

    puts "Enter Email Address:"
    email = gets.chomp

    puts "Enter a Note:"
    note = gets.chomp

    Contact.create(first_name, last_name, email, note)
  end

  def modify_existing_contact
    puts "Enter ID of contact"
    input_id = gets.chomp.to_i

    puts "Would you like to change first_name, last_name, or email?"
    attribute = gets.chomp

    puts "What is the new #{attribute}?"
    value = gets.chomp

    a = Contact.find(input_id)
    a.update(attribute, value)
  end

  def delete_contact
    puts "Enter ID of contact"
    input_id = gets.chomp.to_i

    a = Contact.find(input_id)
    a.delete
  end

  def display_all_contacts
    Contact.all.each do |user|
      puts "#{user.id}   #{user.first_name}   #{user.last_name}   #{user.email}   #{user.note}"
    end
  end

  def search_by_attribute
    puts "Would you like to find contact by first_name, last_name, or email?"
    attribute = gets.chomp

    puts "What is the #{attribute} of the contact you are looking for?"
    value = gets.chomp

    a = Contact.find_by(attribute, value)
    puts "#{a.id} #{a.first_name} #{a.last_name} #{a.email}"

  end

end

my_crm = CRM.new('crm_1')

my_crm.main_menu
