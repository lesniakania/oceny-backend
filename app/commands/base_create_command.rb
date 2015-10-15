class BaseCreateCommand < ROM::Commands::Create[:sql]
  def call(attributes)
    merged_attributes = attributes.merge(
      created_at: Time.now,
      updated_at: Time.now
    )
    super(merged_attributes)
  end
end

