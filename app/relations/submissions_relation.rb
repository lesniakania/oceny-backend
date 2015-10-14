class SubmissionsRelation < ROM::Relation[:sql]
  dataset :submissions

  register_as :submissions
end
