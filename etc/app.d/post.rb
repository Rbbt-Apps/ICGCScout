require 'rbbt/entity/study'

require 'kramdown'

def user_studies
  @user_studies = Hash.new{ Study.studies.sort }
end


require 'rbbt'

#path = Path.setup('', nil, nil, :_local => Sample.study_repo.find["{PATH}"], :global => ICGC.root.find["{PATH}"]) 
#

module Sinatra
  module RbbtAuth
    module Helpers
      def user
        session[:user] || 'guest'
      end
    end
  end
end
