# Class ServerVar
# 
# Management class for Zandronum server variables.
# Default values for the server variables pulled from 
# https://wiki.zandronum.com/Server_Variables. 

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
      sv_defaultdmflags: "true",
      sv_disableautohealth: "false",
      sv_disallowbots: "false",
      sv_disallowspying: "false",
      sv_disallowsuicide: "false",
      sv_dropstyle: "0",
      sv_duelcountdowntime: "10",
      sv_enforcebans: "true",
      sv_enforcemasterbanlist: "true",
      sv_fastweapons: "0",
      sv_flagreturntime: "15",
      sv_forcejoinpassword: "false",
      sv_forcepassword: "false",
      sv_gravity: "800",
      sv_hostemail: "",
      sv_hostname: "Unnamed Zandronum server",
      sv_invasioncountdowntime: "",
      sv_joinpassword: "",
      sv_killallmonsters_percentage: "",
      sv_limitcommands: "",
      sv_limitnumvotes: "",
      sv_lmscountdowntime: "",
      sv_logfile_append: "",
      sv_logfilenametimestamp: "",
      sv_logfiletimestamp: "",
      sv_logfiletimestamp_usedate: "",
      sv_measureoutboundtraffic: "",
      sv_maprotation: "",
      sv_markchatlines: "",
      sv_maxclients: "",
      sv_maxclientsperip: "",
      sv_maxlives: "",
      sv_maxpacketsize: "",
      sv_maxplayers: "",
      sv_maxteams: "",
      sv_minvoters: "",
      sv_motd: "",
      sv_nocallvote: "",
      sv_nochangemapvote: "",
      sv_nodrop: "",
      sv_noduellimitvote: "",
      sv_noforcespecvote: "",
      sv_nofraglimitvote: "",
      sv_nokickvote: "",
      sv_nokill: "",
      sv_nomapvote: "",
      sv_nopointlimitvote: "",
      sv_notimelimitvote: "",
      sv_nowinlimitvote: "",
      sv_password: "",
      sv_possessioncountdowntime: "",
      sv_possessionholdtime: "",
      sv_pure: "",
      sv_queryignoretime: "",
      sv_randomcoopstarts: "",
      sv_randommaprotation: "",
      sv_rconpassword: "",
      sv_showlauncherqueries: "",
      sv_showwarnings: "",
      sv_smartaim: "",
      sv_suddendeath: "",
      sv_survivalcountdowntime: "",
      sv_timestamp: "",
      sv_timestampformat: "",
      sv_unlimited_pickup: "",
      sv_updatemaster: "",
      sv_usemapsettingspossessionholdtime: "",
      sv_usemapsettingswavelimit: "",
      sv_useteamstartsindm: "",
      sv_website: ""
    }

    @windows_vars = {
      sv_minimizetosystray: "true"
    }

    @server_name = name
  end

end

