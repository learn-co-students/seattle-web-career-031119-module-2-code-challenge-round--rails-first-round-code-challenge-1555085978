class VendorSweetsController < ApplicationController
	def new
		@vendorsweet = VendorSweet.new
	end

	# def index
	# 	@vendorsweets = VendorSweet.all
	# end

	def create
		@vendorsweet = VendorSweet.new(vendor_sweet_params)
			@vendorsweet.save
				redirect_to vendors_path


	end
 	private

	def vendor_sweet_params
		params.require(:vendor_sweet).permit(:new, :create)
	end
end
