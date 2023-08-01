# _plugins/random_string.rb
module Jekyll
  class RandomStringTag < Liquid::Tag
    def initialize(tag_name, markup, tokens)
      super
      @characters = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789"
      @length = 16
    end

    def render(context)
      random_string = ""
      @length.times do
        index = rand(@characters.length)
        random_string << @characters[index]
      end
      random_string
    end
  end
end

Liquid::Template.register_tag('random_string', Jekyll::RandomStringTag)