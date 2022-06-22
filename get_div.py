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
for i in zip(soup.find_all('div', id=True), soup.select('div a[href]')):
    print(i[0].get('id'), i[1].text)