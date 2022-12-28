require 'json'

class CatFacts
  def initialize(requestor)
    @requestor = requestor
  end
  
  def provide
    return "Cat fact: #{get_cat_fact["fact"]}"
  end

  private

  def get_cat_fact
    text_response = @requestor.get(URI("https://catfact.ninja/fact"))
    return JSON.parse(text_response)
  end
end