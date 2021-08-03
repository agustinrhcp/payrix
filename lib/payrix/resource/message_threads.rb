module Payrix
  module Resource
    class MessageThreads < Base
      include Mixin::DeleteDisabled
      include Mixin::CreateDisabled

      resource_name 'messageThreads'

      def initialize(params)
        super(params, ATTRS)
      end

      ATTRS = [:id, :created, :modified, :creator, :modifier,
               :login, :forlogin, :hold, :entityReturn, :opposingMessageThread,
               :folder, :sender, :recipient, :subject]

      attr_accessor *ATTRS
    end
  end
end
