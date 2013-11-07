require 'rbbt/entity/study'

#Study.instance_variable_set("@study_dir", Rbbt.studies.find(:lib))
Study.study_dir = ICGC.root

require 'kramdown'
def user_studies
  @user_studies = Hash.new{ Study.studies }
end
