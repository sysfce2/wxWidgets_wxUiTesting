///////////////////////////////////////////////////////////////////////////////
// Code generated by wxUiEditor - see https://github.com/KeyWorksRW/wxUiEditor/
//
// Do not edit any code above the "End of generated code" comment block.
// Any changes before that block will be lost if it is re-generated!
///////////////////////////////////////////////////////////////////////////////

// clang-format off

#pragma once

#include <wx/dialog.h>
#include <wx/gdicmn.h>
#include <wx/stattext.h>
#include <wx/treebook.h>

class TreebookBase : public wxDialog
{
public:
    TreebookBase() {}
    TreebookBase(wxWindow *parent, wxWindowID id = wxID_ANY, const wxString& title = "Treebook",
        const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize,
        long style = wxDEFAULT_DIALOG_STYLE, const wxString &name = wxDialogNameStr)
    {
        Create(parent, id, title, pos, size, style, name);
    }

    bool Create(wxWindow *parent, wxWindowID id = wxID_ANY, const wxString& title = "Treebook",
        const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize,
        long style = wxDEFAULT_DIALOG_STYLE, const wxString &name = wxDialogNameStr);

protected:

    // Class member variables

    wxStaticText* m_staticText;
    wxStaticText* m_staticText_2;
    wxStaticText* m_staticText_3;
    wxTreebook* m_treebook;
};

namespace wxue_img
{
    // Images declared in this class module:

    extern const unsigned char er_png[302];
    extern const unsigned char re_png[305];
}

// ************* End of generated code ***********
// DO NOT EDIT THIS COMMENT BLOCK!
//
// Code below this comment block will be preserved
// if the code for this class is re-generated.
//
// clang-format on
// ***********************************************
