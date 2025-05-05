# Least Squares Fitting – Chapter 2 Summary (Fundamentals of Kalman Filtering)

This repository provides MATLAB implementations and visualizations for **least squares polynomial fitting** of various orders (zeroth to fourth), based on **Chapter 2: Least Squares** from *Fundamentals of Kalman Filtering*.

---

## 📈 Problem Statement

Given a set of observed data points \((x_i, y_i)\), the goal is to find the best polynomial function:

\[
y = \theta_0 + \theta_1 x + \theta_2 x^2 + \dots + \theta_n x^n
\]

that minimizes the sum of squared errors between the predicted and observed \(y\)-values.

---

## 🔧 Method

We use the **least squares method** to solve:

\[
\theta = (A^T A)^{-1} A^T y
\]

Where `A` is the **design matrix**, depending on the polynomial order.

---

## 📂 Files

- `least_squares_order0.m` – Zeroth-order (constant) fit
- `least_squares_order1.m` – First-order (linear) fit
- `least_squares_order2.m` – Second-order (quadratic) fit
- `least_squares_order3.m` – Third-order (cubic) fit
- `least_squares_order4.m` – Fourth-order (quartic) fit

---

## 📊 Example Plots

### Zeroth-Order Fit (Constant)
![Zeroth Order](/chapter_2/least_squares_order0.png)

---

### First-Order Fit (Linear)
![First Order](/chapter_2/least_squares_order1.png)

---

### Second-Order Fit (Quadratic)
![Second Order](/chapter_2/least_squares_order2.png)

---

### Third-Order Fit (Cubic)
![Third Order](/chapter_2/least_squares_order3.png)

---

### Fourth-Order Fit (Quartic)
![Fourth Order](/chapter_2/least_squares_order4.png)

---

## 🧠 Key Takeaways

- The **order** of the polynomial controls the flexibility of the fit.
- Higher-order fits can overfit small datasets — use with caution and shoud be (measurements -1).
- The **design matrix** grows by adding powers of `x` up to the desired order.
- This method is foundational for **Kalman filtering**, where similar estimation techniques are used.

---

## 📚 Reference

📖 *Fundamentals of Kalman Filtering: A Practical Approach* – Chapter 2: Least Squares

---

## 🛠️ Requirements

- MATLAB or Octave
- Basic understanding of matrix operations

---
