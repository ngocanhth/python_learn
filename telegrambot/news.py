from telegram import Update
from telegram.ext import ApplicationBuilder, CommandHandler, ContextTypes
import requests
from bs4 import BeautifulSoup
import time

def get_news():
    list_news = []
    r = requests.get("https://vnexpress.net/")
    soup = BeautifulSoup(r.text, 'html.parser')
    mydivs = soup.find_all("h3", {"class": "title-news"})

    for new in mydivs:
        newdict = {}
        newdict["link"] = new.a.get("href")
        newdict["title"] = new.a.get("title")
        list_news.append(newdict)

    return list_news

# def news(update: Update, context: CallbackContext) -> None:
#     data = get_news()
#     str1 = ""
#
#     for item in data:
#         str1 += item["title"] + "\n"
#     update.message.reply_text(f'{str1}')

async def hello(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    await update.message.reply_text(f'Hello {update.effective_user.first_name}')

async def news(update: Update, context: ContextTypes.DEFAULT_TYPE) -> None:
    data = get_news()
    str1 = ""
    for item in data:
        # str1 += item["link"] + "\n"
        str1 = item["link"] + "\n"
        time.sleep(15)
        await update.message.reply_text(f'News: {str1}')

app = ApplicationBuilder().token("5789306904:AAE7xES9xB1yLstkWweqGsrDpoGUcmrQo8k").build()

app.add_handler(CommandHandler("hello", hello))
app.add_handler(CommandHandler("news", news))

app.run_polling()