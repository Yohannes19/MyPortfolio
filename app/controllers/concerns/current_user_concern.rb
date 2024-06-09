module CurrentUserConcern
 extend ActiveSupport::Concern
  def current_user
    super || guest_user
  end

   def guest_user
    OpenStruct.new(name:"Guest nehs",
                   first_name:"Guest",
                   last_name: "User",
                   email:"yohann@yohan.com")
   end
end