module Payrix
  module Resource
    class Adjustments < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'adjustments'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :entity, :fromentity, :description, :amount,
               :currency, :onentity]

      attr_accessor *ATTRS
    end
  end
end
