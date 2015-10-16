module MarkCommands
  class Delete < ROM::Commands::Delete[:sql]
    relation :marks
    register_as :delete
    result :one
  end
end
