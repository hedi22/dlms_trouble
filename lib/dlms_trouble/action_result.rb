module DLMSTrouble

    class ActionResult

        VALUES = {
            0 => :success,
            1 => :hardware_fault,
            2 => :temporary_failure,
            3 => :read_write_denied,
            4 => :object_undefined,
            9 => :object_class_inconsistent,
            11 => :object_unavailable,
            12 => :type_unmatched,
            13 => :scope_of_access_violated,
            14 => :data_block_unavailable,
            15 => :long_action_aborted,
            16 => :no_long_action_in_progress,
            250 => :other_reason
        }
            
        def self.decode(input)
            result = VALUES[input.read(1).unpack("C")]

            if result.nil?
                raise
            end

            self.new(result)
        end
        def initialize(value)            
            if !VALUES.include? value
                raise
            end
            @value = value
        end
        def encode
            [VALUES.values.detect{|v|v == @value}].pack("C")
        end
    
    end

end
