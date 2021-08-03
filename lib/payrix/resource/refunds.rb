module Payrix
  module Resource
    class Refunds < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled

      resource_name 'refunds'

      def initialize(params)
        super(params, ATTRS)

      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entry, :description, :amount]

      attr_accessor *ATTRS
    end
  end
end
