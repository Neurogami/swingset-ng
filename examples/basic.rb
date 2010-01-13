# Note: The goal is include some examples if using Neurogami::SwingSet.
# The orginal goal of SwingSet was for use with Monkeybars and Jimpanzee.
# Both of those look after thngs such as event handlers and the UI lifecycle.
# Standalone examples of SwingSet need to take care of that, though it does not
# offer any Rubyesque API for them.
#
# Still, the mechanics are not that hard for general examples.
#

# This is nasty.  The loading of the MiG layout jar should be wrapped somehow
# so that you can load it without having to know where it lives or the version number
# on the jar.  This way, with updates to SwingSet, code that calls a local version
# of MiG will simply get whatever version was shipped for that version of SwingSet and you
# don't have to go fix your code to update the MiG version number.


$:.unshift File.expand_path(File.join(File.dirname(__FILE__), '..', 'lib'))
require 'swingset'

include  Neurogami::SwingSet::Core

class BasicFrame < Frame   
  include  Neurogami::SwingSet::MiG

  mig_layout

  FRAME_WIDTH  = 600
  FRAME_HEIGHT = 130

  LABEL_WIDTH  = 400
  LABEL_HEIGHT = 60

  # Make sure our components are available! 
  attr_accessor :default_button, :default_label

  def initialize *args
    super
    self.minimum_width  = FRAME_WIDTH
    self.minimum_height = FRAME_HEIGHT
    set_up_components
    default_close_operation = EXIT_ON_CLOSE 
  end

  def set_up_components
    component_panel = Panel.new

    # If we were clever we would define a method that took a  single hex value, like CSS.
    component_panel.background_color 255, 255, 255
    component_panel.size FRAME_WIDTH, FRAME_HEIGHT

    # This code uses the MiG layout manager.
    # To learn more about MiGLayout, see:
    #     http://www.miglayout.com/
    component_panel.layout = Java::net::miginfocom::swing::MigLayout.new "wrap 2"

    @default_label = Label.new do |l|
      l.font = Font.new "Lucida Grande", 0, 18
      l.minimum_dimensions LABEL_WIDTH, LABEL_HEIGHT
      l.text = "Neurogami::SwingSet rulez!"
    end

    @default_button = Button.new do |b|
      b.text = "Close"
    end

    # Add components to panel
    component_panel.add @default_label, "gap unrelated"
    component_panel.add @default_button, "gap unrelated"
    add component_panel

    @default_button.addActionListener lambda{ |e| default_button_clicked e}
  end

  def default_button_clicked event
    puts "Our button was clicked"
    java.lang.System.exit 0
  end

end


af = BasicFrame.new
af.set_location  500, 300
af.show

