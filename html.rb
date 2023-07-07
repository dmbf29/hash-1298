def tag(attributes = {})
  p attributes
  # "<#{name}>#{content}</#{name}>"
end

# p tag('h1', 'Hello Wold', href: 'www.google.com', style: 'color: green')


tag({ name: 'h1', style: 'color: green' })
