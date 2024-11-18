///////////////////////////////////////////////////////////////////////////////
// Code generated by wxUiEditor - see https://github.com/KeyWorksRW/wxUiEditor/
//
// Do not edit any code above the "End of generated code" comment block.
// Any changes before that block will be lost if it is re-generated!
///////////////////////////////////////////////////////////////////////////////

// clang-format off

#pragma once

#include <wx/event.h>
#include <wx/font.h>
#include <wx/frame.h>
#include <wx/gdicmn.h>
#include <wx/grid.h>
#include <wx/menu.h>
#include <wx/propgrid/manager.h>
#include <wx/propgrid/propgrid.h>
#include <wx/splitter.h>
#include <wx/statusbr.h>
#include <wx/toolbar.h>

#include "derived_classes/drv_frame.h"
class drvStatusBar;

namespace wxue_img
{
    // ../art/wxDialog.png
    extern const unsigned char wxDialog_png[636];
    // ../art/wxToolBar.png
    extern const unsigned char wxToolBar_png[554];
    // ../art/wxWizard.png
    extern const unsigned char wxWizard_png[1047];
}

class MainFrame : public drvFrame
{
public:
    MainFrame() {}
    MainFrame(wxWindow* parent, wxWindowID id = wxID_ANY, const wxString& title = "SDI Tests", const wxPoint& pos =
        wxDefaultPosition, const wxSize& size = wxSize(500, 300), long style = wxDEFAULT_FRAME_STYLE|wxTAB_TRAVERSAL,
        const wxString &name = wxFrameNameStr)
    {
        Create(parent, id, title, pos, size, style, name);
    }
    bool Create(wxWindow *parent, wxWindowID id = wxID_ANY, const wxString& title = "SDI Tests", const wxPoint& pos =
        wxDefaultPosition, const wxSize& size = wxSize(500, 300), long style = wxDEFAULT_FRAME_STYLE|wxTAB_TRAVERSAL,
        const wxString &name = wxFrameNameStr);

protected:

    // Event handlers

    void OnBitmapsDlg(wxCommandEvent& event);
    void OnBookTestDlg(wxCommandEvent& event);
    void OnCommonDialog(wxCommandEvent& event);
    void OnDataDlg(wxCommandEvent& event);
    void OnDlgIssue_956(wxCommandEvent& event);
    void OnDlgIssue_960(wxCommandEvent& event);
    void OnGridSize(wxSizeEvent& event);
    void OnMainTestDlg(wxCommandEvent& event);
    void OnPropSheetDlg(wxCommandEvent& event);
    void OnPythonDlg(wxCommandEvent& event);
    void OnQuit(wxCommandEvent& event);
    void OnToolsDlg(wxCommandEvent& event);
    void OnWizard(wxCommandEvent& event);

    // Class member variables

    drvStatusBar* m_statusBar;
    wxGrid* m_kicadGrid;  // Grid imported from a kicad dialog, utilizing column sizes and labels
    wxMenu* menu;
    wxPGProperty* propertyGridItem;
    wxPGProperty* propertyGridItem_2;
    wxPGProperty* propertyGridItem_3;
    wxPGProperty* propertyGridItem_4;
    wxPGProperty* propertyGridItem_5;
    wxPGProperty* propertyGridItem_6;
    wxPGProperty* propertyGridItem_7;
    wxPGProperty* propertyGridItem_8;
    wxPropertyGridManager* propertyGridManager;
    wxPropertyGridPage* propertyGridPage;
    wxPropertyGridPage* propertyGridPage_2;
    wxSplitterWindow* splitter;
    wxToolBar* m_toolBar;
};

// ************* End of generated code ***********
// DO NOT EDIT THIS COMMENT BLOCK!
//
// Code below this comment block will be preserved
// if the code for this class is re-generated.
//
// clang-format on
// ***********************************************
