task 1
import pandas as pd
import sqlite3
with sqlite3.connect('chinook.db') as conn:
    costumers=pd.read_sql_query("SELECT CustomerId, FirstName, LastName FROM customers", conn)
    invoice_itmes=pd.read_sql_query('select * from invoice_items',conn)
    invoices=pd.read_sql_query("SELECT InvoiceId, CustomerId, Total FROM invoices", conn)

savdo_tarixi=invoices.merge(costumers,on='CustomerId')
umumiy_mijoz=savdo_tarixi.groupby(['CustomerId','FirstName','LastName'])['Total'].sum().reset_index()

top_5_mijoz=umumiy_savdo_mijoz.sort_values(by="Total",ascending=False).head(5)
top_5_mijoz
task 2
import sqlite3
import pandas as pd

# Bazaga ulanish
conn = sqlite3.connect("chinook.db")

# 1. Kerakli jadvallarni o'qish
invoice_items = pd.read_sql_query("SELECT InvoiceId, TrackId FROM invoice_items", conn)
invoices = pd.read_sql_query("SELECT InvoiceId, CustomerId FROM invoices", conn)
tracks = pd.read_sql_query("SELECT TrackId, AlbumId FROM tracks", conn)

# 2. Xarid qilingan treklar va mijozlarni birlashtirish
purchases = invoice_items.merge(invoices, on="InvoiceId")

# 3. Xarid qilingan treklar qaysi albomga tegishli ekanini qo'shish
purchases = purchases.merge(tracks, on="TrackId")

# 4. Har bir albomdagi treklar soni
album_track_counts = tracks.groupby("AlbumId")["TrackId"].count().reset_index()
album_track_counts.rename(columns={"TrackId": "AlbumTrackCount"}, inplace=True)

# 5. Har bir mijoz-albom kombinatsiyasida qancha trek sotib olganini hisoblash
customer_album = (
    purchases.groupby(["CustomerId", "AlbumId"])["TrackId"]
    .nunique()
    .reset_index()
    .rename(columns={"TrackId": "TracksPurchased"})
)

# 6. Albomdagi jami trek soni bilan birlashtirish
customer_album = customer_album.merge(album_track_counts, on="AlbumId")

# 7. To'liq albom xaridi yoki individual trek xaridi sifatida belgilash
customer_album["PurchaseType"] = customer_album.apply(
    lambda row: "Full Album" if row["TracksPurchased"] == row["AlbumTrackCount"] else "Individual Tracks",
    axis=1
)

# 8. Har bir mijozni kategoriya bo'yicha belgilash:
# Agar mijoz kamida bitta to'liq albom xarid qilgan bo'lsa -> "Full Album Buyer", aks holda -> "Individual Track Buyer"
def classify_customer(group):
    if "Full Album" in group["PurchaseType"].values:
        return "Full Album Buyer"
    else:
        return "Individual Track Buyer"

customer_categories = customer_album.groupby("CustomerId").apply(classify_customer).reset_index()
customer_categories.columns = ["CustomerId", "Category"]

# 9. Har bir kategoriya bo'yicha mijozlarning foizini hisoblash
summary = customer_categories["Category"].value_counts(normalize=True) * 100
summary = summary.reset_index()
summary.columns = ["Category", "Percentage"]

# Natijani chiqarish
print("Mijozlar kategoriyalari bo'yicha foiz taqsimoti:")
print(summary)

