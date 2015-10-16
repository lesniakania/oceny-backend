class MarksRelation < ROM::Relation[:sql]
  include BaseRelation

  dataset :marks

  register_as :marks
end
