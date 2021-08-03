module Payrix
  module Resource
    class InvoiceParameters < Base
      resource_name 'invoiceParameters'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :entity, :org, :division, :type,
               :value, :locked, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
