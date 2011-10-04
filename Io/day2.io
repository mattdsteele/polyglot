"Exercise 1" println
fib := method(n, if(n <= 2, 1, fib(n-2) + fib(n-1)))
fib(5) println
fib(6) println

"Exercise 2" println
Number coreDiv := Number getSlot("/")
Number setSlot("/", method(denom, if(denom == 0, 0, self coreDiv(denom))))
(5 / 0) println
(5 / 2) println

"Exercise 3" println
total := list(list(1,2,3,4,5),list(2,3,4,5,6))
sum := 0
total foreach(n, n foreach(p, sum = sum + p))
sum println

"Exercise 4" println
List myAverage := method(if(self size == 0, "FAIL" println, (self sum) / (self size) println))
list(1,3,2,6,6,6) myAverage
list() myAverage
