module Paperclip
  class Grayscale < Processor
    def initialize file, options = {}, attachment = nil
      super
      @file           = file
      @current_format = File.extname(@file.path)
      @basename       = File.basename(@file.path, @current_format)
    end
 
    def make
#	src = @file
#       dst = Tempfile.new([@basename, @format])
#       dst.binmode
#
#       begin
#         parameters = []
#         parameters << ":source"
#         parameters << "-colorspace Gray"
#         parameters << ":dest"
#
#         parameters = parameters.flatten.compact.join(" ").strip.squeeze(" ")
#
#         success = Paperclip.run("convert", parameters, :source => "#{File.expand_path(src.path)}[0]", :dest => File.expand_path(dst.path))
#       rescue PaperclipCommandLineError => e
#         raise PaperclipError, "There was an error during the grayscale conversion for #{@basename}" if @whiny
#       end
#
#       dst

      dst = Tempfile.new(@basename)
      dst.binmode
      
      command = "#{File.expand_path(@file.path)} -modulate 100,0 #{File.expand_path(dst.path)}"
      begin
        success = Paperclip.run("convert", command)
      rescue PaperclipCommandLineError
        raise PaperclipError, "There was an error converting the image to grayscale for #{@basename}"
      end
     
      dst
    end
  end
end
