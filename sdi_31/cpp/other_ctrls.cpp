///////////////////////////////////////////////////////////////////////////////
// Code generated by wxUiEditor - see https://github.com/KeyWorksRW/wxUiEditor/
//
// Do not edit any code above the "End of generated code" comment block.
// Any changes before that block will be lost if it is re-generated!
///////////////////////////////////////////////////////////////////////////////

// clang-format off

#include <wx/artprov.h>
#include <wx/bitmap.h>
#include <wx/icon.h>
#include <wx/image.h>
#include <wx/panel.h>
#include <wx/persist.h>
#include <wx/persist/toplevel.h>
#include <wx/sizer.h>
#include <wx/valgen.h>

#include "other_ctrls.h"

bool OtherCtrlsDlg::Create(wxWindow* parent, wxWindowID id, const wxString& title,
    const wxPoint& pos, const wxSize& size, long style, const wxString &name)
{
    if (!wxDialog::Create(parent, id, title, pos, size, style, name))
        return false;

    auto* parent_sizer = new wxBoxSizer(wxVERTICAL);

    m_notebook = new wxNotebook(this, wxID_ANY);
    parent_sizer->Add(m_notebook, wxSizerFlags(1).Expand().Border(wxALL));

    auto* m_panel2 = new wxPanel(m_notebook, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxBORDER_RAISED|wxTAB_TRAVERSAL);
    m_notebook->AddPage(m_panel2, "Spinners", true);

    auto* parent_sizer3 = new wxBoxSizer(wxVERTICAL);

    m_scrollBar = new wxScrollBar(m_panel2, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxSB_HORIZONTAL);
    m_scrollBar->SetScrollbar(0, 1, 100, 1);
    parent_sizer3->Add(m_scrollBar, wxSizerFlags().Expand().Border(wxALL));

    m_spinCtrl = new wxSpinCtrl(m_panel2, wxID_ANY, wxEmptyString, wxDefaultPosition, wxDefaultSize, wxSP_ARROW_KEYS, 0,
        100, 4);
    m_spinCtrl->SetValidator(wxGenericValidator(&m_spinValidate));
    parent_sizer3->Add(m_spinCtrl, wxSizerFlags().Border(wxALL));

    m_spinCtrlDouble = new wxSpinCtrlDouble(m_panel2);
    parent_sizer3->Add(m_spinCtrlDouble, wxSizerFlags().Border(wxALL));

    m_spinBtn = new wxSpinButton(m_panel2);
    m_spinBtn->SetRange(0, 10);
    parent_sizer3->Add(m_spinBtn, wxSizerFlags().Border(wxALL));
    m_panel2->SetSizerAndFit(parent_sizer3);

    auto* m_panel3 = new wxPanel(m_notebook, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTAB_TRAVERSAL);
    m_notebook->AddPage(m_panel3, "HTML", true);

    auto* parent_sizer4 = new wxBoxSizer(wxVERTICAL);

    m_htmlWin = new wxHtmlWindow(m_panel3);
    parent_sizer4->Add(m_htmlWin, wxSizerFlags().Border(wxALL));
    m_panel3->SetSizerAndFit(parent_sizer4);

    auto* m_panel4 = new wxPanel(m_notebook, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTAB_TRAVERSAL);
    m_notebook->AddPage(m_panel4, "RTF");

    auto* parent_sizer5 = new wxBoxSizer(wxVERTICAL);

    m_richText = new wxRichTextCtrl(m_panel4, wxID_ANY, wxEmptyString, wxDefaultPosition, wxDefaultSize, wxRE_MULTILINE|
        wxVSCROLL | wxHSCROLL | wxNO_BORDER | wxWANTS_CHARS);
    parent_sizer5->Add(m_richText, wxSizerFlags(1).Expand().Border(wxALL));
    m_panel4->SetSizerAndFit(parent_sizer5);

    auto* m_panel5 = new wxPanel(m_notebook, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTAB_TRAVERSAL);
    m_notebook->AddPage(m_panel5, "Scintilla");

    auto* parent_sizer6 = new wxBoxSizer(wxVERTICAL);

    m_scintilla = new wxStyledTextCtrl(m_panel5);
    {
        m_scintilla->SetLexer(wxSTC_LEX_CPP);
        m_scintilla->SetEOLMode(wxSTC_EOL_LF);
        // Sets text margin scaled appropriately for the current DPI on Windows,
        // 5 on wxGTK or wxOSX
        m_scintilla->SetMarginLeft(wxSizerFlags::GetDefaultBorder());
        m_scintilla->SetMarginRight(wxSizerFlags::GetDefaultBorder());
        m_scintilla->SetMarginWidth(1, 0); // Remove default margin
        m_scintilla->SetBackSpaceUnIndents(true);
    }
    parent_sizer6->Add(m_scintilla, wxSizerFlags(1).Expand().Border(wxALL));
    m_panel5->SetSizerAndFit(parent_sizer6);

    auto* m_panel6 = new wxPanel(m_notebook, wxID_ANY, wxDefaultPosition, wxDefaultSize, wxTAB_TRAVERSAL);
    m_notebook->AddPage(m_panel6, "Misc");

    auto* parent_sizer7 = new wxBoxSizer(wxVERTICAL);

    auto* box_sizer = new wxBoxSizer(wxHORIZONTAL);

    m_toggleBtn = new wxToggleButton(m_panel6, wxID_ANY, "Toggle");
    box_sizer->Add(m_toggleBtn, wxSizerFlags().Border(wxALL));

    m_hyperlink = new wxHyperlinkCtrl(m_panel6, wxID_ANY, "Hyperlink", wxEmptyString);
    box_sizer->Add(m_hyperlink, wxSizerFlags().Center().Border(wxALL));

    m_searchCtrl = new wxSearchCtrl(m_panel6, wxID_ANY, "Search for something...");
    m_searchCtrl->ShowSearchButton(true);
    box_sizer->Add(m_searchCtrl, wxSizerFlags(1).Border(wxALL));

    parent_sizer7->Add(box_sizer, wxSizerFlags().Expand().Border(wxALL));

    auto* box_sizer2 = new wxBoxSizer(wxHORIZONTAL);

    m_calendar = new wxCalendarCtrl(m_panel6, wxID_ANY, wxDefaultDateTime, wxDefaultPosition, wxDefaultSize,
        wxCAL_SHOW_HOLIDAYS);
    box_sizer2->Add(m_calendar, wxSizerFlags().Border(wxALL));

    m_genericDirCtrl = new wxGenericDirCtrl(m_panel6, wxID_ANY, wxDirDialogDefaultFolderStr, wxDefaultPosition,
        wxDefaultSize, wxDIRCTRL_3D_INTERNAL|wxSUNKEN_BORDER);
    box_sizer2->Add(m_genericDirCtrl, wxSizerFlags(1).Expand().Border(wxALL));

    parent_sizer7->Add(box_sizer2, wxSizerFlags(1).Expand().Border(wxALL));
    m_panel6->SetSizerAndFit(parent_sizer7);

    SetSizerAndFit(parent_sizer);
    Centre(wxBOTH);

    wxPersistentRegisterAndRestore(this, "OtherCtrlsDlg");

    return true;
}

// ************* End of generated code ***********
// DO NOT EDIT THIS COMMENT BLOCK!
//
// Code below this comment block will be preserved
// if the code for this class is re-generated.
//
// clang-format on
// ***********************************************

/////////////////// Non-generated Copyright/License Info ////////////////////
// Purpose:   Other Controls dialog
// Author:    Ralph Walden
// Copyright: Copyright (c) 2020-2023 KeyWorks Software (Ralph Walden)
// License:   Apache License -- see ../../LICENSE
/////////////////////////////////////////////////////////////////////////////

#include "mainframe.h"  // MainFrame -- Main window

void MainFrame::OnOtherCtrls(wxCommandEvent& WXUNUSED(event))
{
    OtherCtrlsDlg dlg(this);
    dlg.ShowModal();
}
