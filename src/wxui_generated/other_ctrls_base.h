///////////////////////////////////////////////////////////////////////////////
// Code generated by wxUiEditor - see https://github.com/KeyWorksRW/wxUiEditor/
//
// Do not edit any code above the "End of generated code" comment block.
// Any changes before that block will be lost if it is re-generated!
///////////////////////////////////////////////////////////////////////////////

// clang-format off

#pragma once

#include <wx/calctrl.h>
#include <wx/clrpicker.h>
#include <wx/datectrl.h>
#include <wx/dateevt.h>
#include <wx/dialog.h>
#include <wx/dirctrl.h>
#include <wx/filepicker.h>
#include <wx/font.h>
#include <wx/fontpicker.h>
#include <wx/gdicmn.h>
#include <wx/html/htmlwin.h>
#include <wx/hyperlink.h>
#include <wx/notebook.h>
#include <wx/richtext/richtextctrl.h>
#include <wx/scrolbar.h>
#include <wx/spinbutt.h>
#include <wx/spinctrl.h>
#include <wx/srchctrl.h>
#include <wx/stc/stc.h>
#include <wx/tglbtn.h>
#include <wx/timectrl.h>

class OtherCtrlsBase : public wxDialog
{
public:
    wxHtmlWindow* m_htmlWin;

    OtherCtrlsBase() {}
    OtherCtrlsBase(wxWindow *parent, wxWindowID id = wxID_ANY, const wxString& title = "NoteBook Dialog",
        const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize,
        long style = wxDEFAULT_DIALOG_STYLE|wxRESIZE_BORDER, const wxString &name = wxDialogNameStr)
    {
        Create(parent, id, title, pos, size, style, name);
    }

    bool Create(wxWindow *parent, wxWindowID id = wxID_ANY, const wxString& title = "NoteBook Dialog",
        const wxPoint& pos = wxDefaultPosition, const wxSize& size = wxDefaultSize,
        long style = wxDEFAULT_DIALOG_STYLE|wxRESIZE_BORDER, const wxString &name = wxDialogNameStr);

protected:

    // Validator variables

    int m_spinValidate { 4 };

    // Class member variables

    wxCalendarCtrl* m_calendar;
    wxColourPickerCtrl* m_colourPicker;
    wxDatePickerCtrl* m_datePicker;
    wxDirPickerCtrl* m_dirPicker;
    wxFilePickerCtrl* m_filePicker;
    wxFontPickerCtrl* m_fontPicker;
    wxGenericDirCtrl* m_genericDirCtrl;
    wxHyperlinkCtrl* m_hyperlink;
    wxNotebook* m_notebook;
    wxRichTextCtrl* m_richText;
    wxScrollBar* m_scrollBar;
    wxSearchCtrl* m_searchCtrl;
    wxSpinButton* m_spinBtn;
    wxSpinCtrl* m_spinCtrl;
    wxSpinCtrlDouble* m_spinCtrlDouble;
    wxStyledTextCtrl* m_scintilla;
    wxTimePickerCtrl* m_timePicker;
    wxToggleButton* m_toggleBtn;
};

// ************* End of generated code ***********
// DO NOT EDIT THIS COMMENT BLOCK!
//
// Code below this comment block will be preserved
// if the code for this class is re-generated.
//
// clang-format on
// ***********************************************
