###############################################################################
# Code generated by wxUiEditor -- see https://github.com/KeyWorksRW/wxUiEditor/
#
# Do not edit any code above the "End of generated code" comment block.
# Any changes before that block will be lost if it is re-generated!
###############################################################################

"""MainFrame class generated by wxUiEditor."""

import wx
import test_dlg
import wizard

class MainFrame(wx.Frame):

    def __init__(self, parent, id=wx.ID_ANY, title="Tests", pos=
                wx.DefaultPosition, size=wx.DefaultSize,
                style=wx.DEFAULT_FRAME_STYLE, name=wx.FrameNameStr):
        wx.Frame.__init__(self)

        if not self.Create(parent, id, title, pos, size, style, name):
            return
        self.SetMinSize(self.ConvertDialogToPixels(wx.Size(300, -1)))

        self.menubar = wx.MenuBar()

        self.menu_file = wx.Menu()
        menu_item = wx.MenuItem(self.menu_file, wx.ID_EXIT)
        self.menu_file.Append(menu_item)
        self.menubar.Append(self.menu_file, "&File")

        menu_dialogs = wx.Menu()
        menu_item_test_dlg = wx.MenuItem(menu_dialogs, wx.ID_ANY, "Test Dialog...")
        menu_dialogs.Append(menu_item_test_dlg)
        menu_item_test_wizard = wx.MenuItem(menu_dialogs, wx.ID_ANY, "Wizard...")
        menu_dialogs.Append(menu_item_test_wizard)
        self.menubar.Append(menu_dialogs, "Tests")

        self.SetMenuBar(self.menubar)

        box_sizer = wx.BoxSizer(wx.VERTICAL)

        panel = wx.Panel(self, wx.ID_ANY, wx.DefaultPosition, wx.DefaultSize,
            wx.TAB_TRAVERSAL)
        box_sizer.Add(panel, wx.SizerFlags(1).Expand())

        panel_sizer = wx.BoxSizer(wx.VERTICAL)

        self.text_ctrl = wx.TextCtrl(panel, wx.ID_ANY, "", wx.DefaultPosition,
            wx.DefaultSize, wx.TE_MULTILINE)
        self.text_ctrl.SetMinSize(self.ConvertDialogToPixels(wx.Size(200, 100)))
        panel_sizer.Add(self.text_ctrl, wx.SizerFlags(1).Expand().Border(wx.ALL))
        panel.SetSizerAndFit(panel_sizer)
        self.SetSizerAndFit(box_sizer)

        self.Centre(wx.BOTH)

        # Bind Event handlers
        self.Bind(wx.EVT_MENU, self.on_quit, id=wx.ID_EXIT)
        self.Bind(wx.EVT_MENU, self.on_test_dlg, id=menu_item_test_dlg.GetId())
        self.Bind(wx.EVT_MENU, self.on_wizard, id=menu_item_test_wizard.GetId())

    # Unimplemented Event handler functions
    # Copy any listed and paste them below the comment block, or to your inherited class.
    """
    """

# ************* End of generated code ***********
# DO NOT EDIT THIS COMMENT BLOCK!
#
# Code below this comment block will be preserved
# if the code for this class is re-generated.
# ***********************************************

    def on_quit(self, _):
        """Quit"""
        self.Close()

    def on_test_dlg(self, _):
        """Run Test Dialog"""
        dlg = test_dlg.TestDialog(self)
        dlg.ShowModal()
        dlg.Destroy()

    def on_wizard(self, event):
        my_wizard = wizard.Wizard(self)
        my_wizard.Run()
        my_wizard.Destroy()

class App(wx.App):
    """Application class."""
    def OnInit(self):
        """Initialize the application."""
        frame = MainFrame(None, title="Python implementation")
        self.SetTopWindow(frame)

        frame.Show(True)
        return True

app = App()
app.MainLoop()