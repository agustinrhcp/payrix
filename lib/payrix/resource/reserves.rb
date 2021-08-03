module Payrix
  module Resource
    class Reserves < Base
      resource_name 'reserves'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :org, :entity, :name, :description,
               :percent, :release, :releaseFactor, :finish, :inactive,
               :frozen, :max, :start, :hold, :division,
               :level]

      attr_accessor *ATTRS
    end
  end
end
