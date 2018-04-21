## A Parallel Multiplier Using SystemVerilog HDL

![Parallel_Multiplier](https://raw.githubusercontent.com/himingway/Parallel_Multiplier/master/Pic/parallel_multiplier.png)

### Booth Coding

| Block | Partial Product |
|---|---|
| 000 | 0 |
| 001 | 1 * Multiplicand |
| 010 | 1 * Multiplicand |
| 011 | 2 * Multiplicand |
| 100 | -2 * Multiplicand |
| 101 | -1 * Multiplicand |
| 110 | -1 * Multiplicand |
| 111 | 0 |

### Koggle Stone Adder
![Parallel_Multiplier](https://raw.githubusercontent.com/himingway/Parallel_Multiplier/master/Pic/koggle_Stone_Adder.jpg)


