module HtmlPipelineRails
  class Configuration
    attr_accessor :pipeline
    attr_accessor :file_extensions

    def initialize
      self.reset!
      self.file_extensions = :md, :mdown, :markdown
    end

    def reset!
      self.pipeline = HTML::Pipeline.new([
        HTML::Pipeline::MarkdownFilter
      ])
    end
  end
end
