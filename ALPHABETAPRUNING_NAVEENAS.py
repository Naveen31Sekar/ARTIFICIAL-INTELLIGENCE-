def minimax(node, depth, alpha, beta, maximizingPlayer):
    if depth == 0 or node is None:
        return node.value
  
    if maximizingPlayer:
        maxEval = -float('inf')
        for child in node.children:
            eval = minimax(child, depth-1, alpha, beta, False)
            maxEval = max(maxEval, eval)
            alpha = max(alpha, eval)
            if beta <= alpha:
                break
        return maxEval
  
    else:
        minEval = float('inf')
        for child in node.children:
            eval = minimax(child, depth-1, alpha, beta, True)
            minEval = min(minEval, eval)
            beta = min(beta, eval)
            if beta <= alpha:
                break
        return minEval
