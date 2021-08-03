module Payrix
  module Resource
    class Reports < Base
      resource_name 'reports'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :type, :description, :status, :schedule,
               :scheduleFactor, :start, :finish, :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
