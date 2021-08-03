module Payrix
  module Resource
    class InvoiceLineItems < Base
      resource_name 'invoiceLineItems'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :invoice, :invoiceItem, :quantity, :price, :discount,
               :total]

      attr_accessor *ATTRS
    end
  end
end
