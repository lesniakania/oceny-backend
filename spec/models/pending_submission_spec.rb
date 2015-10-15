require 'rails_helper'

describe PendingSubmission do
  it_behaves_like "Submission", :pending_submission, :pending_submissions
end
