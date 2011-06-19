require 'thecount/countable'
require 'thecount/countable/twitter'
require 'thecount/countable/facebook'
require 'thecount/countable/linkedin'
require 'thecount/countable/disqus'
require 'thecount/countable/google'
require 'thecount/countable/digg'

module TheCount
  def self.count(strategies, args)
    output = {}
    strategies.collect { |s|
      service = s.new
      service.count(args)
      service
    }
  end
end
