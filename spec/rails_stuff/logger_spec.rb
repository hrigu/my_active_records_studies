require 'spec_helper'


#require 'rspec'
require 'logger'

describe "Logger" do

  it "new rails logger with reactivated formatter from the original ruby logger" do
    logger = Logger.new(STDOUT)
    #the rails logger uses a simple formatter, which only log the message
    logger.formatter = Logger::Formatter.new
    logger.datetime_format = "%Y-%m-%d"

    logger.info(logger.class)
    logger.debug("debug message")
    logger.info("info message")
    logger.warn("warn message")
    logger.error("error message")
  end

  it "the new tagged logger, new in rails 3.2" do
    logger = ActiveSupport::TaggedLogging.new(Logger.new(STDOUT))
    logger.tagged("BCX") {logger.info "Stuff" }
    logger.info "other"
  end
end