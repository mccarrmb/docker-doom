# Class ServerVar
# 
# Management class for Zandronum server variables.
# Default values for the server variables pulled from 
# https://wiki.zandronum.com/Server_Variables. 

class ServerVar
  def initialize(name)
    @max_players = "32" #Can be up to 64
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
      sv_invasioncountdowntime: "10",
      sv_joinpassword: "password",
      sv_killallmonsters_percentage: "100",
      sv_limitcommands: "true",
      sv_limitnumvotes: "true",
      sv_lmscountdowntime: "10",
      sv_logfile_append: "false",
      sv_logfilenametimestamp: "true",
      sv_logfiletimestamp: "true",
      sv_logfiletimestamp_usedate: "false",
      sv_measureoutboundtraffic: "false",
      sv_maprotation: "true",
      sv_markchatlines: "false",
      sv_maxclients: "32",
      sv_maxclientsperip: "2",
      sv_maxlives: "0",
      sv_maxpacketsize: "1024",
      sv_maxplayers: "32",
      sv_maxteams: "2",
      sv_minvoters: "true",
      sv_motd: "",
      sv_nocallvote: "0",
      sv_nochangemapvote: "false",
      sv_nodrop: "false",
      sv_noduellimitvote: "false",
      sv_noforcespecvote: "false",
      sv_nofraglimitvote: "false",
      sv_nokickvote: "false",
      sv_nokill: "false",
      sv_nomapvote: "false",
      sv_nopointlimitvote: "false",
      sv_notimelimitvote: "false",
      sv_nowinlimitvote: "false",
      sv_password: "password",
      sv_possessioncountdowntime: "10",
      sv_possessionholdtime: "30",
      sv_pure: "true",
      sv_queryignoretime: "10",
      sv_randomcoopstarts: "false",
      sv_randommaprotation: "false",
      sv_rconpassword: "",
      sv_showlauncherqueries: "false",
      sv_showwarnings: "false",
      sv_smartaim: "0",
      sv_suddendeath: "true",
      sv_survivalcountdowntime: "10",
      sv_timestamp: "false",
      sv_timestampformat: "0",
      sv_unlimited_pickup: "false",
      sv_updatemaster: "true",
      sv_usemapsettingspossessionholdtime: "true",
      sv_usemapsettingswavelimit: "true",
      sv_useteamstartsindm: "false",
      sv_website: ""
    }

    @windows_vars = {
      sv_minimizetosystray: "true"
    }

    @server_name = name
  end

end

