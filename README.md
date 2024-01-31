To run this program

1. Clone the repo
2. Navigate to clonned folder
3. Run `irb` command
4. Once irb open, run  `require_relative './galactic_space_craft'` to load the program
5. run `spacecraft = GalacticSpaceCraft.new([0, 0, 0], 'N')` to initialize class with constructor
6. run `spacecraft.execute_commands(['f', 'r', 'u', 'b', 'l'])` to excute commands. it will return final output in hash formate. in hash final position and direction will be there after executing given commands.
7. for running unit test cases, run `ruby test/test_galactic_space_craft.rb` from clonned folder
