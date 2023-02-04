
state(floor, floor, floor, floor, hasnot).
state(floor, floor, floor, ceiling, hasnot).
state(floor, floor, ceiling, floor, hasnot).
state(floor, floor, ceiling, ceiling, hasnot).
state(floor, ceiling, floor, floor, hasnot).
state(floor, ceiling, floor, ceiling, hasnot).
state(floor, ceiling, ceiling, floor, hasnot).
state(floor, ceiling, ceiling, ceiling, hasnot).
state(ceiling, floor, floor, floor, hasnot).
state(ceiling, floor, floor, ceiling, hasnot).
state(ceiling, floor, ceiling, floor, hasnot).
state(ceiling, floor, ceiling, ceiling, hasnot).
state(ceiling, ceiling, floor, floor, hasnot).
state(ceiling, ceiling, floor, ceiling, hasnot).
state(ceiling, ceiling, ceiling, floor, hasnot).
state(ceiling, ceiling, ceiling, ceiling, hasnot).
state(floor, floor, floor, floor, has).
state(floor, floor, floor, ceiling, has).
state(floor, floor, ceiling, floor, has).
state(floor, floor, ceiling, ceiling, has).
state(floor, ceiling, floor, floor, has).
state(floor, ceiling, floor, ceiling, has).
state(floor, ceiling, ceiling, floor, has).
state(floor, ceiling, ceiling, ceiling, has).
state(ceiling, floor, floor, floor, has).
state(ceiling, floor, floor, ceiling, has).
state(ceiling, floor, ceiling, floor, has).
state(ceiling, floor, ceiling, ceiling, has).
state(ceiling, ceiling, floor, floor, has).
state(ceiling, ceiling, floor, ceiling, has).
state(ceiling, ceiling, ceiling, floor, has).
state(ceiling, ceiling, ceiling, ceiling, has).

initial(floor, floor, floor, floor, hasnot).

final(ceiling, ceiling, ceiling, ceiling, has).

action(climbup(monkey), floor, ceiling).
action(climbdown(monkey), ceiling, floor).
action(climbup(banana), floor, ceiling).
action(climbdown(banana), ceiling, floor).
action(grab(monkey, banana), floor, floor, hasnot, has).
action(release(monkey, banana), floor, floor, has, hasnot).

transition(State1, Action, State2) :-
  action(Action, S1, S2, S3, S4),
  state(S1, S2, S3, S4, S5),
  State1 = state(S1, S2, S3, S4, S5),
  State2 = state(S2, S2, S3, S4, S5).

solution(Node, [Node]) :- final(Node).
solution(Node, [Node | Path]) :-
