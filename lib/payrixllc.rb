require "payrixllc/version"
require "payrixllc/configuration"
require "payrixllc/exceptions"
require "payrixllc/http"
require "payrixllc/resource"

module Payrixllc
  class << self
    attr_writer :configuration
  end

  def self.configuration
    @configuration ||= Configuration.new
  end

  def self.configure
    yield(configuration)
  end
end
