module Payrix
  module Resource
    class AlertTriggers < Base
      resource_name 'alertTriggers'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :alert, :event, :resource, :name, :description,
               :inactive, :frozen]

      attr_accessor *ATTRS
    end
  end
end
