module Payrix
  module Resource
    class Secrets < Base
      resource_name 'secrets'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :entity, :org, :division, :type,
               :platform, :name, :description, :key, :locked,
               :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
