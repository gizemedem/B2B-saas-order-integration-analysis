# User Stories – B2B SaaS Order Integration

## US-001: Order Sync Validation
As a Business Analyst,
I want to validate whether all B2B orders are successfully transferred to ERP system,
So that no order is lost in integration.

**Acceptance Criteria:**
- All Orders must exist in ERP_Transactions table
- Missing records should be flagged

---

## US-002: Price Consistency Check
As a Business Analyst,
I want to ensure product prices in Orders match master product data,
So that pricing integrity is maintained.

**Acceptance Criteria:**
- OrderItems.UnitPrice = Products.Price
- Any mismatch must be reported

---

## US-003: Stock Availability Validation
As a Business Analyst,
I want to ensure orders are only completed if stock is available in ERP,
So that customers do not order unavailable products.

**Acceptance Criteria:**
- Orders with SyncStatus = Failed must include error reason

---

## US-004: Duplicate Order Detection
As a Business Analyst,
I want to detect duplicate order synchronizations,
So that ERP system does not process same order twice.
