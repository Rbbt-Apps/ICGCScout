require 'rbbt/entity/study'

require 'kramdown'

Workflow.require_workflow "ICGC"

def user_studies
  @user_studies = Hash.new{ Sample.all_studies.sort }
end


require 'rbbt'

#path = Path.setup('', nil, nil, :_local => Sample.study_repo.find["{PATH}"], :global => ICGC.root.find["{PATH}"]) 
#
Sample.study_repo = ICGC.root.find

module Sinatra
  module RbbtAuth
    module Helpers
      def user
        session[:user] || 'guest'
      end
    end
  end
end
