require 'rbbt/entity/study'

require 'kramdown'
def user_studies
  @user_studies = Hash.new{ Sample.all_studies }
end

Workflow.require_workflow "ICGC"

require 'rbbt'

#path = Path.setup('', nil, nil, :local => Sample.study_repo.find["{PATH}"], :global => ICGC.root.find["{PATH}"]) 
path = Path.setup('', nil, nil, :_local => Sample.study_repo.find["{PATH}"], :global => ICGC.root.find["{PATH}"]) 

Sample.study_repo = path

module Sinatra
  module RbbtAuth
    module Helpers
      def user
        session[:user] || 'guest'
      end
    end
  end
end
