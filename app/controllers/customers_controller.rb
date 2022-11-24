class CustomersController < InheritedResources::Base

  private

    def customer_params
      params.require(:customer).permit(:firstName, :lastName, :address, :postalCode, :city, :province)
    end

end
