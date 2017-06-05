# Class DoomVars
# 
# Management class for Zandronum server variables.
# Default values for the server variables pulled from 
# https://wiki.zandronum.com/Server_Variables. 
# Default values for the console commands pulled from
# https://wiki.zandronum.com/Console_Variables

class DoomVars
  def initialize(name )
    @server_name = name
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
      sv_minimizetosystray: "true",
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
    @console_variables = {
      autoaim: "35",
      autosavecount: "",
      bot_allowchat: "",
      botskill: "",
      buckshot: "",
      chat_sound: "",
      cl_allowmultipleannouncersounds: "",
      cl_alwaysplayfragsleft: "",
      cl_capfps: "",
      cl_dontrestorefrags: "",
      cl_drawcoopinfo: "",
      cl_hitscandecailhack: "",
      cl_icons: "",
      cl_identifytarget: "",
      cl_medals: "",
      cl_oldfreelooklimit: "",
      cl_password: "",
      cl_respawnonfire: "",
      cl_showcommands: "",
      cl_showfullscreenvote: "",
      cl_showlargefragmessages: "",
      cl_skins: "",
      cl_soundwhennotactive: "",
      cl_spectatormove: "",
      cl_startasspectator: "",
      cl_stfullscreenhud: "",
      cl_ticsperupdate: "",
      cl_unlagged: "",
      cl_useoriginalweaponorder: "",
      cl_colorinmessages: "",
      crashlogs: "",
      crashlog_dir: "",
      demo_compress: "",
      demo_pure: "",
      disableautosave: "",
      domination: "",
      duellimit: "",
      fov: "",
      fraglimit: "",
      gl_billboard_mode: "",
      gl_interpolate_model_frames: "",
      gl_nogl: "",
      gl_particles_style: "",
      gl_texture_format: "",
      gl_texture_hqresize: "",
      gl_texture_hqresize_maxinputsize: "",
      gl_texture_hqresize_target: "",
      gl_use_models: "",
      gl_vid_compatability: "",
      handicap: "",
      instagib: "",
      invasion: "",
      lastmanstanding: "",
      lmsallowedweapons: "",
      masterhostname: "",
      maxviewpitch: "",
      name: "",
      pointlimit: "",
      possession: "",
      queryiwad: "",
      r_drawplayersprites: "",
      r_drawspectatingstring: "",
      r_maxparticles: "",
      skill: "",
      skulltag: "",
      survival: "",
      switchonpickup: "",
      teamlms: "",
      terminator: "",
      timelimit: "",
      teamdamage: "",
      teampossession: "",
      turbo: "",
      vid_renderer: "",
      win_limit: ""
    }

  end

end

