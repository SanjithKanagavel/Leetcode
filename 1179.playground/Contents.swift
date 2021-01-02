import UIKit

var str = "Hello, playground"

select d0.id, d1.revenue as Jan_Revenue, d2.revenue as Feb_Revenue, d3.revenue as Mar_Revenue, d4.revenue as Apr_Revenue, d5.revenue as May_Revenue, d6.revenue as Jun_Revenue, d7.revenue as Jul_Revenue, d8.revenue as Aug_Revenue, d9.revenue as Sep_Revenue, d10.revenue as Oct_Revenue, d11.revenue as Nov_Revenue, d12.revenue as Dec_Revenue from Department as d0
left join Department as d1 ON d0.id = d1.id
left join Department as d2 ON d0.id = d2.id
left join Department as d3 ON d0.id = d3.id
left join Department as d4 ON d0.id = d4.id
left join Department as d5 ON d0.id = d5.id
left join Department as d6 ON d0.id = d6.id
left join Department as d7 ON d0.id = d7.id
left join Department as d8 ON d0.id = d8.id
left join Department as d9 ON d0.id = d9.id
left join Department as d10 ON d0.id = d10.id
left join Department as d11 ON d0.id = d11.id
left join Department as d12 ON d0.id = d12.id
where d1.month = "Jan" and d2.month = "Feb" and d3.month = "Mar" and d4.month = "Apr" and d5.month = "May" and d6.month = "Jun" and d7.month = "Jul" and d8.month = "Aug" and d9.month = "Sep" and d10.month = "Oct" and d11.month = "Nov" and d12.month = "Dec"
select d1.id, d1.revenue as Jan_Revenue, d2.revenue as Feb_Revenue from Department as d1 left join Department as d2 ON d1.id = d2.id where d1.month = "Jan" and d2.month = "Feb"
