import pandas as pd
from sqlalchemy import create_engine

# 1. READ DATA
print("Reading CSV...")
try:
    df = pd.read_csv('data/SampleSuperstore.csv', encoding='windows-1252')
    
    # 2. RENAME COLUMNS TO MATCH SQL
    # We strip spaces and make lowercase (e.g., 'Ship Mode' -> 'ship_mode')
    df.columns = [c.strip().lower().replace(' ', '_').replace('-', '_') for c in df.columns]

    # 3. CONNECT TO SQL
    # Note: If you run this on your machine, make sure 'password' is your actual password.
    # For GitHub upload, keep it as 'password' or a dummy value.
    db_connection_str = 'mysql+mysqlconnector://root:password@localhost/supply_chain_db'
    db_connection = create_engine(db_connection_str)

    # 4. LOAD TO SQL
    print("Loading data into SQL...")
    df.to_sql('retail_sales', con=db_connection, if_exists='append', index=False)
    
    print("SUCCESS: Data successfully loaded into SQL!")

except Exception as e:
    print(f"Error: {e}")