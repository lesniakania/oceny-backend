ValueObject = Virtus.value_object(coerce: false)

class Submission
  include ValueObject

  values do
    attribute :first_name, String
    attribute :last_name, String
  end
end
