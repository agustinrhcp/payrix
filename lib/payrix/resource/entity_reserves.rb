module Payrix
  module Resource
    class EntityReserves < Base
      include Mixin::DeleteDisabled

      resource_name 'entityReserves'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :fund, :total, :name, :description]

      attr_accessor *ATTRS
    end
  end
end
