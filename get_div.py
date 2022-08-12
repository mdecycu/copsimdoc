# 必須要先將原 htm 中的 h1, h2 與 h3 全部換為 h4 之後再轉檔
# 請注意, wb_tree.html 中的特定 .htm 區段並沒有採用統一的 id 註記標號
# 這裡可能要手動檢查與處以
from bs4 import BeautifulSoup
with open("wb_tree.html") as f:
    data = f.read()
soup = BeautifulSoup(data, 'html.parser')

def readFile(path):
    """Read file content by given path
    """
    with open(path, encoding="utf-8") as f:
        data = f.read()
        # 嘗試在此將所有 .htm 連結改為 .html
        data = data.replace(".htm", ".html")
        
        # h1, h2 and h3 replaced with h4
        data = data.replace("<h1>", "<h4>")
        data = data.replace("</h1>", "</h4>")
        data = data.replace("<h2>", "<h4>")
        data = data.replace("</h2>", "</h4>")
        data = data.replace("<h3>", "<h4>")
        data = data.replace("</h3>", "</h4>")
        # 修改 <img src="images/ 為 <img src="/images/
        data = data.replace('<img src="images/', '<img src="/images/')
    return data
    
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
        content = "<h1>" + pageList[1] + "</h1>" + body[1:-1]
    elif pageLevel(pageList[0]) == 2:
        content = "<h2>" + pageList[1] + "</h2>" + body[1:-1]
    elif pageLevel(pageList[0]) == 3:
        content = "<h3>" + pageList[1] + "</h3>" + body[1:-1]
    else:
        content = "<h4>" + pageList[1] + "</h4>" + body[1:-1]
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
    #second = i.text.replace("/", "")
    # 嘗試將 i['href'] 去掉 en/ 與 .htm 作為頁面標題, 看是否可以讓原先的連結直接生效
    second = i['href'].replace("en/", "")
    second = second.replace(".htm", "")
    page_info.append([i['name'], second, i['href']])
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




