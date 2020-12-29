#! python3

# Web Scraper which will scrape latest schemes from the government website when run 
 
import requests, bs4, json

url = 'https://krishijagran.com/agripedia/best-government-schemes-and-programmes-in-agriculture-for-farmers/'
data = {}
data['scheme'] = []

# Get the page and check for any HTTP error while doing so
res = requests.get(url)
res.raise_for_status()

# Retrieve the data of the site
soup = bs4.BeautifulSoup(res.text,'lxml')

# Fetch all the headings of the Schemes
for child in soup.find_all("h3"):
	if(child.contents[0].name == "strong"):
		 print(child.string)
		 #soup.find('div', class_='detail_date').find('dt', text='Date').find_next_sibling('dd').text
		 details = child.find_next_sibling('p');
		 print(details.text.strip()) 
		 if(details.find('a', href=True)):
		 	print(details.find('a', href=True)['href'])
		 print("\n")
		# # putting everything in json foromat
		# data['scheme'].append({
		#     'title': child.string,
		#     'details': 'will put detais here',
		#     'link': 'will put link here if found any'
		# })

# fetching detais for the file
# for details in soup.find_all("p"):
# 	if(details.previous_sibling.name == "h3"):
# 		print(details.string)
# 	else:
# 		print("not found");

# putting stuff in json file
# with open('results.json', 'w') as outfile:
#     json.dump(data, outfile)