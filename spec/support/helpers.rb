def rom
  @rom ||= ROM.env
end

def create(relation, factory, attributes = {})
  default_attributes = FactoryGirl.attributes_for(factory)
  merged_attributes = default_attributes.merge(attributes)

  rom.command(relation).create.call(merged_attributes)
end
