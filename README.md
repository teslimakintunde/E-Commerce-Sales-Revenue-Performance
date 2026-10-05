# E-Commerce Sales & Revenue Performance

**MySQL + Power BI | E-Commerce Sales Growth, Profitability & Commercial Analytics**

This project analyses **sales growth, product profitability, order value, pricing, discounting, promotional behaviour, payment methods, and fulfillment performance** across a **2024–2025 e-commerce dataset** using MySQL and Power BI.

The objective was to move beyond basic sales reporting and identify **what is driving revenue growth**, **which products and categories create value**, **how order value and pricing are distributed**, **whether discounting is associated with margin pressure**, **how promotions and payment methods behave**, and **where fulfillment risks are concentrated**.

---

## Dashboard Overview

### Page 1 — Executive Sales Overview

**Business Question**  
> Is the business growing, and what are the major drivers of revenue and profitability?

**Key Insight**  
Revenue increased from **₦180.77M** in 2024 to **₦245.33M** in 2025 (**+35.71% YoY**), while profit reached **₦156.91M**. Profit margin remained broadly stable (**64.29% → 63.96%**).

Growth was driven primarily by higher sales volume (orders +≈35.3%) rather than margin expansion.

Revenue concentration:
- **West region**: ₦149.53M (≈35.1% of total revenue)  
- **Online + Mobile App**: ≈60.6% of revenue  

**Business Implication**  
Monitor whether future growth continues to translate into **profitable volume**. Regional and digital-channel concentration should inform resource allocation and growth planning.

---

### Page 2 — Product & Category Performance

**Business Question**  
> Which products and categories create the most revenue and profit, and where are the strongest product economics?

**Key Insight**  
Total revenue: **₦426.10M** | Total profit: **₦273.14M** | Overall margin: **64.10%**

Category margins are relatively consistent (**63.80%–64.65%**). At product level, profit contribution varies considerably, with products such as **Mop Set V3**, **Nail Care Kit V2**, **Microfiber Cloth Set**, and **Trash Bags Pro** among the strongest contributors.

High margin does not automatically equal high total profit — products must be evaluated using revenue, units, profitability, and operational outcomes together.

**Business Implication**  
Prioritise high-profit products for inventory and commercial attention. Review low-performing products for pricing, demand, or assortment decisions.

---

### Page 3 — Order Value & Product Pricing

**Business Question**  
> What order-value segments generate revenue, and how concentrated is revenue across different price points?

**Key Insight**  
Revenue is highly concentrated in higher-value transactions:
- **Premium-value orders ($6,000+)**: ≈₦345.49M (**81.1%** of total revenue)  
- ≈**47.8%** of orders fall into the High-Value segment  
- ≈**97.36%** of revenue comes from the Luxury Product-Price tier  

**9,852** orders recorded zero realized revenue (recognised business rule for cancelled and returned transactions).

**Business Implication**  
Consider revenue concentration in pricing, inventory, and commercial risk management. Analyse zero-realized-revenue transactions separately to understand cancellation and return behaviour.

---

### Page 4 — Discount Strategy & Margin Protection

**Business Question**  
> How is discount intensity associated with profitability, and where should discount policy receive greater scrutiny?

**Key Insight**  
Discounting is widespread: ≈**95.91%** of revenue comes from discounted transactions (average discount **9.76%**).

Observed profit margin declines with discount intensity:

| Discount Level       | Observed Margin |
|----------------------|-----------------|
| No Discount          | 70.17%          |
| Low Discount         | 68.86%          |
| Moderate Discount    | 66.71%          |
| High Discount        | 56.90%          |
| Very High Discount   | 52.78%          |

Margin difference between no-discount and discounted transactions ≈ **17.39 percentage points**.  
Share of revenue from Very High Discount transactions increased from **13.51% (2024)** to **14.47% (2025)**.

*Note: Relationship is descriptive, not causal.*

**Business Implication**  
Focus discount governance on **margin protection**. Monitor high-discount transactions by product, category, revenue contribution, and profitability.

---

### Page 5 — Promotion & Payment Behaviour

**Business Question**  
> How prevalent are promotions, how do promotional transactions perform, and how is revenue distributed across payment methods?

**Key Insight**  
- Promotional transactions: ≈**97.40%** of orders and **95.91%** of revenue  
- Promotional revenue: ≈₦408.66M at **63.84%** margin (vs **70.17%** for full-price)  
- Promotional AOV: ≈₦5,967.81 (vs ₦5,202.72 for full-price)  

Top payment methods:
- Credit Card: ₦128.06M  
- Debit Card: ₦90.94M  
- Bank Transfer: ₦82.85M  

High promotional volume does not by itself prove incremental demand.

**Business Implication**  
Evaluate promotions against **revenue, AOV, and margin together**. Payment-method insights can support convenience and channel optimisation decisions.

---

### Page 6 — Fulfillment & Customer Experience

**Business Question**  
> Is operational service keeping pace with revenue growth, and where are fulfillment risks concentrated?

**Key Insight**  
- Orders processed: **70,309**  
- Average delivery time: ≈**4.14 days**  
- Delayed rate: **11.68%** | Cancellation rate: **9.14%** | Return rate: **8.99%**  

Regional variation:
- **East**: 6.88 days average delivery | **36.76%** delayed  
- **North**: **22.11%** cancellation rate  
- **Central**: **27.85%** return rate  
- **West**: 3.26 days average delivery | 4.77% delayed  

Product-level risks identified (e.g. Gaming Mouse V3, Blender Mini, Vacuum Storage Bag, Storage Bin V3, Patio Umbrella Pro).

**Business Implication**  
Fulfillment improvement should be **region- and product-specific**. East needs delay focus, North cancellation investigation, Central return-driver analysis.

---

## Key Business Findings

- Revenue grew **35.71% YoY** to ₦245.33M with broadly stable margins  
- **West region** contributes ≈35.1% of total revenue  
- **Online + Mobile App** channels contribute ≈60.6% of revenue  
- **Premium-value orders** generate ≈81.1% of total revenue  
- Category margins are stable (**63.80%–64.65%**); product-level profit contribution varies more  
- ≈**95.91%** of revenue comes from discounted transactions  
- Observed margins decline from **70.17%** (no discount) to **52.78%** (very high discount)  
- Promotions dominate: ≈**97.40%** of orders and **95.91%** of revenue  
- Fulfillment risk is geographically differentiated (East delays, North cancellations, Central returns)  
- Sustainable analysis requires combining growth, profitability, pricing, discounting, promotions, payments, and fulfillment  

---

## Strategic Recommendations

1. Protect profitable growth by monitoring revenue alongside profit and margin  
2. Prioritise high-value products using revenue, profit contribution, margin, volume, and operational performance  
3. Strengthen discount governance, especially for high and very-high discount transactions  
4. Evaluate promotions through profitability as well as sales volume  
5. Monitor revenue concentration across high-value orders, regions, and digital channels  
6. Investigate regional fulfillment issues separately rather than applying one-size-fits-all solutions  
7. Use product-level service metrics selectively (elevated risk + meaningful volume/revenue)  
8. Treat zero-realized-revenue transactions as a distinct operational segment for cancellation/return analysis  

---

## Data & Analytics Approach

### MySQL
- Data cleaning and transformation  
- Transaction-level preparation  
- Revenue and profit calculations  
- Order and product-level aggregation  
- Discount and promotional classification  
- Pricing and order-value segmentation  
- Fulfillment performance analysis  
- Regional and product-level profiling  

### Power Query
- Data transformation and preparation  
- Date standardisation  
- Business-rule implementation  
- Analytical column creation  
- Calendar table preparation  

### Power BI & DAX
- Executive KPI development  
- Revenue and profit analysis  
- YoY and MoM performance analysis  
- Product and category profitability  
- Order-value and pricing segmentation  
- Discount and margin analysis  
- Promotion and payment analysis  
- Regional fulfillment analysis  
- Interactive executive dashboards  

---

## Business Impact

The analysis moves sales reporting from:

> “How much revenue did we generate?”

to:

> “What is driving growth, where is value being created, where are margins under pressure, and where are operational risks concentrated?”

The resulting framework provides a data-driven foundation for **profitable growth, product portfolio management, pricing and discount governance, promotional evaluation, revenue concentration monitoring, and fulfillment improvement**.

---

## Tech Stack

| Tool              | Role                                              |
|-------------------|---------------------------------------------------|
| **MySQL**         | Data cleaning, transformation & analytical modelling |
| **Power Query**   | Data preparation & business-rule implementation   |
| **Power BI + DAX**| Executive dashboards, KPIs & interactive analysis |


---
### Dashboard 1: Executive Overview
<p align="left">
  <img src="https://cdn.prod.website-files.com/650ad291fd6cf342753e6a79/6ac3646e1f353525a3d39346_Screenshot%20(1).png" alt="Profile Banner" width="100%"/>
</p>

### Dashboard 2: Product & Category Performance
<p align="left">
  <img src="https://cdn.prod.website-files.com/650ad291fd6cf342753e6a79/6ac3646ea92827f6ce6ee99d_Screenshot%20(2).png" alt="Profile Banner" width="100%"/>
</p>


### Dashboard 3: Order Value & Product Pricing
<p align="left">
  <img src="https://cdn.prod.website-files.com/650ad291fd6cf342753e6a79/6ac3646ebebcfc65059b7043_Screenshot%20(3).png" alt="Profile Banner" width="100%"/>
</p>


### Dashboard 4: Discount Strategy & Margin Protection
<p align="left">
  <img src="https://cdn.prod.website-files.com/650ad291fd6cf342753e6a79/6ac3646ea03f738cab723e56_Screenshot%20(4).png" alt="Profile Banner" width="100%"/>
</p>

### Dashboard 5: Promotions & Payment Behavior
<p align="left">
  <img src="https://cdn.prod.website-files.com/650ad291fd6cf342753e6a79/6ac3646fa9993b2e60bc820a_Screenshot%20(5).png" alt="Profile Banner" width="100%"/>
</p>

### Dashboard 6:Fulfillment & Customer Experience
<p align="left">
  <img src="https://cdn.prod.website-files.com/650ad291fd6cf342753e6a79/6ac3646e6af48eae4dbc667f_Screenshot%20(6).png" alt="Profile Banner" width="100%"/>
</p>




















