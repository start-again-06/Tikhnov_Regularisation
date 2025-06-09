# Tikhnov_Regularisation

# 🔢 Singular Value Decomposition (SVD) Regularization Analysis

## 📌 Overview
This project applies **Singular Value Decomposition (SVD)** and **Tikhonov regularization** to solve an inverse problem. It explores the effect of regularization parameters (α) on the **stability and accuracy** of the solution.

---

## ✨ Key Features
✅ **SVD Decomposition** – Factorizes matrix `G` into `U`, `S`, and `V` components  
✅ **Regularization Parameter Tuning** – Implements Tikhonov-like filtering to improve numerical stability  
✅ **Solution Reconstruction** – Computes inverse solutions for various α values  
✅ **Error vs. Solution Norm Analysis** – Uses log-log plots to visualize stability-accuracy tradeoffs  

---

## 📂 Workflow

### 1️⃣ Matrix Factorization
- Applies **SVD** to matrix `G`:  
  \[
  G = U \cdot S \cdot V^T
  \]
- Extracts singular values `S`, and determines the **rank** and **dimensions** of `G`

### 2️⃣ Regularization with Tikhonov Filtering
- Iteratively adjusts `α` from `α₀` to `α_L` over 1000 steps  
- Applies filtering function:
  \[
  f(i) = \frac{s(i)^2}{s(i)^2 + \alpha(j)^2}
  \]
- Computes the filtered solution using the regularized inverse formulation

### 3️⃣ Error & Stability Analysis
- **Residual Norm (x-axis):** Measures reconstruction error  
- **Solution Norm (y-axis):** Measures stability (magnitude) of the solution  
- Generates **log-log plots** to evaluate the tradeoff between stability and accuracy

---

## 📊 Results & Insights

- **Higher singular values** dominate the reconstruction accuracy  
- **Regularization** smooths the solution by damping small singular value contributions  
- The **log-log curve** reveals the **optimal α** where error and solution norm are balanced  

---

## 🔚 Conclusion

This project demonstrates how **SVD-based Tikhonov regularization** stabilizes inverse solutions in **ill-posed problems**. By analyzing the relationship between error and solution magnitude, the optimal regularization parameter `α` can be tuned for best results.

---







