module Payrix
  module Resource
    class OrgFlows < Base
      resource_name 'orgFlows'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :forlogin, :trigger, :team, :division]

      attr_accessor *ATTRS
    end
  end
end
