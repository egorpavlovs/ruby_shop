class ProductPolicy
	def initialize(user)
		@user = user
	end
	def destroy?
		user.role == "administrator"

	end
end
