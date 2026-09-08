import pygame
from collections import deque

# Initialize Pygame
pygame.init()

# Screen dimensions
SCREEN_WIDTH = 800
SCREEN_HEIGHT = 600
CELL_SIZE = 40  # Size of each cell in the grid

# Colors
WHITE = (255, 255, 255)
BLACK = (0, 0, 0)
RED = (255, 0, 0)
BLUE = (0, 0, 255)
GREEN = (0, 255, 0)

# Create the screen
screen = pygame.display.set_mode((SCREEN_WIDTH, SCREEN_HEIGHT))
pygame.display.set_caption("BFS Visualization")

# Maze dimensions
ROWS = 10
COLS = 10

# Create a grid-based maze (1 = open, 0 = wall)
maze = [
    [1, 1, 0, 0, 0, 0, 0, 0, 0, 0],
    [0, 1, 1, 1, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 1, 0, 0, 0, 0, 0, 0],
    [0, 0, 0, 1, 1, 1, 1, 1, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 1, 0, 0],
    [0, 0, 0, 0, 0, 0, 0, 1, 1, 1],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
    [0, 0, 0, 0, 0, 0, 0, 0, 0, 1],
]

# BFS algorithm
def bfs(maze, start, goal):
    queue = deque([start])
    visited = set()
    visited.add(start)
    path = {}

    while queue:
        current = queue.popleft()
        if current == goal:
            break

        for direction in [(0, 1), (1, 0), (0, -1), (-1, 0)]:  # Right, Down, Left, Up
            next_cell = (current[0] + direction[0], current[1] + direction[1])
            if (
                0 <= next_cell[0] < ROWS
                and 0 <= next_cell[1] < COLS
                and next_cell not in visited
                and maze[next_cell[0]][next_cell[1]] == 1
            ):
                queue.append(next_cell)
                visited.add(next_cell)
                path[next_cell] = current

    # Reconstruct the path
    full_path = []
    cell = goal
    while cell != start:
        full_path.append(cell)
        cell = path[cell]
    full_path.append(start)
    full_path.reverse()
    return full_path

# Draw the maze
def draw_maze(maze, path, player_pos):
    for row in range(ROWS):
        for col in range(COLS):
            color = WHITE if maze[row][col] == 1 else BLACK
            pygame.draw.rect(
                screen,
                color,
                (col * CELL_SIZE, row * CELL_SIZE, CELL_SIZE, CELL_SIZE),
            )
            pygame.draw.rect(
                screen, BLACK, (col * CELL_SIZE, row * CELL_SIZE, CELL_SIZE, CELL_SIZE), 1
            )

    # Draw the path
    for cell in path:
        pygame.draw.rect(
            screen,
            BLUE,
            (cell[1] * CELL_SIZE, cell[0] * CELL_SIZE, CELL_SIZE, CELL_SIZE),
        )

    # Draw the player
    pygame.draw.rect(
        screen,
        RED,
        (player_pos[1] * CELL_SIZE, player_pos[0] * CELL_SIZE, CELL_SIZE, CELL_SIZE),
    )

# Main function
def main():
    start = (0, 0)
    goal = (9, 9)
    path = bfs(maze, start, goal)
    player_pos = start

    run = True
    clock = pygame.time.Clock()

    while run:
        screen.fill(BLACK)
        draw_maze(maze, path, player_pos)

        for event in pygame.event.get():
            if event.type == pygame.QUIT:
                run = False
            elif event.type == pygame.KEYDOWN:
                if event.key == pygame.K_w:  # Move up
                    next_pos = (player_pos[0] - 1, player_pos[1])
                elif event.key == pygame.K_s:  # Move down
                    next_pos = (player_pos[0] + 1, player_pos[1])
                elif event.key == pygame.K_a:  # Move left
                    next_pos = (player_pos[0], player_pos[1] - 1)
                elif event.key == pygame.K_d:  # Move right
                    next_pos = (player_pos[0], player_pos[1] + 1)
                else:
                    next_pos = player_pos

                # Check if the move is valid
                if (
                    0 <= next_pos[0] < ROWS
                    and 0 <= next_pos[1] < COLS
                    and maze[next_pos[0]][next_pos[1]] == 1
                ):
                    player_pos = next_pos

        pygame.display.update()
        clock.tick(60)

    pygame.quit()

if __name__ == "__main__":
    main()