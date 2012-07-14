module FactoryGirl
  module Strategy
    class FindOrCreate
      def initialize
        @strategy = FactoryGirl.strategy_by_name(:create).new

        @known_unique_constraints = {
          Color => :name,
          Client => :name,
          ServiceType => :explanation,
          Staff => :abbreviation,
          User => :email
        }
      end

      delegate :association, to: :@strategy

      def result(evaluation)

        begin
          @strategy.result(evaluation)
        rescue ActiveRecord::RecordInvalid => invalid
          clazz = invalid.record.class
          attribute = @known_unique_constraints[clazz]
          value = invalid.record.attributes[attribute.to_s]
          existing = clazz.where(attribute => value).first
          return existing
        end
      end
    end
  end
end

FactoryGirl.register_strategy(:find_or_create, FactoryGirl::Strategy::FindOrCreate)
