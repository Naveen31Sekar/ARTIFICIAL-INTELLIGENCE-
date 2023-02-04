def minimax(node, depth, maximizingPlayer):
    if depth == 0 or node.is_terminal():
        return node.utility()

    if maximizingPlayer:
        value = float('-inf')
        for child in node.children():
            value = max(value, minimax(child, depth - 1, False))
        return value

    else:
        value = float('inf')
        for child in node.children():
            value = min(value, minimax(child, depth - 1, True))
        return value

def best_move(node, depth):
    best_value = float('-inf')
    best_move = None
    for child in node.children():
        value = minimax(child, depth - 1, False)
        if value > best_value:
            best_value = value
            best_move = child
    return best_move
