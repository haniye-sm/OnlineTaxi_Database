## Database type

- **Database system:** MSSQL
## Table structure

### Passengers

| Name        | Type          | Settings                      | References                    | Note                           |
|-------------|---------------|-------------------------------|-------------------------------|--------------------------------|
| **UserID** | INTEGER | 🔑 PK, not null , unique, autoincrement |  | |
| **Fullname** | NVARCHAR(255) | not null  |  | |
| **PhoneNumber** | NVARCHAR(255) | not null , unique |  | |
| **Registration date** | DATE | not null  |  | | 


### Drivers

| Name        | Type          | Settings                      | References                    | Note                           |
|-------------|---------------|-------------------------------|-------------------------------|--------------------------------|
| **DriverID** | INTEGER | 🔑 PK, not null , unique, autoincrement | Drivers_DriverID_fk | |
| **CabID** | INTEGER | not null  | Drivers_CabID_fk | |
| **IDcode** | NVARCHAR(10) | not null  |  | |
| **PhoneNumber** | NVARCHAR(20) | not null , unique |  | |
| **Gender** | NVARCHAR(255) | not null  |  | |
| **City** | NVARCHAR(255) | not null  |  | |
| **FullName** | NVARCHAR(100) | not null  |  | |
| **Profilepic** | VARBINARY(255) | not null  |  | |
| **LicenseImage** | VARBINARY(255) | not null  |  | |
| **Registrationdate** | DATE | not null  |  | | 


### Cabs

| Name        | Type          | Settings                      | References                    | Note                           |
|-------------|---------------|-------------------------------|-------------------------------|--------------------------------|
| **CabID** | INTEGER | 🔑 PK, not null , unique, autoincrement |  | |
| **DriverID** | INTEGER | not null  |  | |
| **Car_model** | NVARCHAR(255) | not null  |  | |
| **Car_Document** | VARBINARY(255) | not null  |  | | 


### Trips

| Name        | Type          | Settings                      | References                    | Note                           |
|-------------|---------------|-------------------------------|-------------------------------|--------------------------------|
| **TripID** | INTEGER | 🔑 PK, not null , unique, autoincrement |  | |
| **DriverID** | INTEGER | not null  |  | |
| **UserID** | INTEGER | not null  | Trips_UserID_fk | |
| **PickupLocation** | NVARCHAR(255) | not null  |  | |
| **Destination** | NVARCHAR(255) | not null  |  | |
| **PaymentAmout** | DECIMAL | not null  |  | |
| **PaymentMethod** | NVARCHAR(255) | not null  |  | |
| **Ending** | DATETIME | not null  |  | |
| **Rate** | INTEGER | not null  |  | |
| **Start** | DATETIME | not null  |  | | 


## Relationships

- **Trips to Passengers**: many_to_one
- **Drivers to Cabs**: one_to_one
- **Drivers to Trips**: one_to_many


		
