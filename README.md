# Gym Management Database (MySQL)

A relational database for a fitness gym that manages **members, trainers and memberships**, built to practice SQL on a realistic business case.

The project started as a Microsoft Access application at university and is now being rebuilt in SQL, step by step.

## Database schema

| Table | Description |
|---|---|
| `ANTRENORI` | Trainers |
| `MEMBRI` | Gym members – each member can have **one trainer or none** |
| `ABONAMENTE` | Memberships – each member can buy **many memberships** over time (1:N) |

**Design decisions**
- The foreign key `id_membru` is stored in `ABONAMENTE`, on the "many" side of the 1:N relationship.
- `id_antrenor` in `MEMBRI` allows `NULL`, because members are not required to have a personal trainer.
- Tables are created in dependency order: `ANTRENORI` → `MEMBRI` → `ABONAMENTE`.

## Files

| File | Content |
|---|---|
| `01_schema.sql` | Database and table structure |
| `02_date.sql` | Test data |
| `03_interogari.sql` | Business questions answered with SQL *(in progress)* |

## How to run

1. Open MySQL (e.g. phpMyAdmin or MySQL Workbench).
2. Run `01_schema.sql`, then `02_date.sql`.

## Coming next

Business queries a gym manager would ask:
- Which trainer does each member have? *(JOIN)*
- Which members have no trainer? *(LEFT JOIN + IS NULL)*
- How much revenue does each membership type bring? *(GROUP BY / HAVING)*
- Which memberships cost more than average? *(subqueries)*
- Ranking of members by total spending *(window functions)*
- Whose membership expires this month? *(date functions)*

---
*Author: Robert-Ștefan Stroie – [LinkedIn](https://www.linkedin.com/in/robert-stroie)*
