////////////////////////////////////////////////////////////////////////////////
// Code generated by wxUiEditor -- see https://github.com/KeyWorksRW/wxUiEditor/
//
// DO NOT EDIT THIS FILE! Your changes will be lost if it is re-generated!
////////////////////////////////////////////////////////////////////////////////

#include <wx/bitmap.h>
#include <wx/button.h>
#include <wx/colour.h>
#include <wx/icon.h>
#include <wx/image.h>
#include <wx/panel.h>
#include <wx/settings.h>
#include <wx/sizer.h>

#include "notebook_base.h"

#include "../art/english.xpm"
#include "../art/french.xpm"
#include "../art/japanese.xpm"

bool NotebookBase::Create(wxWindow* parent, wxWindowID id, const wxString& title,
        const wxPoint& pos, const wxSize& size, long style, const wxString &name)
{
    if (!wxDialog::Create(parent, id, title, pos, size, style, name))
        return false;

    auto box_sizer = new wxBoxSizer(wxVERTICAL);

    m_notebook = new wxNotebook(this, wxID_ANY);
    {
        wxBookCtrlBase::Images bundle_list;
        bundle_list.push_back(wxBitmapBundle::FromBitmap(wxImage(english_xpm)));
        bundle_list.push_back(wxBitmapBundle::FromBitmap(wxImage(french_xpm)));
        bundle_list.push_back(wxBitmapBundle::FromBitmap(wxImage(japanese_xpm)));
        m_notebook->SetImages(bundle_list);
    }
    m_notebook->SetMinSize(wxSize(400, 400));
    box_sizer->Add(m_notebook, wxSizerFlags().Expand().Border(wxALL));

    auto page = new wxPanel(m_notebook, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTAB_TRAVERSAL);
    m_notebook->AddPage(page, "English", false, 0);
    page->SetBackgroundColour(wxSystemSettings::GetColour(wxSYS_COLOUR_BTNFACE));

    auto parent_sizer = new wxBoxSizer(wxVERTICAL);

    m_staticText = new wxStaticText(page, wxID_ANY, "This is a sentence in English.");
    parent_sizer->Add(m_staticText, wxSizerFlags().Border(wxALL));

    page->SetSizerAndFit(parent_sizer);

    auto page_2 = new wxPanel(m_notebook, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTAB_TRAVERSAL);
    m_notebook->AddPage(page_2, wxString::FromUTF8("Français"), false, 1);
    page_2->SetBackgroundColour(wxSystemSettings::GetColour(wxSYS_COLOUR_BTNFACE));

    auto parent_sizer_2 = new wxBoxSizer(wxVERTICAL);

    m_staticText = new wxStaticText(page_2, wxID_ANY, wxString::FromUTF8("Ceci est une phrase en français."));
    parent_sizer_2->Add(m_staticText, wxSizerFlags().Border(wxALL));

    page_2->SetSizerAndFit(parent_sizer_2);

    auto page_3 = new wxPanel(m_notebook, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTAB_TRAVERSAL);
    m_notebook->AddPage(page_3, wxString::FromUTF8("日本語"), false, 2);
    page_3->SetBackgroundColour(wxSystemSettings::GetColour(wxSYS_COLOUR_BTNFACE));

    auto parent_sizer_3 = new wxBoxSizer(wxVERTICAL);

    m_staticText = new wxStaticText(page_3, wxID_ANY, wxString::FromUTF8("これは日本語の文章です。"));
    parent_sizer_3->Add(m_staticText, wxSizerFlags().Border(wxALL));

    page_3->SetSizerAndFit(parent_sizer_3);

    auto stdBtn = CreateStdDialogButtonSizer(wxCLOSE|wxNO_DEFAULT);
    stdBtn->GetCancelButton()->SetDefault();
    box_sizer->Add(CreateSeparatedSizer(stdBtn), wxSizerFlags().Expand().Border(wxALL));

    SetSizerAndFit(box_sizer);
    Centre(wxBOTH);

    return true;
}
