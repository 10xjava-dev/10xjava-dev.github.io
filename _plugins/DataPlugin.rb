require 'net/http'
require 'json'
require 'uri'



module DataPlugin
    
    class Reader
        def initialize(key)
            @key=key
        end

        def get(urlstring)
            url = URI.parse(urlstring)
            http = Net::HTTP.new(url.host, url.port)
            http.use_ssl = true if url.scheme == 'https'
            request = Net::HTTP::Get.new(url.request_uri)
            request['Content-Type'] = 'application/json'
            if @key
                request['Authorization'] = 'Bearer '+@key
            end

            response = http.request(request)

            # Check if the request was successful
            if response.is_a?(Net::HTTPSuccess)

                # Parse JSON response bodyr
               result= JSON.parse(response.body)
              # puts "Received data: #{result}"
               return result

            else
                puts "HTTP Request failed (status code: #{response.code})"
                return nil
            end  
        end 
    end
    
   
    
    class GitGenerator < Jekyll::Generator

        def generate(site)
            
            r=Reader.new(ENV['J10XDEV'])
                # all issues 
                issues=r.get('https://api.github.com/repos/10xjava-dev/10xjava-dev.github.io/issues')
                ideas=[]
                
                issues.each do |i|
                    
                    if i['state']=='open' 
                    url=i['url']
                  
                    labels=i['labels']
                    labels.each do |l|
                        if l['name']=="idea"
                            ideas.push(i)
                        end
                    end
                    
                end
            end 
              
                site.data['ideas'] = ideas
                
            
        end
    end
    
   
end    