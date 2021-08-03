module Payrix
  module Resource
    class InvoiceItems < Base
      resource_name 'invoiceItems'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :item, :description, :custom, :um,
               :commodityCode, :productCode, :price, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
