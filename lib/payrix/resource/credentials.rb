module Payrix
  module Resource
    class Credentials < Base
      resource_name 'credentials'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :entity, :name, :description, :username, :password,
               :connectUsername, :connectPassword, :integration, :type, :inactive,
               :frozen]

      attr_accessor *ATTRS
    end
  end
end
