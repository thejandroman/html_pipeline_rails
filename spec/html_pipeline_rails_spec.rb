require 'spec_helper'

describe HtmlPipelineRails do
  describe '.config' do
    it "runs the config block" do
      block_run = false
      HtmlPipelineRails.config do |c|
        block_run = true
      end
      expect(block_run).to be_true
    end

    it "defaults to include the MarkdownFilter" do
      HtmlPipelineRails.config do |c|
        pipeline = c.pipeline
        expect(pipeline).to be_an(HTML::Pipeline)
        expect(pipeline.filters).to eq([HTML::Pipeline::MarkdownFilter])
      end
    end

    it "allows for changing the file extensions" do
      HtmlPipelineRails.config do |c|
        c.file_extensions = [:html]
        exts = c.file_extensions
        expect(exts[0]).to eq(:html)
      end
    end
  end
end
