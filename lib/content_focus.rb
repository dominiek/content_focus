
module ContentFocus
  module Version
    MAJOR = 0
    MINOR = 1
    REVISION = 0
    class << self
      def to_version
        "#{MAJOR}.#{MINOR}.#{REVISION}"
      end
 
      def to_name
        "#{MAJOR}_#{MINOR}_#{REVISION}"
      end
    end
  end
end

require 'hpricot'
require File.join(File.dirname(__FILE__), 'content_focus/linguistics')
require File.join(File.dirname(__FILE__), 'content_focus/html')
