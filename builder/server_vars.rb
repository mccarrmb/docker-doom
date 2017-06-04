

class ServerVar
  def initialize(name)
    @max_players = "64"
    @server_variables = {
      sv_adminlistfile:      "adminlist.txt",
      sv_afk2spec:           "0",
      sv_aircontrol:         "0.00390625",
      sv_artifactreturntime: "30",
      sv_banfile:            "banlist.txt",
      sv_banlistreparsetime: "0",
      sv_broadcast:          "true",
      sv_cheats:             "false",
      sv_colorstripmethod:   "0",
      sv_coop_damagefactor: "1.0",
      sv_coopspawnvoodoodolls: "true",
      sv_coopunassignedvoodoodolls: "true",
      sv_coopunassignedvoodoodollsfornplayers: @max_players,
      

    }

    @server_name = name
  end

end

