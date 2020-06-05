import pandas as pd

file_name = './RoamioData-06042020.xlsx'
excel_file = pd.ExcelFile(file_name)

for sheet in excel_file.sheet_names:

  df = pd.read_excel(file_name, sheet_name = sheet)
  column_data = df.iloc[:, 1].tolist()
  
  skipped_items = 0
  for index, item in enumerate(column_data, start=0):

    if ( pd.isnull(item) ):
      skipped_items += 1
      continue

    print('Item(id: {}, text: "{}", interest: 0),'.format(index - skipped_items, item))