module SessionsHelper

	def sign_in(timekeeper)
	    cookies.permanent.signed[:remember_token] = [timekeeper.login, timekeeper.password]
  	end

	def signed_in?
		return false if cookies.signed[:remember_token].nil?

		if Timekeeper.authenticate_with_encrypted_password(cookies.signed[:remember_token].first,
									   cookies.signed[:remember_token].second).nil? then
			return Member.authenticate_with_encrypted_password(cookies.signed[:remember_token].first,
									   cookies.signed[:remember_token].second)
		else

			return Timekeeper.authenticate_with_encrypted_password(cookies.signed[:remember_token].first,
									   cookies.signed[:remember_token].second)

		end
		authenticate_with_encrypted_password
	end

	def sign_out
	    cookies.delete(:remember_token)
  	end
end
