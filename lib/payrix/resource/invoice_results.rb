module Payrix
  module Resource
    class InvoiceResults < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled

      resource_name 'invoiceResults'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :invoice, :txn, :status, :message, :shippingFirst,
               :shippingMiddle, :shippingLast, :shippingCompany, :shippingAddress1, :shippingAddress2,
               :shippingCity, :shippingState, :shippingZip, :shippingCountry, :shippingPhone,
               :shippingFax]

      attr_accessor *ATTRS
    end
  end
end
