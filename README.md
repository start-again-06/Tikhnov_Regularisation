# Tikhnov_Regularisation
🔢 Singular Value Decomposition (SVD) Regularization Analysis
📌 Overview
This project applies Singular Value Decomposition (SVD) and Tikhonov regularization to solve an inverse problem. It explores the effect of regularization parameters (α) on the stability of the solution.

✨ Key Features
✅ SVD Decomposition – Factorizing matrix G into U, S, V components
✅ Regularization Parameter Tuning – Implementing Tikhonov-like filtering to improve stability
✅ Solution Reconstruction – Computing inverse solutions for various α values
✅ Error vs. Solution Norm Analysis – Using log-log plots for evaluation

📂 Workflow
1️⃣ Matrix Factorization

Extracts singular values S from matrix G
Determines the rank and dimensions of G
2️⃣ Regularization with Tikhonov Filtering

Iteratively adjusts α from α_0 to α_L over 1000 steps
Applies filtering function:
𝑓
(
𝑖
)
=
𝑠
(
𝑖
)
2
𝑠
(
𝑖
)
2
+
𝛼
(
𝑗
)
2
f(i)= 
s(i) 
2
 +α(j) 
2
 
s(i) 
2
 
​
 
Computes the filtered solution using U, S, V decomposition
3️⃣ Error & Stability Analysis

Residual norm (x): Measures reconstruction error
Solution norm (y): Measures stability of the solution
Log-log plot to evaluate the stability vs. accuracy tradeoff
📊 Results & Insights
Higher singular values dominate reconstruction accuracy.
Regularization smooths the solution by reducing the impact of small singular values.
The log-log curve reveals the optimal α where error and solution norm are balanced.
🔚 Conclusion
This project demonstrates how SVD-based regularization helps stabilize solutions for ill-posed problems. By analyzing the relationship between error and solution magnitude, we can fine-tune α for optimal performance.

📜 License
🔓 This project is licensed under the MIT License – feel free to use and modify it!
