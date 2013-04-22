class SecureResqueServer < Resque::Server
  use Rack::Auth::Basic, "Restricted Area" do |username, password|
    [username, password] == ['admin', 'password']
  end
end