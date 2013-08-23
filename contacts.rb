


class Contact

  attr_accessor :id, :first_name, :last_name, :email, :note # creates method called id

  # def id
    # return @id
  #end
  
  # def id
    # return @id=new_id
  #end

  def initialize(first_name, last_name, email, note)
    @first_name = first_name
    @last_name = last_name
    @email = email
    @note = note
  end


end

