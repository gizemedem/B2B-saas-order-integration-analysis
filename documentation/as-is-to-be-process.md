AS-IS (MEVCUT DURUM)
Customer places order
        ↓
B2B Platform sends API request
        ↓
ERP receives data (sometimes incomplete)
        ↓
Stock update delayed or missing
        ↓
Invoice mismatch occurs
        ↓
Manual correction needed



TO-BE (HEDEF DURUM)
Customer places order
        ↓
API Gateway validates data
        ↓
Business rules engine checks:
   - stock
   - price
   - customer validity
        ↓
Clean data sent to ERP
        ↓
ERP updates instantly
        ↓
Success confirmation logged
