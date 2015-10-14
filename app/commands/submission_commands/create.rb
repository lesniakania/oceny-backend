module SubmissionCommands
  class Create < ROM::Commands::Create[:sql]
    relation :submissions
    register_as :create
    result :one
  end
end
