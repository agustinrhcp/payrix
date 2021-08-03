module Payrix
  module Resource
    class TeamLogins < Base
      resource_name 'teamLogins'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :team, :create, :read, :update,
               :delete, :reference, :teamAdmin]

      attr_accessor *ATTRS
    end
  end
end
