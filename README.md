# 🛒 Purchase Behavior Analysis in E-Commerce

This project investigates user purchase behavior on an e-commerce platform based on user profile and gender. Using R, we explore how page views, purchasing frequency, and conversion rates differ across Parents, Teachers, and other profiles—along with male vs. female behavior insights.

---

## 📂 Dataset Overview

**File:** `ecommerce-data-4.csv`

Each record captures session data for a visitor, with fields including:
- `profile`: User category (e.g., Parent, Teacher)
- `behavPageviews`: Number of pages viewed (in ranges)
- `gender`: Gender of user
- `purchasedWhen`: Indicates recency of purchase (e.g., "Today", "This week")
- `behavAnySale`: Binary flag indicating whether a purchase was made

---

## 🔍 Key Analyses

### Q1. 🔢 Convert Page Views to Integer
Mapped page view ranges ("2 to 3", "10+") to numeric equivalents for computation.

### Q2–3. 📊 Summary & Total Page Views by Profile
Used `aggregate()` to get both summary stats and total views across user types.

### Q4. 👥 Gender Proportions by Profile
Filtered out missing/unidentified genders. Calculated proportions of Female and Male users within each profile using `prop.table()`.

### Q5. ⏰ Most Recent Purchases
Tabulated purchases based on when they occurred (`purchasedWhen`) and who made them (`profile`).

### Q6. 📉 Purchase Histogram by Profile & Recency
Visualized how recent purchases vary across profiles using a **lattice histogram** faceted by time.

### Q7. 📈 Purchase Proportions by Profile
Used proportion tables to understand behavioral share instead of absolute count.

### Q8–9. 💸 Purchase Volume and Rate by Gender & Profile
- Total number of purchases by gender-profile combo
- Mean purchase rate using `aggregate(..., mean)` to approximate conversion rate

---

## 📊 Sample Output

| Profile  | Avg. Page Views | % Male | % Female | Purchase Rate |
|----------|-----------------|--------|----------|----------------|
| Parent   | 3.2             | 45%    | 55%      | 0.28           |
| Teacher  | 4.5             | 38%    | 62%      | 0.34           |

---

## 📦 Tools Used

- Language: **R**
- Libraries: `lattice`
- Functions: `aggregate()`, `table()`, `prop.table()`, `histogram()`



