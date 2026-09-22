class Attendee
  def initialize(height)
    @height = height
  end

  def issue_pass!(pass_id)
    @pass_id = pass_id
  end

  def revoke_pass!
    @pass_id = nil
  end

  # Do not edit above methods, add your own methods below.

  def has_pass?
   if @pass_id == nil
    return false
   else 
    return true
   end 
  end

  def fits_ride?(ride_minimum_height)
    if ride_minimum_height <= @height
    return true
    else 
     return false
    end
  end

  def allowed_to_ride?(ride_minimum_height)
    if ride_minimum_height <= @height and @pass_id == nil
    return false
    elsif ride_minimum_height <= @height and  @pass_id != nil
    return true
    elsif ride_minimum_height >= @height and  @pass_id != nil
    return false
    elsif ride_minimum_height >= @height and  @pass_id == nil
    return false
    end
  end
end



attendde = Attendee.new(100)
attendde.issue_pass!(1)
attendde.has_pass?
Attendee.new(140).fits_ride?(100)

attendde.allowed_to_ride?(100)



attendee = Attendee.new(100)
attendee.issue_pass!(1)
attendee.allowed_to_ride?(120)


