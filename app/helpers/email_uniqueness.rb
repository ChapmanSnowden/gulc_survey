#CODE REVEIW - This is validation, move to user model

def taken?(email)
  User.find_by_email(email)
end

