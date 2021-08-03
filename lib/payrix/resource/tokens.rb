module Payrix
  module Resource
    class Tokens < Base
      resource_name 'tokens'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :customer, :payment, :token, :expiration, :inactive,
               :frozen, :name, :description, :custom, :authTokenCustomer,
               :status]

      attr_accessor *ATTRS
    end
  end
end
