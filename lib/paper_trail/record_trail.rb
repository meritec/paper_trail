module PaperTrail
  # Represents the "paper trail" for a single record.
  class RecordTrail
    def initialize(record)
      @record = record
    end

    # Returns true if this instance is the current, live one;
    # returns false if this instance came from a previous version.
    def live?
      @record.source_version.nil?
    end
  end
end
