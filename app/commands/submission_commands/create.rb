module SubmissionCommands
  class Create < ::BaseCreateCommand
    relation :submissions
    register_as :create
    result :one
  end
end
