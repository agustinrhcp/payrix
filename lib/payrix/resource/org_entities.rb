module Payrix
  module Resource
    class OrgEntities < Base
      resource_name 'orgEntities'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :org, :entity]

      attr_accessor *ATTRS
    end
  end
end
