
module ProductDomain
  module_function

  def generate_product_code(name)
    code = (0...8).map { ('a'..'z').to_a[rand(26)] }.join
    code.upcase

    # If the code is less than three characters, pad it with zeros.
    code = code.ljust(3, '0')

    name+'-'+code
  end
end
