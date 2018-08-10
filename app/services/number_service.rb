module NumberService
  class << self
    FIXNUM_MAX = (2**(0.size * 8 -2) -1)

    def serial(number)
      if valid_number = valid_integer(number)
        result = []
        if valid_number > 0
          1.upto(valid_number) { |i| result << i }
          result
        end
      end
    end

    def as_json(array)
      { :numbers => array }
    end

    private

    def valid_integer(number)
      value = Integer(number) rescue false
      return false unless value
      value < FIXNUM_MAX ? value : false
    end
  end
end
