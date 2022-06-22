with open("html_title.txt") as f:
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
    
