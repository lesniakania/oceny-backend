module MarkCommands
  class Update < BaseUpdateCommand
    relation :marks
    register_as :update
    result :one
  end
end
