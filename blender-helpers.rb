# Copyright (c) 2009 The Regents of the University of Michigan
# Written by Jim Zajkowski <jamesez@umich.edu>
# 
# Permission to use, copy, modify, and distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
# 
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
# THE SOFTWARE.

# Handler for adding GroupWise session to the SOAP header.
class ClientAuthHeaderHandler < SOAP::Header::SimpleHandler
  MyHeaderName = XSD::QName.new("http://schemas.novell.com/2005/01/GroupWise/types", "session")

  attr_accessor :session

  def initialize
    super(MyHeaderName)
    @session = nil
  end

  def on_simple_outbound
    if @session
      @session
      # { "session" => @session }
    end
  end

  def on_simple_inbound(my_header, mustunderstand)
    @session = my_header["session"]
  end
end

# Basic auth plugin, required for Exchange.
class SendBasicAuthFilter < SOAP::Filter::StreamHandler
  def initialize(loginname, password)
    @authorization = 'Basic ' + [ loginname + ':' + password ].pack('m').delete("\r\n")
  end

  def on_http_outbound(req)
    req.header.delete('Authorization')
    req.header['Authorization'] = @authorization
  end

  def on_http_inbound(req, res)
  end
end

