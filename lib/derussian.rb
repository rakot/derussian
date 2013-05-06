require "derussian/version"
require 'yaml'

module Derussian

  extend self

  @replace = YAML.load_file(File.join(File.dirname(__FILE__),'derussian/config.yml'))['replace']

  def delocalize(date)
    date = date.strip.squeeze(' ')
    @replace.each { |needle,replacement| date = replace(date,needle,replacement) }
    date.strip.squeeze(' ')
  end


  protected
    def replace(date,needle,replacement)replacement
      date.gsub(/(\A|\s)#{needle}(\z|\s|\.)/i,' '+replacement+' ')
    end
end


