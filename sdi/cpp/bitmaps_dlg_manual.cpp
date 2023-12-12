///////////////////////////////////////////////////////////////////////////////
// Code generated by wxUiEditor - see https://github.com/KeyWorksRW/wxUiEditor/
//
// Do not edit any code above the "End of generated code" comment block.
// Any changes before that block will be lost if it is re-generated!
///////////////////////////////////////////////////////////////////////////////

// clang-format off

#include <wx/artprov.h>
#include <wx/bitmap.h>
#include <wx/bmpbndl.h>
#include <wx/button.h>
#include <wx/icon.h>
#include <wx/image.h>
#include <wx/sizer.h>
#include <wx/statbmp.h>
#include <wx/stattext.h>
#include <wx/menu.h>

#include "images.h"

#include "bitmaps_dlg.h"

#include "../../art/english.xpm"

#include <wx/mstream.h>  // memory stream classes
#include <wx/zstream.h>  // zlib stream classes

#include <memory>  // for std::make_unique

// Convert compressed SVG string into a wxBitmapBundle
#ifdef __cpp_inline_variables
inline wxBitmapBundle wxueBundleSVG(const unsigned char* data,
    size_t size_data, size_t size_svg, wxSize def_size)
#else
static wxBitmapBundle wxueBundleSVG(const unsigned char* data,
    size_t size_data, size_t size_svg, wxSize def_size)
#endif
{
    auto str = std::make_unique<char[]>(size_svg);
    wxMemoryInputStream stream_in(data, size_data);
    wxZlibInputStream zlib_strm(stream_in);
    zlib_strm.Read(str.get(), size_svg);
    return wxBitmapBundle::FromSVG(str.get(), def_size);
};

namespace wxue_img
{
    extern const unsigned char wxPython_svg[1648];
}

bool BitmapsDlg::Create(wxWindow* parent, wxWindowID id, const wxString& title,
    const wxPoint& pos, const wxSize& size, long style, const wxString &name)
{
    if (!wxDialog::Create(parent, id, title, pos, size, style, name))
        return false;
    if (!wxImage::FindHandler(wxBITMAP_TYPE_PNG))
        wxImage::AddHandler(new wxPNGHandler);

    auto* dlg_sizer = new wxBoxSizer(wxVERTICAL);

    m_tool_bar = new wxToolBar(this, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTB_HORIZONTAL);
    m_tool_bar->AddTool(wxID_ANY, "one", wxue_img::bundle_wxPython_2x_png());

    m_tool_bar->AddTool(wxID_ANY, "two", wxue_img::bundle_wxPython_1_5x_png());

    m_tool_bar->AddTool(wxID_ANY, "three", wxue_img::bundle_wxPython_png());

    m_tool_bar->AddTool(wxID_ANY, "xpm", wxImage(english_xpm));

    m_tool_bar->AddTool(wxID_ANY, "svg",
        wxueBundleSVG(wxue_img::wxPython_svg, 1648, 6310, FromDIP(wxSize(16, 16))));

    m_tool_bar->AddTool(wxID_ANY, "art", wxArtProvider::GetBitmapBundle(wxART_TIP, wxART_TOOLBAR));

    m_tool_bar->Realize();
    dlg_sizer->Add(m_tool_bar, wxSizerFlags().Border(wxALL));

    auto* grid_sizer = new wxGridSizer(6, 0, 0);

    auto* static_text = new wxStaticText(this, wxID_ANY, "one");
    grid_sizer->Add(static_text, wxSizerFlags().Border(wxALL));

    auto* static_text2 = new wxStaticText(this, wxID_ANY, "two");
    grid_sizer->Add(static_text2, wxSizerFlags().Border(wxALL));

    auto* static_text3 = new wxStaticText(this, wxID_ANY, "three");
    grid_sizer->Add(static_text3, wxSizerFlags().Border(wxALL));

    auto* static_text4 = new wxStaticText(this, wxID_ANY, "xpm");
    grid_sizer->Add(static_text4, wxSizerFlags().Border(wxALL));

    auto* static_text5 = new wxStaticText(this, wxID_ANY, "SVG");
    grid_sizer->Add(static_text5, wxSizerFlags().Border(wxALL));

    auto* static_text6 = new wxStaticText(this, wxID_ANY, "art");
    grid_sizer->Add(static_text6, wxSizerFlags().Border(wxALL));

    auto* bmp = new wxStaticBitmap(this, wxID_ANY, wxue_img::bundle_wxPython_2x_png());
    grid_sizer->Add(bmp, wxSizerFlags().Border(wxALL));

    auto* bmp2 = new wxStaticBitmap(this, wxID_ANY, wxue_img::bundle_wxPython_1_5x_png());
    grid_sizer->Add(bmp2, wxSizerFlags().Border(wxALL));

    auto* bmp3 = new wxStaticBitmap(this, wxID_ANY, wxue_img::bundle_wxPython_png());
    grid_sizer->Add(bmp3, wxSizerFlags().Border(wxALL));

    auto* bmp4 = new wxStaticBitmap(this, wxID_ANY, wxBitmapBundle::FromBitmap(wxImage(english_xpm)));
    grid_sizer->Add(bmp4, wxSizerFlags().Border(wxALL));

    auto* bmp5 = new wxStaticBitmap(this, wxID_ANY, wxueBundleSVG(wxue_img::wxPython_svg, 1648, 6310, wxSize(16, 16)));
    grid_sizer->Add(bmp5, wxSizerFlags().Border(wxALL));

    auto* bmp6 = new wxStaticBitmap(this, wxID_ANY, wxArtProvider::GetBitmapBundle(wxART_TIP, wxART_TOOLBAR));
    grid_sizer->Add(bmp6, wxSizerFlags().Border(wxALL));

    dlg_sizer->Add(grid_sizer, wxSizerFlags().Border(wxALL));

    auto* menubar = new wxMenuBar();

    auto menu = new wxMenu();
    auto* menuQuit = new wxMenuItem(menu, wxID_EXIT);
    {
        wxAcceleratorEntry entry;
        if (entry.FromString("ALT+X"))
            menuQuit->AddExtraAccel(entry);
    }

    menuQuit->SetBitmap(wxArtProvider::GetBitmapBundle(wxART_QUIT, wxART_MENU));

    menu->Append(menuQuit);
    menubar->Append(menu, wxGetStockLabel(wxID_FILE));

    auto* menuDialogs = new wxMenu();
    auto* menu_item_3 = new wxMenuItem(menuDialogs, wxID_ANY, "MainTestDlg");
    menu_item_3->SetBitmap(wxue_img::bundle_debug_32_png());
    menuDialogs->Append(menu_item_3);
    auto* menu_item_4 = new wxMenuItem(menuDialogs, wxID_ANY, "BookTestDlg");
    menu_item_4->SetBitmap(wxue_img::bundle_wxNotebook_png());
    menuDialogs->Append(menu_item_4);
    auto* menu_item_2 = new wxMenuItem(menuDialogs, wxID_ANY, "PythonDlg");
    menu_item_2->SetBitmap(wxue_img::bundle_wxPython_png());
    menuDialogs->Append(menu_item_2);
    auto* menu_tools_dlg2 = new wxMenuItem(menuDialogs, wxID_ANY, "Tools Dialog",
        "Dialog for testing different types of toolbars", wxITEM_NORMAL);

    menuDialogs->Append(menu_tools_dlg2);
    auto* menuItem3 = new wxMenuItem(menuDialogs, wxID_ANY, "Wizard");

    menuDialogs->Append(menuItem3);
    menuDialogs->AppendSeparator();
    auto* menuItem_2 = new wxMenuItem(menuDialogs, wxID_ANY, "Common Controls...", "Common controls", wxITEM_NORMAL);
    menuItem_2->SetBitmap(wxArtProvider::GetBitmapBundle(wxART_TIP, wxART_MENU));

    menuDialogs->Append(menuItem_2);
    menuDialogs->AppendSeparator();

    auto* submenu = new wxMenu();
    auto* menu_item_5 = new wxMenuItem(submenu, wxID_ANY, "DlgIssue_956");
    menu_item_5->SetBitmap(wxue_img::bundle_debug_32_png());
    submenu->Append(menu_item_5);
    auto* menu_item_6 = new wxMenuItem(submenu, wxID_ANY, "DlgIssue_960");
    menu_item_6->SetBitmap(wxue_img::bundle_Ainsi_c3_a_se_passe_png());
    submenu->Append(menu_item_6);
    menuDialogs->AppendSubMenu(submenu, "Issue Dialogs");
    menubar->Append(menuDialogs, "&Dialogs");
    dlg_sizer->Add(menubar, wxSizerFlags().Border(wxALL));

    auto* stdBtn = CreateStdDialogButtonSizer(wxOK|wxCANCEL);
    dlg_sizer->Add(CreateSeparatedSizer(stdBtn), wxSizerFlags().Expand().Border(wxALL));

    SetSizerAndFit(dlg_sizer);
    Centre(wxBOTH);

    return true;
}

namespace wxue_img
{

    const unsigned char wxPython_svg[1648] {
        120,218,229,89,77,115,219,54,16,237,79,193,48,151,116,134,68,240,177,0,22,178,149,75,14,61,117,122,104,211,67,111,
        138,76,197,154,200,150,135,82,18,59,191,190,111,73,74,22,29,73,81,29,59,211,105,205,67,200,37,176,216,183,251,222,
        2,84,206,87,159,222,191,62,191,168,103,43,53,191,24,23,114,67,197,235,243,197,252,186,158,52,191,52,147,139,121,
        125,189,110,95,13,77,46,229,128,113,171,245,242,70,173,214,119,139,122,92,200,125,53,93,46,150,205,232,197,59,150,
        235,172,53,45,111,38,211,249,250,110,100,52,101,54,62,59,119,86,168,229,108,182,170,215,227,194,20,173,115,25,8,
        151,169,120,117,216,103,154,201,245,192,231,142,43,59,112,149,197,213,171,97,208,39,225,226,84,252,195,24,116,56,
        4,136,243,211,1,178,143,3,228,99,138,199,10,229,228,58,17,16,124,241,49,64,239,188,92,39,1,242,145,205,35,1,57,
        127,12,208,140,228,26,198,96,247,163,113,68,71,208,124,190,156,175,235,131,126,236,192,207,35,161,80,76,246,24,
        148,217,5,249,119,15,66,216,95,25,120,242,199,42,51,155,213,156,252,41,104,224,41,60,22,13,232,126,56,132,48,201,
        192,115,34,154,142,237,135,92,121,19,115,230,195,174,6,112,178,63,5,206,173,29,23,206,145,118,62,231,88,168,59,
        60,90,34,157,66,178,169,80,183,110,92,84,49,104,111,56,24,135,215,110,240,122,79,27,201,44,211,96,252,48,186,108,
        234,217,184,120,177,167,244,234,125,255,244,246,122,190,94,141,139,143,171,186,249,29,120,234,223,174,223,174,234,
        251,215,127,52,147,235,213,108,217,92,141,139,181,220,46,38,235,250,165,53,70,187,100,92,153,179,142,214,218,248,
        179,224,220,3,203,38,167,51,57,195,29,172,148,52,165,144,217,119,176,92,212,17,94,50,119,168,82,212,222,226,242,
        251,81,101,243,13,84,160,192,243,163,194,250,171,233,228,166,30,129,15,139,122,138,138,79,22,159,39,119,171,19,
        98,219,3,42,72,169,158,56,230,239,73,252,147,225,77,246,0,222,252,60,120,31,171,159,231,46,176,35,254,95,21,216,
        5,243,31,45,240,65,192,225,49,128,175,38,235,102,126,251,18,199,157,232,2,217,210,200,133,7,156,67,93,89,89,171,
        67,78,84,86,73,71,147,3,253,219,73,30,248,135,229,224,33,239,163,182,41,34,49,223,230,189,4,48,89,124,95,10,218,
        79,143,54,5,67,111,142,13,232,49,189,29,23,17,97,91,102,17,226,244,14,225,122,167,29,7,156,107,212,108,248,118,
        54,124,219,32,248,172,141,199,241,195,31,203,214,38,77,54,165,28,35,110,173,97,157,200,75,126,142,151,224,153,149,
        96,41,61,135,18,72,231,108,109,199,7,84,214,39,187,33,66,48,58,75,135,232,197,144,157,246,1,92,232,136,128,41,72,
        38,36,208,107,193,39,116,21,215,125,153,61,167,22,144,5,254,145,89,16,194,19,103,159,186,44,56,3,177,248,196,182,
        207,130,15,58,198,224,66,159,5,248,241,57,197,244,220,114,176,196,230,59,178,0,140,148,77,136,161,174,184,172,76,
        219,243,112,152,142,165,213,38,80,140,92,122,141,143,210,64,33,213,85,42,43,198,163,49,92,90,114,154,162,51,146,
        156,39,211,162,28,224,229,167,137,215,231,55,147,245,229,230,147,96,54,95,44,70,31,155,197,203,23,95,215,255,231,
        51,121,187,251,173,131,4,253,170,2,138,104,57,113,40,179,6,91,19,57,91,87,164,222,40,16,217,131,186,222,161,226,
        198,57,135,22,151,20,5,157,67,98,130,196,53,73,15,139,25,70,167,173,137,136,82,50,129,148,224,3,67,121,163,83,52,
        248,42,65,82,12,88,146,188,85,142,37,33,0,80,130,246,153,82,178,180,181,97,110,0,54,103,99,86,159,148,69,118,17,
        84,80,151,10,84,98,235,2,140,94,19,86,17,91,181,49,86,24,216,218,166,10,13,57,101,71,33,151,70,9,51,163,69,210,
        152,75,220,49,136,153,96,140,82,64,252,161,36,30,93,220,195,127,37,165,177,108,91,163,44,234,208,190,196,138,29,
        202,64,203,176,70,29,56,130,220,202,148,14,113,7,101,53,88,144,29,123,192,128,19,14,78,69,141,162,7,66,174,122,
        207,196,10,49,184,135,203,93,170,220,3,251,132,120,156,110,35,55,160,138,102,12,53,78,97,87,193,202,132,253,5,235,
        70,168,78,28,33,238,176,53,244,57,73,45,254,41,38,80,160,28,32,77,101,251,4,249,178,194,246,227,217,70,218,218,
        48,221,235,216,166,177,114,65,7,111,55,75,3,82,140,222,51,80,99,150,147,112,37,178,228,80,159,100,85,53,240,32,
        200,50,42,254,70,69,160,99,112,157,65,4,15,193,17,20,172,66,214,216,231,201,183,242,48,14,146,207,198,31,98,216,
        95,234,170,45,84,40,185,203,137,65,76,41,35,42,172,30,177,181,38,96,18,78,192,92,34,85,153,35,133,184,181,4,4,43,
        233,149,106,213,85,196,8,0,246,190,45,158,139,54,25,143,33,166,43,242,253,28,179,169,58,246,41,74,17,160,48,247,
        126,128,204,77,137,236,206,156,106,59,201,154,86,214,88,200,69,31,188,146,242,97,191,35,25,178,137,101,103,214,
        198,244,165,107,69,34,83,155,169,253,181,232,68,201,134,189,146,189,82,140,246,137,136,160,25,168,71,248,210,105,
        70,120,25,251,178,130,102,222,164,16,68,22,44,223,55,65,136,156,219,191,78,9,48,164,94,74,27,46,97,44,20,207,222,
        183,18,234,234,78,185,140,200,9,19,251,29,46,108,201,212,115,137,82,187,106,199,37,34,37,7,28,22,245,201,113,137,
        32,235,29,38,118,115,141,33,197,154,56,121,111,81,59,80,56,90,97,122,116,17,251,72,41,167,41,184,218,50,29,17,73,
        204,144,164,16,17,61,8,124,219,37,124,208,204,73,60,60,224,187,44,243,167,98,104,216,152,108,243,0,48,164,112,223,
        82,182,214,141,7,106,197,37,45,37,182,226,194,22,150,97,182,178,22,121,128,226,205,80,236,139,213,86,225,96,86,
        206,200,32,36,237,51,218,120,132,37,50,250,103,43,96,212,52,165,40,178,235,90,137,64,1,233,89,100,136,87,68,86,
        136,135,189,146,211,142,207,106,223,66,95,90,249,132,182,253,149,80,99,215,27,90,241,8,181,177,25,9,179,119,244,
        35,188,78,106,40,5,212,109,171,30,33,53,181,234,17,86,119,2,107,243,87,237,74,174,179,116,10,149,170,12,164,3,137,
        14,149,211,143,111,151,168,122,133,170,86,159,216,55,54,210,162,164,30,136,13,150,129,106,66,251,107,98,189,88,
        204,111,86,245,70,56,59,63,162,163,227,184,179,123,33,125,189,235,63,20,82,247,216,124,92,212,163,235,229,245,151,
        186,89,158,173,214,205,242,67,251,88,247,247,213,231,249,197,250,114,132,28,35,113,180,49,94,205,215,117,179,152,
        227,159,209,214,118,49,89,93,78,154,102,114,55,152,190,35,219,45,20,206,212,29,2,66,144,108,128,178,253,33,0,124,
        192,62,152,112,122,107,240,22,7,164,236,77,78,56,63,53,120,11,229,70,108,160,182,251,5,95,254,127,226,167,191,1,
        216,97,253,146
    };

}

// ************* End of generated code ***********
// DO NOT EDIT THIS COMMENT BLOCK!
//
// Code below this comment block will be preserved
// if the code for this class is re-generated.
//
// clang-format on
// ***********************************************
