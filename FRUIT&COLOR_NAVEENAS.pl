% Define the fact that fruit is red
fruit(apple, red).
fruit(cherry, red).

% Define the fact that fruit is yellow
fruit(banana, yellow).
fruit(pineapple, yellow).

% Define the fact that fruit is green
fruit(grapes, green).
fruit(kiwi, green).

% Define the rule to determine the color of a fruit
color_of_fruit(Fruit, Color) :- fruit(Fruit, Color).
