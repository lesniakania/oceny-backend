class SubmissionsRelation < ROM::Relation[:sql]
  include BaseRelation

  dataset :submissions

  register_as :submissions
end
