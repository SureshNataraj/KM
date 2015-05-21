var L_CANCEL_TEXT = "Cancel";
var L_INSERT_TEXT = "Insert";
var L_LINKIMGBORDER_TEXT = "Display a border around the image link";
var L_LINKSELECT_TEXT = "Select a community page: ";
var L_LINKSELECTPAGE_TEXT = "Select Page";
var L_LINKWEB_TEXT = "or type in a URL to a page on the Web: ";
var L_PUTITLEBGCOLOR_TEXT = "Set the Background Color";
var L_PUTITLEFONTFACE_TEXT = "Set the Font Style";
var L_PUTITLEFONTSIZE_TEXT = "Set The Font Size";
var L_PUTITLEIMAGE_TEXT = "Insert/ Edit Image";
var L_PUTITLELINK_TEXT = "Insert/ Edit a link";
var L_PUTITLENEWTABLE_TEXT = "Create/ Edit Table";
var L_PUTITLEPARAGRAPHSTYLE_TEXT = "Set the Paragraph Style";
var L_PUTITLETEXTCOLOR_TEXT = "Set the Text Color";
var L_PUTITLEEMOTICON_TEXT = "Insert Emoticon";
var L_STYLEFORMATTED_TEXT = "Preformatted";
var L_STYLEHEADING_TEXT = "Heading ";
var L_STYLENORMAL_TEXT = "Normal";
var L_STYLESAMPLE_TEXT = "ABCabc012...  ";
var L_TABLEBG_TEXT = "Background";
var L_TABLEBORDERS_TEXT = "Borders";
var L_TABLEINPUTBGCOLOR_TEXT = "Background Color: ";
var L_TABLEINPUTBGIMGURL_TEXT = "Background Image URL: ";
var L_TABLEINPUTBORDER_TEXT = "Border Width: ";
var L_TABLEINPUTBORDERCOLOR_TEXT = "Border Color: ";
var L_TABLEINPUTCELLPADDING_TEXT = "Cell Padding: ";
var L_TABLEINPUTCELLSPACING_TEXT = "Cell Spacing: ";
var L_TABLEINPUTCOLUMNS_TEXT = "Columns: ";
var L_TABLEINPUTROWS_TEXT = "Rows: ";
var L_TABLEPADDINGANDSPACING_TEXT = "Padding and Spacing";
var L_TABLEROWSANDCOLS_TEXT = "Rows and Columns";
var L_TABLEINSERTROW_TEXT = "Insert Row";
var L_TABLEINSERTCELL_TEXT = "Insert Column";
var L_TABLEINSERT_TEXT = "Insert Table";
var L_TABLEUPDATE_TEXT = "Update Table";
var L_TABLENEW_TEXT = "New Table";
var L_TABLEEDIT_TEXT = "Edit Table";
var L_TIPB_TEXT = "Bold";
var L_TIPBGCOLOR_TEXT = "Background Color";
var L_TIPCJ_TEXT = "Center Justify";
var L_TIPCOPY_TEXT = "Copy Text";
var L_TIPCUT_TEXT = "Cut Text";
var L_TIPDINDENT_TEXT = "Decrease Indent";
var L_TIPFGCOLOR_TEXT = "Text Color";
var L_TIPFSIZE_TEXT = "Font Size";
var L_TIPFSTYLE_TEXT = "Font Style";
var L_TIPI_TEXT = "Italic";
var L_TIPIINDENT_TEXT = "Increase Indent";
var L_TIPLINE_TEXT = "Insert Line";
var L_TIPLINK_TEXT = "Insert Link";
var L_TIPLJ_TEXT = "Left Justify";
var L_TIPOL_TEXT = "Numbered List";
var L_TIPP_TEXT = "Paragraph Style";
var L_TIPPASTE_TEXT = "Paste Text";
var L_TIPPICTURE_TEXT = "This functionality is not available now";
var L_TIPRJ_TEXT = "Right Justify";
var L_TIPTABLE_TEXT = "Insert Table";
var L_TIPU_TEXT = "Underline";
var L_TIPUL_TEXT = "Bulleted List";
var L_TIPEMOTICON_TEXT = "Emoticons";
var L_MODETITLE_TEXT = "Advanced HTML Mode";
var L_MODETITLE_TEXT = "Use HTML to create your page.";
var L_MODEDESC_TEXT = " - Edit the HTML formatting commands directly.";
var L_CUSTOMFONT_TEXT = "Other Font...";
var L_CUSTOMFONTENTRY_TEXT = "Enter the name of your font:";
var L_SAMPLEFONTENTRY_TEXT = "Arial, Geneva, Sans-serif";
var L_CLOSEBUTTON_TEXT = "x";
var L_PHOTOURL_TEXT = "";
var L_TBDATABINDING_TEXT = "Columns";
var L_TBDATALABEL_TEXT   = 'Add a placeholder for the selected column.';
var L_DEFAULTHTML_TEXT = "<DIV></DIV>";
// List of emoticon gifs. Add or remove to change selection
// arEmoticons - 12x12 pixels
// arBigEmoticons - 16x16 pixels
var L_EMOTICONPATH_TEXT = "";
var arEmoticons = new Array("emsmile.gif","emsad.gif","emdgust.gif","emcrook.gif","emsmiled.gif","emsmilep.gif","emsmileo.gif","emwink.gif", "emrose.gif","emlips.gif","emunlove.gif","emlove.gif","emvamp.gif","embeer.gif","emcocktl.gif","emgift.gif","ememail.gif","emthdown.gif","emthup.gif","emphone.gif","emphoto.gif","emmessag.gif","emfemale.gif","emmale.gif");
var arBigEmoticons = new Array("emarrow_right.gif","emarrow_left.gif","emmail_alert.gif","emwww_link.gif","emexclaim.gif","emhammer.gif");
// Customize Font List
// FONTNAME_TEXT - Displayed in the pop-up
// FONTNAMEDEF_TEXT - The font definition used in the HTML
var L_FONTARIAL_TEXT = "Arial";
var L_FONTARIALDEF_TEXT = "Geneva, Arial, Sans-serif";
var L_FONTARIALBLACK_TEXT = "Arial Black";
var L_FONTARIALBLACKDEF_TEXT = "Arial Black, Geneva, Arial, Sans-serif";
var L_FONTCOURIERNEW_TEXT = "Courier New";
var L_FONTCOURIERNEWDEF_TEXT = "Courier New, Courier, Monospace";
var L_FONTTIMESNEWROMAN_TEXT = "Times New Roman";
var L_FONTTIMESNEWROMANDEF_TEXT = "Times New Roman, Times, Serif";
var L_FONTVERDANA_TEXT = "Verdana";
var L_FONTVERDANADEF_TEXT = "Verdana, Geneva, Arial, Sans-serif";
var L_LUCIDAHAND_TEXT = "Lucida Handwriting";
var L_LUCIDAHANDDEF_TEXT = "Lucida Handwriting, Cursive";
var L_GARAMOND_TEXT = "Garamond";
var L_GARAMONDDEF_TEXT = "Garamond, Times, Serif";
var L_WEBDINGS_TEXT = "Webdings";
var L_WEBDINGSDEF_TEXT = "Wingdings";
var L_WINGDINGS_TEXT = "Wingdings";
var L_WINGDINGSDEF_TEXT = "Webdings";
// Add/ Remove fonts by modifying array
// _CFont(Definition, Display Text, Symbol)
// Set Symbol=true for non-alphabetic fonts to append display text in default font to the sample string
function _CFont(szDef,szText,bSymbol) {
return new Array(szDef,szText,bSymbol);
};
defaultFonts = new Array();
defaultFonts[0] = _CFont(L_FONTARIALDEF_TEXT, L_FONTARIAL_TEXT, false);
defaultFonts[1] = _CFont(L_FONTARIALBLACKDEF_TEXT, L_FONTARIALBLACK_TEXT, false);
defaultFonts[2] = _CFont(L_FONTVERDANADEF_TEXT, L_FONTVERDANA_TEXT, false);
defaultFonts[3] = _CFont(L_FONTTIMESNEWROMANDEF_TEXT, L_FONTTIMESNEWROMAN_TEXT, false);
defaultFonts[4] = _CFont(L_GARAMONDDEF_TEXT,L_GARAMOND_TEXT, false);
defaultFonts[5] = _CFont(L_LUCIDAHANDDEF_TEXT,L_LUCIDAHAND_TEXT, false);
defaultFonts[6] = _CFont(L_FONTCOURIERNEWDEF_TEXT, L_FONTCOURIERNEW_TEXT, false);
defaultFonts[7] = _CFont(L_WEBDINGSDEF_TEXT, L_WEBDINGS_TEXT, true);
defaultFonts[8] = _CFont(L_WINGDINGSDEF_TEXT, L_WINGDINGS_TEXT, true);
// Width of each toolbar button
// Entry 5-8 are specify "Paragraph","Font Style", and "Font Size" respectively
// Update widths if localized
var L_TOOLBARGIF_TEXT = "rte_tbEN.gif";
var PHOTO_URL = L_PHOTOURL_TEXT
var aSizes = new Array(25,25,25,7,80,76,71,7,25,25,25,8,25,25,25,8,25,25,25,25,8,25,25,25,25,8,25,25,8,25);