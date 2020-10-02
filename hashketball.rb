# Write your code below game_hash
require 'pry'

def game_hash
  {
    home: {
      team_name: "Brooklyn Nets",
      colors: ["Black", "White"],
      players: {
        "Alan Anderson" => {
          number: 0,
          shoe: 16,
          points: 22,
          rebounds: 12,
          assists: 12,
          steals: 3,
          blocks: 1,
          slam_dunks: 1
        },
        "Reggie Evans" => {
          number: 30,
          shoe: 14,
          points: 12,
          rebounds: 12,
          assists: 12,
          steals: 12,
          blocks: 12,
          slam_dunks: 7
        },
        "Brook Lopez" => {
          number: 11,
          shoe: 17,
          points: 17,
          rebounds: 19,
          assists: 10,
          steals: 3,
          blocks: 1,
          slam_dunks: 15
        },
        "Mason Plumlee" => {
          number: 1,
          shoe: 19,
          points: 26,
          rebounds: 11,
          assists: 6,
          steals: 3,
          blocks: 8,
          slam_dunks: 5
        },
        "Jason Terry" => {
          number: 31,
          shoe: 15,
          points: 19,
          rebounds: 2,
          assists: 2,
          steals: 4,
          blocks: 11,
          slam_dunks: 1
        }
      }
    },
    away: {
      team_name: "Charlotte Hornets",
      colors: ["Turquoise", "Purple"],
      players: {
        "Jeff Adrien" => {
          number: 4,
          shoe: 18,
          points: 10,
          rebounds: 1,
          assists: 1,
          steals: 2,
          blocks: 7,
          slam_dunks: 2
        },
        "Bismack Biyombo" => {
          number: 0,
          shoe: 16,
          points: 12,
          rebounds: 4,
          assists: 7,
          steals: 22,
          blocks: 15,
          slam_dunks: 10
        },
        "DeSagna Diop" => {
          number: 2,
          shoe: 14,
          points: 24,
          rebounds: 12,
          assists: 12,
          steals: 4,
          blocks: 5,
          slam_dunks: 5
        },
        "Ben Gordon" => {
          number: 8,
          shoe: 15,
          points: 33,
          rebounds: 3,
          assists: 2,
          steals: 1,
          blocks: 1,
          slam_dunks: 0
        },
        "Kemba Walker" => {
          number: 33,
          shoe: 15,
          points: 6,
          rebounds: 12,
          assists: 12,
          steals: 7,
          blocks: 5,
          slam_dunks: 12
        }
      }
    }
  }
end

# Write code here

# Build a method, num_points_scored that takes in an argument of a player's name and returns the number of points scored for that player.

# def num_points_scored(name)
#   game_hash.each do |team, team_info|
#     team_info[:players].each do |player|
#       if player[:player_name] == name
#         return player[:points]
#       end
#     end
#   end
# end

# def shoe_size(name)
#   game_hash.each do |team, team_info|
#     team_info[:players].each do |player|
#       if player[:player_name] == name
#         return player[:shoe]
#       end
#     end
#   end
# end
      
# def team_colors(team_input)
#   if team_input == "Charlotte Hornets"
#     return game_hash[:away][:colors]
#   else
#     return game_hash[:home][:colors]
#   end
# end

# def team_names
#   game_hash.map do |team, team_info|
#     team_info[:team_name]
#   end
# end

# def player_numbers(input)
#   output = []
#   game_hash.each do |team, team_info|
#     if team_info[:team_name] == input
#       team_info.each do |key, value|
#         if key == :players
#           value.each do |player|
#             output.push(player[:number])
#           end
#         end
#       end
#     end
#   end
#   output
# end

# def player_stats(input)
#   game_hash.each do |team, team_info|
#     team_info.each do |key, value|
#       if key == :players
#         value.each do |player|
#           if input == player[:player_name]
#             return player 
#           end
#         end
#       end
#     end
#   end
# end

# def big_shoe_rebounds
#   big_shoe = 0
#   rebounds = 0
#   game_hash.each do |team, team_info|
#     team_info[:players].each do |player|
#       if player[:shoe] > big_shoe
#         big_shoe = player[:shoe]
#         rebounds = player[:rebounds]
#       end
#     end
#   end
#   return rebounds
# end

def num_points_scored(player_name)
  players = game_hash[:home][:players].merge(game_hash[:away][:players])
  players[player_name][:points]
end










