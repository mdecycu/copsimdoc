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
<v t="leo.20220811153522.1"><vh>@data import-html-tags</vh></v>
</v>
<v t="leo.20220622162834.1"><vh>About </vh></v>
<v t="leo.20220623000948.1"><vh>Python programs</vh>
<v t="leo.20220623000948.2"><vh>@path ./</vh>
<v t="leo.20220623000948.3"><vh>@clean get_div.py</vh>
<v t="leo.20220623000948.4"><vh>Declarations</vh></v>
</v>
<v t="leo.20220623000949.1"><vh>@clean read_html_titles.py</vh>
<v t="leo.20220623000949.2"><vh>Declarations</vh></v>
</v>
</v>
</v>
<v t="leo.20220518161142.1"><vh>recursive importer</vh></v>
<v t="leo.20220811153642.1"><vh>modified wb_tree.html make div includes all html files</vh>
<v t="leo.20220811153642.2"><vh>@auto C:/portable_2022_fall/tmp/mdecycu/copsimdoc/wb_tree.html</vh></v>
</v>
<v t="leo.20220811234602.1"><vh>wb_tree.html 處理</vh></v>
<v t="leo.20220812002135.1"><vh>html 處理</vh></v>
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
    theTypes = ['.py'] 
)</t>
<t tx="leo.20220622162834.1">希望能在近端利用 Python 或 Javascript 導入並編輯 html 檔案
使用 bs4

    https://stackoverflow.com/questions/35355225/edit-and-create-html-file-using-python

利用  Leo Editor 的 @data import-html-tags 設定, 選擇要導入的標註

    https://groups.google.com/g/leo-editor/c/kgwfUHJdM1s

採用 cmsimde 架構, 將 html 檔案以自動擷取標題的方式導入</t>
<t tx="leo.20220623000948.1"></t>
<t tx="leo.20220623000948.2"></t>
<t tx="leo.20220623000948.3">@path ./
@others
@language python
@tabwidth -4
</t>
<t tx="leo.20220623000948.4"># 必須要先將原 htm 中的 h1, h2 與 h3 全部換為 h4 之後再轉檔
# 請注意, wb_tree.html 中的特定 .htm 區段並沒有採用統一的 id 註記標號
# 這裡可能要手動檢查與處以
from bs4 import BeautifulSoup
with open("wb_tree.html") as f:
    data = f.read()

soup = BeautifulSoup(data, 'html.parser')
'''
#finding the div with the id
ids = [tag['id'] for tag in soup.select('div[id]')]
  
print(ids)
'''
'''
['folder.1', 'folder.1.1', 'folder.2', 'folder.2.1', 'folder.3', 'folder.4', 'folder.4.1', 'folder.4.1.1', 'folder.4.1.2', 'folder.4.1.3', 'folder.4.1.4', 'folder.4.1.4.1', 'folder.4.1.4.1.1', 'folder.4.1.4.2', 'folder.4.1.5', 'folder.4.1.5.1', 'folder.4.1.5.1.1', 'folder.4.1.6', 'folder.4.1.7', 'folder.4.1.8', 'folder.4.1.8.1', 'folder.4.1.9', 'folder.4.1.10', 'folder.4.1.11', 'folder.4.1.12', 'folder.5', 'folder.5.1', 'folder.5.1.1', 'folder.5.1.2', 'folder.5.2', 'folder.5.2.1', 'folder.5.2.2', 'folder.5.3', 'folder.5.3.1', 'folder.5.4', 'folder.5.5', 'folder.5.5.1', 'folder.5.5.2', 'folder.5.5.2.1', 'folder.5.5.2.2', 'folder.5.6', 'folder.5.7', 'folder.5.8', 'folder.5.9', 'folder.5.9.1', 'folder.5.9.2', 'folder.5.10', 'folder.5.11', 'folder.6', 'folder.6.1', 'folder.6.1.1', 'folder.6.1.1.1', 'folder.6.1.2', 'folder.6.2', 'folder.7', 'folder.8', 'folder.8.1']
'''
'''
for ID in soup.find_all('div', id=True):  
    print(ID.get('id'))
'''
'''
folder.1
folder.1.1
folder.2
folder.2.1
folder.3
folder.4
folder.4.1
folder.4.1.1
folder.4.1.2
folder.4.1.3
folder.4.1.4
folder.4.1.4.1
folder.4.1.4.1.1
folder.4.1.4.2
folder.4.1.5
folder.4.1.5.1
folder.4.1.5.1.1
folder.4.1.6
folder.4.1.7
folder.4.1.8
folder.4.1.8.1
folder.4.1.9
folder.4.1.10
folder.4.1.11
folder.4.1.12
folder.5
folder.5.1
folder.5.1.1
folder.5.1.2
folder.5.2
folder.5.2.1
folder.5.2.2
folder.5.3
folder.5.3.1
folder.5.4
folder.5.5
folder.5.5.1
folder.5.5.2
folder.5.5.2.1
folder.5.5.2.2
folder.5.6
folder.5.7
folder.5.8
folder.5.9
folder.5.9.1
folder.5.9.2
folder.5.10
folder.5.11
folder.6
folder.6.1
folder.6.1.1
folder.6.1.1.1
folder.6.1.2
folder.6.2
folder.7
folder.8
folder.8.1
'''
'''
# get anchor under div, and print text
for a in soup.select('div a[href]'):
    print (a.text)
'''
def readFile(path):
    """Read file content by given path
    """
    with open(path, encoding="utf-8") as f:
        data = f.read()
        # h1, h2 and h3 replaced with h4
        data = data.replace("&lt;h1&gt;", "&lt;h4&gt;")
        data = data.replace("&lt;/h1&gt;", "&lt;/h4&gt;")
        data = data.replace("&lt;h2&gt;", "&lt;h4&gt;")
        data = data.replace("&lt;/h2&gt;", "&lt;/h4&gt;")
        data = data.replace("&lt;h3&gt;", "&lt;h4&gt;")
        data = data.replace("&lt;/h3&gt;", "&lt;/h4&gt;")
    return data
    
def getBody(path):
    """Get html body content by given file path
    """
    soup = BeautifulSoup(readFile(path), 'html.parser')
    body = soup.find('body')
    # get body content without body tag
    return str(body.findChildren(recursive=False))
    
def pageLevel(id):
    # 利用 folder 字串切割 anchor 中的 name 屬性, 藉以判斷其階次
    '''
    最前段的 name 屬性
    link0folder.0
    link1folder
    link2folder
    link3folder
    link4folder
    link5folder
    link6folder.1
    link7folder.1
    link8folder.1.1
    '''
    levelStr = id.split("folder")[1]
    length = len(levelStr)
    if length == 2:
        return 1
    elif length == 4:
        return 2
    elif length == 0:
        return 4
    else:
        return 3
        
def makePage(pageList):
    body = getBody(pageList[2])
    #print(body)
    if pageLevel(pageList[0]) == 1:
        content = "&lt;h1&gt;" + pageList[1] + "&lt;/h1&gt;" + body[1:-1]
    elif pageLevel(pageList[0]) == 2:
        content = "&lt;h2&gt;" + pageList[1] + "&lt;/h2&gt;" + body[1:-1]
    elif pageLevel(pageList[0]) == 3:
        content = "&lt;h3&gt;" + pageList[1] + "&lt;/h3&gt;" + body[1:-1]
    else:
        content = "&lt;h4&gt;" + pageList[1] + "&lt;/h4&gt;" + body[1:-1]
    return content
    
count = 0
page_info = []
'''
for i in zip(soup.find_all('div', id=True), soup.select('div a[href]')):
    count += 1
    # folder, page_title, page_location
    #print(i[0].get('id'), i[1].text, i[1]['href'])
    page_info.append([i[0].get('id'), i[1].text, i[1]['href']])
'''
for i in soup.select('div a[href]'):
    count += 1
    #print(i['name'])
    # need to remove "/" in i.text
    second = i.text.replace("/", "")
    page_info.append([i['name'], i.text, i['href']])
    #print(i['name'], i.text)
#print("total html:" + str(count))
#print(page_info)
# 修正 wb_tree.html 中的 div 位置後, html 總數為 177 個
# 因為每一個 div 中有多個 htm 檔案, 因此不能以 div 界定而要以 div 中的 a 中的 name 界定頁面 level
#first = ['link0folder.0', 'CoppeliaSim User Manual', 'en/welcome.htm']
#print(readFile(first[2]))
#print(getBody(first[2]))
contentHtml = ""
for i in page_info:
    eachPage = makePage(i)
    contentHtml += eachPage
print(contentHtml)




</t>
<t tx="leo.20220623000949.1">@path ./
@others
@language python
@tabwidth -4
</t>
<t tx="leo.20220623000949.2">with open("html_title.txt") as f:
    data = f.read().splitlines()

#print(data)

title = []
for i in data:
    if i != "":
        title.append(i)
#print(title)
for i in title:
    print(i)
    
'''
由檔案名稱取得 h1 標題, 然後透過 bs4 整理出 body 內容, 然後全部以 h1 拼成 content.htm

問題: 可以從 web_tree.html 取得各 html 的從屬關係嗎?
'''
    
</t>
<t tx="leo.20220811153522.1">div</t>
<t tx="leo.20220811153642.1"></t>
<t tx="leo.20220811234602.1">除掉 &lt;img src="wb_img/node.png"&gt;
</t>
<t tx="leo.20220812002135.1">檢查是有 page title 中的 space 必須移除才可與原手冊的頁面連結相對應

要設法區分頁面 title 與 file name, 照理說應該以 file name 作為頁面 title 才能與原手冊中的連結對應

但是動態網頁中的 get_page 若以 title.htm 取標題為 title 的頁面, 則無法取得, 為了讓動態與靜態網頁能與原手冊中的連結對應, 看是否可以讓 get_page 可以取 title 不行後, 再取 title.htm?

意即, get_page 函式針對頁面標題帶有 .htm 的字串時, 會自動去除 .htm 之後, 再取頁面內容!

也就是配合 pjcopsim 的 cmsimde 若無法採用統一的頁面擷取模式, 就必須自行客製化.

而且因為標題的字串頗長, 或許連下拉式功能表也必須額外配合修改</t>
</tnodes>
</leo_file>
