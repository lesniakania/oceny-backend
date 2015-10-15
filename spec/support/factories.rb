FactoryGirl.define do
  factory :base_submission do
    first_name 'John'
    last_name 'Doe'

    factory :pending_submission do
    end

    factory :evaluated_submission do
      mark 5
    end

    factory :rejected_submission do
      reason 'Too young'
    end
  end
end

