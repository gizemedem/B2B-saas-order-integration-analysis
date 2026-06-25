flowchart TD

A[Customer Order Placed] --> B[B2B Platform API]
B --> C{Validation Layer}

C -->|Valid| D[ERP System]
C -->|Invalid| E[Error Log + Notification]

D --> F[Stock Update]
D --> G[Invoice Generation]

F --> H[Success Response]
G --> H
