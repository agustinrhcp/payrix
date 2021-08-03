module Payrix
  module Resource
    class Decisions < Base
      resource_name 'decisions'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :org, :entity, :decision, :type,
               :target, :action, :sequence, :amount, :value,
               :period, :periodFactor, :low, :high, :inactive,
               :frozen, :division, :application, :options, :errorMessage,
               :reason, :additionalOptions, :level, :schedule, :scheduleFactor,
               :start, :finish]

      attr_accessor *ATTRS
    end
  end
end
