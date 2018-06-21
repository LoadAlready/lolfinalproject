module UsersHelper
  @@game_params = nil

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

  def get_champ_matchup(user_champ, counter_champ)
    page = Nokogiri::HTML(RestClient.get("http://matchup.gg/matchup/#{user_champ}/#{counter_champ}"))
     champ_matchup_percentage = page.css('div.header-analysis-winrate-percentage')[1].text
  end
end
