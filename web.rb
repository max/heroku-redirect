RedirectTo = proc do |env|
  [302, {'Content-Type' => 'text', 'Location' => ENV['REDIRECT_TO']}, ['302 found']]
end
