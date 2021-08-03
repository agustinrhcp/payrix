module Payrix
  module Resource
    class Accounts < Base
      resource_name 'accounts'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :account, :token, :name, :description,
               :primary, :status, :currency, :inactive, :frozen,
               :expiration]

      attr_accessor *ATTRS

    end
  end
end
