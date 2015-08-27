Inject:
Performance (?): `@biblioteca.livros.map(&:valor).inject(:+)`
Aceita também um symbol: `inject(:+)`


Curry:
Lambda com Curry
```
multiplicador = lambda { |x, y| x * y }
p multiplicador.call 2, 13
p multiplicador.call 2, 43
# => 26
# => 86
```

Utilizando currying podemos deixar o código um pouco mais legível:

```
multiplicador = lambda { |x, y| x * y }.curry
dobro = multiplicador.call 2
p dobro.call 13
p dobro.call 43
# => 26
# => 86
```
