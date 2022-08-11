from bs4 import BeautifulSoup
with open("wb_tree.html") as f:
    data = f.read()
 
soup = BeautifulSoup(data, 'html.parser')
count = 0
# get anchor under div, and print text
for a in soup.select('div a[href]'):
    count += 1
    print (str(count) + str(a['href']))
    
    

'''
for ul in soup.find_all('ul', class_='listing'):
    for li in ul.find_all('li'):
        a = li.find('a')
        print(a['href'], a.get_text())
'''