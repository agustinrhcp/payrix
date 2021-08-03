module Payrix
  module Resource
    class Aggregations < Base
      resource_name 'aggregations'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :name, :description, :resource, :search,
               :totals, :status, :schedule, :scheduleFactor, :start,
               :inactive, :frozen, :entity, :forlogin, :org,
               :team, :division, :partition, :type, :level,
               :default]

      attr_accessor *ATTRS
    end
  end
end
