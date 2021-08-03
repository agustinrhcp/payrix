module Payrix
  module Resource
    class ReportItems < Base
      resource_name 'reportItems'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :report, :search, :totals, :resource, :inactive,
               :frozen]

      attr_accessor *ATTRS
    end
  end
end
