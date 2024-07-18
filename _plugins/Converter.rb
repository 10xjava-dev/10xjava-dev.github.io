module Jekyll

  class OGDescriptionTag < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
      markup.strip!
     @type=markup
    end
    
    
    def render(context)
 
      output = super
      context.environments.first.page['desc'] = output
      p context.environments.first.page.keys
      p context.environments.first.page['desc']
     output= markdownify(context,output)
      return "<section class=\"section-#{@type}\">"+output+"</section>"
    end
    def markdownify(context,input)
         context.registers[:site].find_converter_instance(
        Jekyll::Converters::Markdown
      ).convert(input.to_s)
    end    
  end

end

Liquid::Template.register_tag('section', Jekyll::OGDescriptionTag)

