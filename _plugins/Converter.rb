module Jekyll

  class OGDescriptionTag < Liquid::Block
    def initialize(tag_name, markup, tokens)
      super
      markup.strip!
      words=markup.split(" ")
      type=words.shift
      header=words.join(" ");
     @type=type
     @title=header

    end
    
    
    def render(context)
 
      output = super
      output= markdownify(context,output)
      sections= context.environments.first.page['sections']
      if sections.nil?
        sections={}
        context.environments.first.page['sections']=sections
      end
      sections[@type]=output

      #p "----"
      #p context.environments.first.page['section'].keys
      #p "----"
      html="<section class='section-#{@type}'>"
      html+="<a href='\##{@type}'>"

      if !@title.empty?
        html+="<h3 class='section-#{@type}'>#{@title}</h3>"
      end
      html+="</a>"
      html+=output
      html+="</section>"

      return html
    end
    def markdownify(context,input)
         context.registers[:site].find_converter_instance(
        Jekyll::Converters::Markdown
      ).convert(input.to_s)
    end    
  end

end

Liquid::Template.register_tag('section', Jekyll::OGDescriptionTag)

