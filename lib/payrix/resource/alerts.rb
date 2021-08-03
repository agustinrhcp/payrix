module Payrix
  module Resource
    class Alerts < Base
      resource_name 'alerts'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :forlogin, :team, :name, :description,
               :inactive, :frozen, :division]

      attr_accessor *ATTRS
    end
  end
end
