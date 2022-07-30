import gspread

gs = gspread.service_account("cre.json")
sht = gs.open_by_key('1L9EagSgnx_BPDXly1opOxTi79GXCOJxdjy0WW_yiKO8')
print(sht.title)
value = sht.sheet1.acell("B1").value

print(value)