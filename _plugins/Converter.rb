module Jekyll

  class OGDescriptionTag < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
      markup.strip!
     @type=markup
    end
    
    
    def render(context)
 
      output = super
      output= markdownify(context,output)
      section= context.environments.first.page['section']
      if section.nil?
        section={}
        context.environments.first.page['section']=section
      end
      section[@type]=output
      #context.environments.first.page['section'] = output

      p "----"
      p context.environments.first.page['section'].keys
      p "----"

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

