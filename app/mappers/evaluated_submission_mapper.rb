class EvaluatedSubmissionMapper < ROM::Mapper
  relation :submissions
  register_as :evaluated_submissions

  model EvaluatedSubmission
end

