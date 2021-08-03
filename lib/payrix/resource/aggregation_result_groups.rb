module Payrix
  module Resource
    class AggregationResultGroups < Base
      include Mixin::UpdateDisabled
      include Mixin::CreateDisabled

      resource_name 'aggregationResultGroups'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :aggregation, :resource, :search, :totals, :lastModified,
               :effective, :default, :type, :level]

      attr_accessor *ATTRS
    end
  end
end
