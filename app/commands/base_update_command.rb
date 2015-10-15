class BaseUpdateCommand < ROM::Commands::Update[:sql]
  def call(attributes)
    merged_attributes = attributes.merge(
      updated_at: Time.now
    )
    super(merged_attributes)
  end
end
