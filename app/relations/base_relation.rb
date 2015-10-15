module BaseRelation
  def by_id(id)
    where(id: id)
  end
end
