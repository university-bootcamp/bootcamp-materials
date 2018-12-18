# MESSAGE=omg ruby fb.rb

require 'rubygems'
require 'firebase'

base_uri = 'https://brilliant-fire-738.firebaseio.com/'

firebase = Firebase::Client.new(base_uri)

response = firebase.push("todos", { :name => ENV['MESSAGE'], :priority => 1 })
puts response.success? # => true
puts response.code # => 200
puts response.body # => { 'name' => "-INOQPH-aV_psbk3ZXEX" }
puts response.raw_body # => '{"name":"-INOQPH-aV_psbk3ZXEX"}'