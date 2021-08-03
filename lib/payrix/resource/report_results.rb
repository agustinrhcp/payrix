module Payrix
  module Resource
    class ReportResults < Base
      include Mixin::UpdateDisabled
      include Mixin::DeleteDisabled

      resource_name 'reportResults'

      def initialize(params)
        super(params, ATTRS)

      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :report, :type, :documentType, :original, :status,
               :effective, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
