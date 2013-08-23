require "./contacts"
require "./database"


class CRM

  def initialize(name)
    @name = name
    puts "Okay, this CRM has the name " + name
  end

  def print_main_menu
    puts "[1] Add a new contact"
    puts "[2] Modify an existing contact"
    puts "[3] Delete a contact"
    puts "[4] Display all the contacts"
    puts "[5] Display an attribute" 
    puts "[6] Exit"
    puts "Enter a number: "
  end

  def main_menu
    print_main_menu
    user_selected = gets.to_i
    call_option(user_selected)
  end

  def call_option(user_selected)
    add_new_contact if user_selected == 1
    modify_existing_contact if user_selected == 2
    delete_contact if user_selected == 3
    display_all_contacts if user_selected == 4
    display_an_attribute if user_selected == 5
    exit if user_selected == 6
    # return main_menu
  end

  def add_new_contact
    print "Enter first Name:"
    first_name = gets.chomp
    print "Enter Last Name: "
    last_name = gets.chomp
    print "Enter Email Address: "
    email = gets.chomp
    print "Enter a Note: "
    note = gets.chomp
    contact = Contact.new(first_name, last_name, email, note)
    Database.add_contact(contact)
  end

  # def modify_existing_contact
  #   # print "Enter ID to modify"
  #   # modify_id = gets.chomp.to_i
  #   #   if modify_id == verfify_id
  # end

  def delete_contact
    print "Enter ID to delete"
    delete_id = gets.chomp.to_i
      if verify_id(delete_id)
          Database.contacts.each do |contact|
            if contact.id == delete_id
            end
          end
      end
  end

  def verify_id(id)
    Database.contacts.each do |contact|
      if contact.id == id
        puts "First Name:" +  contact.first_name
        puts "Last Name:" +  contact.last_name
        puts "Email:" +  contact.email
        puts "Note:" +  contact.note
        return true
      else
        return false
      end
    # if verify_id(id).include?
    end
  end
end

crm = CRM.new("Philip's CRM")
crm.main_menu
p Database.contacts
crm.verify_id(1000)