require 'rubygems'
require 'httparty'

module QuijotipsumAPI

  QuijotipsumURL = "http://quijotipsum.com/utils/lescript.php?%s=%s"

  def method_missing(method, *args)
    results = []
    if method.to_s =~ /^quijotipsum_(.*)/ && ["paragraphs", "words"].include?($1)
      opts = { :what => ($1 =~ /^par/? "par" : "pal") }
      opts [:amount] = self if self.is_a? Fixnum
      plain_doc = HTTParty.get(QuijotipsumURL % [opts[:what], opts[:amount]])

      paragraphs = plain_doc.split("\n\n").collect { |t|
        t.gsub(/<br \/>/, " ")
      }.map(&:rstrip).reject(&:empty?)

      return paragraphs.first if opts[:what] == 'words'
      paragraphs
    else
      raise NoMethodError
    end
  end
end

class Fixnum
  include QuijotipsumAPI
end
