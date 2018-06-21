module UsersHelper
  @@game_params = nil
  @@user_elo = nil
  @@user_champ_stats = nil
  def game_params(params)
    @@game_params = params
  end
  def user1
    @@game_params["users_container"][0]["name"]
  end
  def user2
    @@game_params["users_container"][1]["name"]
  end
  def user3
    @@game_params["users_container"][2]["name"]
  end
  def user4
    @@game_params["users_container"][3]["name"]
  end
  def user5
    @@game_params["users_container"][4]["name"]
  end
  def team_champ1
    Champion.find( @@game_params["champ_arr"][0]["champion_id"].to_i)
  end
  def team_champ2
    Champion.find(@@game_params["champ_arr"][1]["champion_id"].to_i)
  end
  def team_champ3
    Champion.find(@@game_params["champ_arr"][2]["champion_id"].to_i)
  end
  def team_champ4
    Champion.find(@@game_params["champ_arr"][3]["champion_id"].to_i)
  end
  def team_champ5
    Champion.find(@@game_params["champ_arr"][4]["champion_id"].to_i)
  end
  def opp_team_champ1
    Champion.find(@@game_params["opp_champ_arr"][0]["champion_id"].to_i)
  end
  def opp_team_champ2
    Champion.find(@@game_params["opp_champ_arr"][1]["champion_id"].to_i)
  end
  def opp_team_champ3
    Champion.find(@@game_params["opp_champ_arr"][2]["champion_id"].to_i)
  end
  def opp_team_champ4
    Champion.find(@@game_params["opp_champ_arr"][3]["champion_id"].to_i)
  end
  def opp_team_champ5
    Champion.find(@@game_params["opp_champ_arr"][4]["champion_id"].to_i)
  end
  def return_user_elo
    @@user_elo
  end
  def return_user_champ_stats
    if @@user_champ_stats.any? == false
      return "Not enough games on this champ!"
    else
      return @@user_champ_stats[0]
    end
  end
  def get_champ_matchup(user_champ, counter_champ)
    page = Nokogiri::HTML(RestClient.get("http://matchup.gg/matchup/#{user_champ}/#{counter_champ}"))
    champ_matchup_percentage = page.css('div.header-analysis-winrate-percentage')[1].text
  end
  def get_user_stats(name, user_champ)
    name = name.delete(' ')
    user_champ = user_champ.titleize
    page = Nokogiri::HTML(RestClient.get("https://www.leagueofgraphs.com/summoner/na/#{name}"))
    user_link_page = "http://na.op.gg/summoner/userName=#{name}"
    user_game_data = page.at('meta[name="description"]')['content']
    user_data_arr = user_game_data.split('/')
    @@user_elo  = user_data_arr.first
    @@user_champ_stats = user_data_arr.select {|c| c.include? user_champ}
  end
end
