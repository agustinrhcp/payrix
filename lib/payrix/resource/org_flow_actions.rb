module Payrix
  module Resource
    class OrgFlowActions < Base
      resource_name 'orgFlowActions'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :orgFlow, :org, :action]

      attr_accessor *ATTRS
    end
  end
end
