module ChargesHelper
    # def update_current_offering(offering)
    #     @o = offering
    # end
    
    def update_amount(amount_in_cents, offering)
        puts amount_in_cents
        @amount = amount_in_cents
        @O = offering
    end
end
