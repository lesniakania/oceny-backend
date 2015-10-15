class PendingSubmissionMapper < ROM::Mapper
  relation :submissions
  register_as :pending_submissions

  model PendingSubmission
end

