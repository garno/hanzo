require 'hanzo/modules/installers/remotes'

module Hanzo
  class Install < Base

    include Hanzo::Installers::Remotes

  protected

    def initialize_variables
      @type = extract_argument(1)
    end

    def initialize_cli
      initialize_help and return if @type.nil?

      send "install_#{@type}"
    end

    def initialize_help
      @options.banner = <<-BANNER
Usage: hanzo install TYPE

Available install type:
  remotes — Add git remotes to current repository
BANNER
    end

  end
end