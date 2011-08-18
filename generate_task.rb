require 'nokogiri'
require 'open-uri'


module ProjectEuler
  module Generation

    class Generator
      def initialize(problem)
        @problem = problem
      end

      def generate
        id = @problem.id
        
        directory_name = "#{id}"
        solution_file_name = "#{id}/task#{id}.rb"
        readme_file_name = "#{id}/README.md"

        create_directory(directory_name)
        create_file("#{id}/task#{id}.rb", "# Your code goes here.")
        create_file(readme_file_name, @problem.to_markdown)
      end

      def create_directory(directory_name)
        Dir.mkdir directory_name
      end

      def create_file(file_name, content)
        File.open(file_name, 'w') do |f| 
          f.write content
        end
      end
    end
    
    class Problem
      attr_reader :id
    
      def initialize(id)
        @id = id
      end
    
      def url
        "http://projecteuler.net/index.php?section=problems&id=#@id"
      end
    
      def text
        @text ||= get_text
      end
    
      def to_markdown
        str = ''
        str << "[Problem #@id](#{url})\n"
        str << "==============\n"
        str << text
        str
      end
    
    private
      def get_text
        doc = Nokogiri::HTML(open(url))
        doc.at_css('.problem_content').text
      end
    end
  end
end

if __FILE__ == $0
  if ARGV.size == 0
    puts "Usage: ruby generate.rb 012 213 001"
    puts "  where 012 213 001 are problem ids"
  else
    ARGV.each do |problem_id|
      p = ProjectEuler::Generation::Problem.new(problem_id)
      begin
        g = ProjectEuler::Generation::Generator.new(p)
        g.generate
        puts "#{p.id} created"
      rescue => e
        puts "#{p.id} failed. Error: #{e}"
      end
    end
  end
end

