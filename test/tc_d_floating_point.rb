# Copyright (c) 2016 Cameron Harper
# 
# Permission is hereby granted, free of charge, to any person obtaining a copy of
# this software and associated documentation files (the "Software"), to deal in
# the Software without restriction, including without limitation the rights to
# use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
# the Software, and to permit persons to whom the Software is furnished to do so,
# subject to the following conditions:
#  
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
# FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
# COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
# IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
# CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

require "test/unit"
require "dlms_trouble/dtype"

class TestDFloatingPoint < Test::Unit::TestCase

    include DLMSTrouble

    def test_to_axdr

        assert_equal("\x07\x42\x28\x66\x66".force_encoding("ASCII-8BIT"), DFloatingPoint.new(42.1).to_axdr)

    end

    def test_from_axdr!

        assert_equal(DFloatingPoint.new(42.1), DFloatingPoint.from_axdr!("\x07\x42\x28\x66\x66".force_encoding("ASCII-8BIT")))
        assert_equal(DFloatingPoint.new(42.1), DFloatingPoint.from_axdr!("\x42\x28\x66\x66".force_encoding("ASCII-8BIT"), "\x07"))

    end

end