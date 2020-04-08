def num_islands(grid)
  return 0 if grid.empty?
  
  island_count = 0
  @r_bound = (0..grid.length-1)
  @c_bound = (0..grid[0].length-1)
  
  grid.length.times do |row|
    grid[0].length.times do |col|
      if grid[row][col] == '1'
        island_count += 1
        start_dfs(row, col, grid)
      end
    end
  end
  
  island_count
end

def start_dfs(row, col, grid)
  stack = [[row, col]]
  
  while !stack.empty?
    r, c = stack.pop
    grid[r][c] = 0 # so that we don't double-count
    adj(r, c, grid).each do |n_r, n_c|
      if grid[n_r][n_c] == '1'
        stack.push [n_r, n_c]
      end
    end
  end
end

def adj(r, c, grid)
  [
    [r-1, c],
    [r+1, c],
    [r, c-1],
    [r, c+1]
  ].select { |c_r, c_c| @r_bound.include?(c_r) && @c_bound.include?(c_c) }
end


puts num_islands([["1","1","0","0","0"],["0","0","0","1","0"],["1","1","0","0","0"],["0","0","0","1","1"]])
