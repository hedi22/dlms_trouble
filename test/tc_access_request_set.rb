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
require "dlms_trouble"
require "stringio"

class TestAccessRequestSet < Test::Unit::TestCase

    include DLMSTrouble

    def test_init
        #AccessRequestSet.new(1, "1.2.3.4.5.6", 7, DType::VisibleString.new("hello world"))        
    end

    def test_to_request_spec
        #expected = "\x02\x00\x01\x01\x02\x03\x04\x05\x06\x07".force_encoding("ASCII-8BIT")
        #assert_equal(expected, AccessRequestSet.new(1, "1.2.3.4.5.6", 7, DType::VisibleString.new("hello world")).to_request_spec)    
    end
    
    def test_to_request_data

        #expected = "\x0a\x0bhello world".force_encoding("ASCII-8BIT")
        #assert_equal(expected, AccessRequestSet.new(1, "1.2.3.4.5.6", 7, DType::VisibleString.new("hello world")).to_request_data)
        
    end

end

