# Nouns: Player_1, Player_2, Score, Winner, Questioning_Order

# Order of operation
    # Asking question: Pre-written
    # Response to question
    # Status if right/wrong
    # Points subtracted
    # Display game results
    # Loops again
    # Display final game results
    # Display Game Over (After questions asked)

# Class's Role: Questioning_order
  # Will be the structure of the whole game
  # Info relevant to this class: Every step of the game including every class and their place.
  # This class will contain the game loop and current player
  # What public methods will be defined on it:
    # Asking question by Player_1 (Reading)
    # Response to question by Player_2
    # Enter button clicked (I/)
    # Status if right/wrong (/O) (Write)
    # Display game results
    # Player_2...
    # Counts questions until final
    # Notice of final question completed
    # Display final game results
    # Display Game Over (After questions asked)


# Class's Role: Player_1
  # To create the question through their object/template
  # Info relevant to this class: Questions in order to be asked, individuals score calculation
  # What needed to be initialized: Activation of game, and completion of Player_2's question/game results
  # What public methods will be defined on it: Points subtracted/not, removal of question after completion
  # User I/O: (Writing)-only about success of Player_2's response


# Class's Role: Player_2
  # To create the question through their object/template
  # Info relevant to this class: Questions in order to be asked, individuals score calculation
  # What needed to be initialized: Follows completion of Player_1's question/game results
  # What public methods will be defined on it: Points subtracted/not, removal of question after completion
  # User I/O: (Writing)-only about success of Player_2's response


# Class's Role: Score
  # To store and update the score based on the status of the previous question
  # Info relevant to this class: Will take the outcome of each questioning to show the current game status, also final winner output
  # What needed to be initialized: After each questions response, Notice of final question completed
  # I/O: (Reading) info from Players & (Writing) final output of each calculation
