Given /^request to url api (post)? "([^"]*)"$/ do |url,negative|
  if negative
    @page.send_request_post url
  else
    @page.send_request_get(url)
  end
end

Then /^response code will be 200$/ do
  assert_equal(200,@page.valid_code, "error de codigo")
end

Then /^response within valid body JSON$/ do
   assert(true,@page.valid_body_json)
end

Then /^response state OK$/ do
  assert_equal(200,@page.state_ok.to_i, "respuesta no valida")
end

Then /^response time below 500ms$/ do
  puts @page.time_respose
  assert_operator(0.5, :>= , @page.time_respose, "Se excedio el tiempo de espera")
end

Then /^response acepted and created$/ do
  puts @page.state_method_post
end