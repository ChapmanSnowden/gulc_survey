def taken?(email)
  User.find_by_email(email)
end

