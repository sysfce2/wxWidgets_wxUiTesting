###############################################################################
# Code generated by wxUiEditor -- see https://github.com/KeyWorksRW/wxUiEditor/
#
# Do not edit any code above the "End of generated code" comment block.
# Any changes before that block will be lost if it is re-generated!
###############################################################################

WX_GLOBAL_CONSTANTS = true unless defined? WX_GLOBAL_CONSTANTS

require 'wx/core'

require_relative 'images'
require 'zlib'
require 'base64'
require 'stringio'

class BitmapsDlg < Wx::Dialog
  def initialize(parent, id = Wx::ID_ANY, title = 'Bitmaps Testing',
                 pos = Wx::DEFAULT_POSITION, size = Wx::DEFAULT_SIZE,
                 style = Wx::DEFAULT_DIALOG_STYLE)

    super(parent, id, title, pos, size, style)

    dlg_sizer = Wx::BoxSizer.new(Wx::VERTICAL)

    @tool_bar = Wx::ToolBar.new(self, Wx::ID_ANY, Wx::DEFAULT_POSITION,
      Wx::DEFAULT_SIZE, Wx::TB_HORIZONTAL)
    @tool_bar.add_tool(Wx::ID_ANY, 'one', wxue_get_bundle($wxPython_2x_png))

    @tool_bar.add_tool(Wx::ID_ANY, 'two', wxue_get_bundle($wxPython_1_5x_png, $wxPython_2x_png))

    @tool_bar.add_tool(Wx::ID_ANY, 'three', wxue_get_bundle($wxPython_png, $wxPython_1_5x_png,
      $wxPython_2x_png))

    @tool_bar.add_tool(Wx::ID_ANY, 'xpm', Wx::Bitmap.new('../../art/english.xpm',
      Wx::BITMAP_TYPE_XPM))

    _svg_string_ = Zlib::Inflate.inflate(Base64.decode64($wxPython_svg))
    @tool_bar.add_tool(Wx::ID_ANY, 'svg', Wx::BitmapBundle.from_svg(_svg_string_,
      Wx::Size.new(16, 16)))

    @tool_bar.add_tool(Wx::ID_ANY, 'art', Wx::ArtProvider.get_bitmap_bundle(
      Wx::ART_TIP, Wx::ART_TOOLBAR))

    @tool_bar.realize
    dlg_sizer.add(@tool_bar, Wx::SizerFlags.new.border(Wx::ALL))

    grid_sizer = Wx::GridSizer.new(6, 0, 0)

    static_text = Wx::StaticText.new(self, Wx::ID_ANY, 'one')
    grid_sizer.add(static_text, Wx::SizerFlags.new.border(Wx::ALL))

    static_text2 = Wx::StaticText.new(self, Wx::ID_ANY, 'two')
    grid_sizer.add(static_text2, Wx::SizerFlags.new.border(Wx::ALL))

    static_text3 = Wx::StaticText.new(self, Wx::ID_ANY, 'three')
    grid_sizer.add(static_text3, Wx::SizerFlags.new.border(Wx::ALL))

    static_text4 = Wx::StaticText.new(self, Wx::ID_ANY, 'xpm')
    grid_sizer.add(static_text4, Wx::SizerFlags.new.border(Wx::ALL))

    static_text5 = Wx::StaticText.new(self, Wx::ID_ANY, 'SVG')
    grid_sizer.add(static_text5, Wx::SizerFlags.new.border(Wx::ALL))

    static_text6 = Wx::StaticText.new(self, Wx::ID_ANY, 'art')
    grid_sizer.add(static_text6, Wx::SizerFlags.new.border(Wx::ALL))

    bmp = Wx::StaticBitmap.new(self, Wx::ID_ANY, wxue_get_bundle($wxPython_2x_png))
    grid_sizer.add(bmp, Wx::SizerFlags.new.border(Wx::ALL))

    bmp2 = Wx::StaticBitmap.new(self, Wx::ID_ANY, wxue_get_bundle($wxPython_1_5x_png,
      $wxPython_2x_png))
    grid_sizer.add(bmp2, Wx::SizerFlags.new.border(Wx::ALL))

    bmp3 = Wx::StaticBitmap.new(self, Wx::ID_ANY, wxue_get_bundle($wxPython_png,
      $wxPython_1_5x_png, $wxPython_2x_png))
    grid_sizer.add(bmp3, Wx::SizerFlags.new.border(Wx::ALL))

    bmp4 = Wx::StaticBitmap.new(self, Wx::ID_ANY,
      Wx::Bitmap.new('../../art/english.xpm', Wx::BITMAP_TYPE_XPM))
    grid_sizer.add(bmp4, Wx::SizerFlags.new.border(Wx::ALL))

    _svg_string_ = Zlib::Inflate.inflate(Base64.decode64($wxPython_svg))
    bmp5 = Wx::StaticBitmap.new(self, Wx::ID_ANY, Wx::BitmapBundle.from_svg(_svg_string_,
      Wx::Size.new(16, 16)))
    grid_sizer.add(bmp5, Wx::SizerFlags.new.border(Wx::ALL))

    bmp6 = Wx::StaticBitmap.new(self, Wx::ID_ANY,
      Wx::ArtProvider.get_bitmap_bundle(Wx::ART_TIP, Wx::ART_TOOLBAR))
    grid_sizer.add(bmp6, Wx::SizerFlags.new.border(Wx::ALL))

    dlg_sizer.add(grid_sizer, Wx::SizerFlags.new.border(Wx::ALL))

    if Wx::PLATFORM != 'WXMAC'
      stdBtn_line = Wx::StaticLine.new(self, Wx::ID_ANY, Wx::DEFAULT_POSITION,
                                  Wx::Size.new(20, -1))
      dlg_sizer.add(stdBtn_line, Wx::SizerFlags.new.expand.border(Wx::ALL))
    end
    stdBtn = Wx::StdDialogButtonSizer.new
    _ok_btn = Wx::Button.new(self, Wx::ID_OK)
    stdBtn.add_button(_ok_btn)
    _ok_btn.set_default
    stdBtn.add_button(Wx::Button.new(self, Wx::ID_CANCEL))
    stdBtn.realize
    dlg_sizer.add(stdBtn, Wx::SizerFlags.new.expand.border(Wx::ALL))

    if pos != Wx::DEFAULT_POSITION
      set_position(from_dip(pos))
    end
    if size == Wx::DEFAULT_SIZE
      set_sizer_and_fit(dlg_sizer)
    else
      set_sizer(dlg_sizer)
      if size.x == Wx::DEFAULT_COORD || size.y == Wx::DEFAULT_COORD
        fit
      end
      set_size(from_dip(size))
      layout
    end
    centre(Wx::BOTH)
  end
end

# ../art/wxPython.svg
$wxPython_svg = (
  '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' +
  'H38ASrdtpw==')

# ************* End of generated code ***********
# DO NOT EDIT THIS COMMENT BLOCK!
#
# Code below this comment block will be preserved
# if the code for this class is re-generated.
# ***********************************************
