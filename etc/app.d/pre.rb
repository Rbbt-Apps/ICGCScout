require 'rbbt/workflow'

Workflow.require_workflow "ICGC"
Workflow.require_workflow "Study"
Sample.study_repo = Path.setup('share/data/projects/ICGC.new')
Sample.study_repo.resource = nil
