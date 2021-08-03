module Payrix
  module Resource
    class FeeModifiers < Base
      resource_name 'feeModifiers'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :fee, :entity, :org, :fromentity, :markupUm,
               :markupAmount, :inactive, :frozen, :division]

      attr_accessor *ATTRS
    end
  end
end
