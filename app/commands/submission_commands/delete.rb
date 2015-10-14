module SubmissionCommands
  class Delete < ROM::Commands::Delete[:sql]
    relation :submissions
    register_as :delete
    result :one
  end
end
