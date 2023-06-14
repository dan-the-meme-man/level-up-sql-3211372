-- Identify a few customers who have ordered delivery
-- from the restaurant the most often, so we can send
-- them a promotional coupon.
SELECT COUNT(OrderID) as OrderCount, CustomerID
FROM Orders
GROUP BY CustomerID
ORDER BY OrderCount DESC;