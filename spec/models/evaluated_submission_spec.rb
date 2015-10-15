require 'rails_helper'

describe EvaluatedSubmission do
  it_behaves_like "Submission", :evaluated_submission, :evaluated_submissions
end
