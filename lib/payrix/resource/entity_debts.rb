module Payrix
  module Resource
    class EntityDebts < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'entityDebts'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :toentity]

      attr_accessor *ATTRS
    end
  end
end
