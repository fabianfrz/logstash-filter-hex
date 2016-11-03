# encoding: utf-8

require "logstash/filters/base"
require "logstash/namespace"

class LogStash::Filters::Hex < LogStash::Filters::Base

  config_name "hex"

  config :action, :validate => ["decode", "encode"], :default => "decode"
  config :type, :validate => ["string", "integer"], :default => "string"

  # The fields to encode or decode as an array of names
  config :fields, :validate => :array, :default => "message"

  def register
  end

  def filter(event)
    @fields.each do |field|
      next if field.nil?
      value = event.get(field)
      next if value.nil?

      case @action
      when "encode"
        if @type == "string"
          event.set(field, value.unpack("H*").first)
        else
          event.set(field, value.to_i.to_s(16))
        end
      when "decode"
        if value =~ /^[a-f0-9]+$/i
          if @type == "string"
            event.set(field, [value].pack("H*"))
          else
            event.set(field, value.to_i(16).to_s)
          end
        else
        end
      end
    end

    filter_matched(event)
  end
end
