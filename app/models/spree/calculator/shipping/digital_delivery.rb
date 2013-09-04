# https://github.com/spree/spree/issues/1439
require_dependency 'spree/calculator'

module Spree
  module Calculator::Shipping
    class DigitalDelivery < FlatRate
      def self.description
        I18n.t(:digital_delivery)
      end

      def compute(object=nil)
        self.preferred_amount
      end

      def available?(order)
        order.digital?
      end
    end
  end
end
