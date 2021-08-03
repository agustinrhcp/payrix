module Payrix
  module Resource
    class Vendors < Base
      include Mixin::CreateDisabled

      resource_name 'vendors'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :division, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
