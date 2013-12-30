require 'rbbt/entity/study'

require 'kramdown'
def user_studies
  @user_studies = Hash.new{ Study.studies }
end

Workflow.require_workflow "ICGC"

require 'rbbt'

path = Path.setup('', nil, nil, :global => ICGC.root.find["{PATH}"]) 

Study.study_dir = path

module Sinatra
  module RbbtAuth
    module Helpers
      def user
        session[:user] || 'guest'
      end
    end
  end
end
