<?xml version="1.0" encoding="utf-8"?>
<!-- Created by Leo: http://leoeditor.com/leo_toc.html -->
<leo_file xmlns:leo="http://leoeditor.com/namespaces/leo-python-editor/1.1" >
<leo_header file_format="2"/>
<globals/>
<preferences/>
<find_panel_settings/>
<vnodes>
<v t="leo.20220518161022.1"><vh>@settings</vh>
<v t="leo.20220518161022.2"><vh>@data qt-gui-plugin-style-sheet</vh></v>
<v t="leo.20220518161022.3"><vh>@string initial_split_orientation = horizontal</vh></v>
<v t="leo.20220518161101.1"><vh>@@data import-xml-tags</vh></v>
</v>
<v t="leo.20220622162834.1"><vh>About </vh></v>
<v t="leo.20220518161142.1"><vh>recursive importer</vh></v>
</vnodes>
<tnodes>
<t tx="leo.20220518161022.1"></t>
<t tx="leo.20220518161022.2">QTreeWidget {
    /* These apply to the selected item, but not to editing items.*/
    background-color: #ffffec; /* Leo's traditional tree color */
    selection-color: black; /* was white */
    selection-background-color: lightgrey;
    /* font-family: SansSerif; */
    /*font-family: DejaVu Sans Mono;*/
    font-family:YaHei Mono;
    /* 標題字型大小設定 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
 }

/* Headline edit widgets */
QTreeWidget QLineEdit {
    background-color: cornsilk;
    selection-color: white;
    selection-background-color: blue;
    /*font-family: DejaVu Sans Mono;*/    
    font-family:YaHei Mono;
    /* 沒有特別對應字型大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The log panes */
QTextEdit {
    background-color: #f2fdff;
    selection-color: red;
    selection-background-color: blue;
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* log font 大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal, italic,oblique */
}

/* The body pane */
QTextEdit#richTextEdit {
    background-color: #fdf5f5; /* A kind of pink. */
    selection-color: white;
    selection-background-color: red;
    /*font-family: DejaVu Sans Mono;*/
    /* font-family: Courier New; */
    font-family:YaHei Mono;
    /* 內文字型大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

QLabel {
    font-family:YaHei Mono;'CherryPy', 'pytz', 'mako', 'beautifulsoup4', 'pymysql', 'peewee'
    /* 下方的 Minibuffer 標題字型大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
}

/* Editor labels */
QLineEdit#editorLabel {
    background-color: #ffffec;
    font-family:YaHei Mono;
    /* 沒有直接對應字型大小 */
    font-size: 30px;
    font-weight: normal; /* normal,bold,100,..,900 */
    font-style: normal; /* normal,italic,oblique */
    border: 2px;
    margin: 2px;
}</t>
<t tx="leo.20220518161022.3">horizontal: body pane to the left
vertical: body pane on the botton</t>
<t tx="leo.20220518161101.1">UsesMasterModel
Units
References
PaletteEntry
TemplateFileType
ObjectData
PreviewImage
Filename
Palette
Presentation</t>
<t tx="leo.20220518161142.1">'''Recursively import all python files in a directory and clean the result.'''
# ctrl + b to execute

c.recursiveImport(
    dir_ = r'./',
    kind = '@clean', # The new best practice.
    safe_at_file = False,
    theTypes = ['.htm'] 
)</t>
<t tx="leo.20220622162834.1">希望能在近端利用 Python 或 Javascript 導入並編輯 html 檔案
使用 bs4

    https://stackoverflow.com/questions/35355225/edit-and-create-html-file-using-python

利用  Leo Editor 的 @data import-html-tags 設定, 選擇要導入的標註

    https://groups.google.com/g/leo-editor/c/kgwfUHJdM1s

採用 cmsimde 架構, 將 html 檔案以自動擷取標題的方式導入</t>
</tnodes>
</leo_file>
