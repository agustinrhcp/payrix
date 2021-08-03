module Payrix
  module Resource
    class Apikeys < Base
      resource_name 'apikeys'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :key, :name, :description, :public,
               :inactive, :frozen, :token, :effectiveRoles]

      attr_accessor *ATTRS
    end
  end
end
