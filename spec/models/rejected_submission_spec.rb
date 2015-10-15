require 'rails_helper'

describe RejectedSubmission do
  it_behaves_like "Submission", :rejected_submission, :rejected_submissions
end
