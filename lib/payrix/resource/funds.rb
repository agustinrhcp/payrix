module Payrix
  module Resource
    class Funds < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'funds'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :currency, :reserved, :pending, :available,
               :total, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
