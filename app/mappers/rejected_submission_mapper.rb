class RejectedSubmissionMapper < ROM::Mapper
  relation :submissions
  register_as :rejected_submissions

  model RejectedSubmission
end
