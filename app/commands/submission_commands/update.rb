module SubmissionCommands
  class Update < ROM::Commands::Update[:sql]
    relation :submissions
    register_as :update
    result :one

    # define a validator to use
    # validator SubmissionValidator
  end
end
