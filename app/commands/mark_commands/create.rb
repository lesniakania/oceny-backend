module MarkCommands
  class Create < BaseCreateCommand
    relation :marks
    register_as :create
    result :one
  end
end
