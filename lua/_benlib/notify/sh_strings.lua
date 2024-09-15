-- [[ THIS CODE IS WRITTEN BY BENN20002 (76561198114067146) DONT COPY OR STEAL! ]] -- 

NOTIFY_ORANGE = 0
NOTIFY_RED = 1
NOTIFY_BLUE = 3
NOTIFY_GREEN = 3
NOTIFY_SUCCESS = 3

NotifyLangs = {
	// EventTimer
	{
		["Text"] = "Es wurde ein Event-Timer gestartet!",
		["Key"] = "EVENTTIMER_START",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 10,
	},
	{
		["Text"] = "Der Event-Timer ist abgelaufen!",
		["Key"] = "EVENTTIMER_END",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 10,
	},
	{
		["Text"] = "Der Event-Timer wurde abgebrochen!",
		["Key"] = "EVENTTIMER_ABORT",
		["Color"] = NOTIFY_RED,
		["Time"] = 10,
	},


	{
		["Text"] = "Du hast einen Durchsuchungsbefehl beantragt!",
		["Key"] = "WARRANT_REQUESTED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Dein Durchsuchungsbefehl wurde abgelehnt!",
		["Key"] = "WARRANT_DENIED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},


	{
		["Text"] = "Du hast einen Skillpunkt erhalten!",
		["Key"] = "SKILLPOINT_RECEIVED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast deine Belohnung erhalten!",
		["Key"] = "REWARD_ACTIVATED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Deine Belohnung konnte nicht eingelößt werden!",
		["Key"] = "REWARD_NOT_ACTIVATED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Belohnung hast du bereits erhalten!",
		["Key"] = "REWARD_ALREADY_CLAIMED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast noch nicht genug XP gesammelt!",
		["Key"] = "REWARD_NOT_ENOUGH",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},


	{
		["Text"] = "Dein Job kann das nicht!",
		["Key"] = "YOUR_JOB_CANT",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Dieses Schließfach war leer!",
		["Key"] = "LOCKER_EMPTY",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es sind noch Zivilisten im Gebäude!",
		["Key"] = "CIVILLIANS_PRESENT",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Der Alarm stoppt, sobald alle das Gebäude verlassen haben!",
		["Key"] = "ALARM_STOP_WHEN_LEAVE",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es ist kein Raub aktiv!",
		["Key"] = "NO_ROBBERY_ACTIVE",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	
	{
		["Text"] = "Du hast keinen brauchbaren Schrott gefunden!",
		["Key"] = "NO_USABLE_SCRAP_FOUND",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Fass verbunden! Halte es in der Nähe!",
		["Key"] = "BARREL_CONNECTED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Dieses Fahrzeug ist leider schon verkauft!",
		["Key"] = "ALREADY_SOLD",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast nicht genug Platz in deinem Inventar!",
		["Key"] = "NOT_ENOUGH_SPACE_INV",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Eines deine Marktangebote wurde verkauft!",
		["Key"] = "ITEMMARKET_OFFERSOLD",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Dort kannst du von hier nicht hin!",
		["Key"] = "VEHICLE_SEAT_UNAVAILABLE",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Dieser Sitz ist bereits besetzt!",
		["Key"] = "VEHICLE_SEAT_OCCUPIED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du bist in Handschellen!",
		["Key"] = "CUFFS_YOU_ARE_CUFFED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du kannst nicht einsteigen, da du angekettet bist!",
		["Key"] = "CUFFS_VEHICLE_CHAINED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Es sind nicht genug Staatsbeamte online!",
		["Key"] = "TOO_FEW_CPS",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Das ist in diesem Gebiet nicht möglich!",
		["Key"] = "AREA_IMPOSSIBLE",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast keine Zugriff auf das DJ-Pult!",
		["Key"] = "CLUB_NO_ACCESS",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast nun keine Maske mehr auf!",
		["Key"] = "MASK_TAKEN_OFF",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	
	{
		["Text"] = "Es läuft bereits eine Abstimmung!",
		["Key"] = "POLICEUPGRADE_VOTEGOING",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Deine Abstimmung wurde abgelehnt!",
		["Key"] = "POLICEUPGRADE_VOTEFAILED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast ein Fahrzeug abgeschleppt!",
		["Key"] = "VEHICLE_TOWED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Dein Fahrzeug wurde abgeschleppt!",
		["Key"] = "VEHICLE_TOWED_YOUR",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Ich kann hier keinen Abschleppwagen finden..",
		["Key"] = "TOWTRUCK_NOT_FOUND",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Dieses Fahrzeug ist abgeschlossen!",
		["Key"] = "VEHICLE_LOCKED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Die maximale Anzahl an Gesetzestafeln wurde erreicht!",
		["Key"] = "LAWBOARD_MAX",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast einen Haftbefehl ausgestellt!",
		["Key"] = "WANTED_ADDED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es wurde ein Haftbefehl auf dich ausgestellt!",
		["Key"] = "WANTED_ADDED_ON_YOU",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Es wurde ein Haftbefehl auf dich zurückgezogen!",
		["Key"] = "WANTED_REMOVED_ON_YOU",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},

	{
		["Text"] = "Unter !motd kannst du die Waffen und Deathmatch Regeln einsehen!",
		["Key"] = "BEGINNER_WEAPONSTAGE",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 10,
	},

	{
		["Text"] = "Du kannst nicht schon wieder Schmerztabletten nehmen!",
		["Key"] = "PAINKILLERS",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 10,
	},

	{
		["Text"] = "Du kannst dich nicht so oft unstucken!",
		["Key"] = "UNSTUCK_WAIT",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Versuche dich zu befreien..",
		["Key"] = "UNSTUCK_TRY",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Diesen Befehl kannst du nicht in Fahrzeugen benutzen..",
		["Key"] = "UNSTUCK_IN_VEHICLE",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Falls du es dir anders überlegst, kannst du den Befehl erneut eingeben!",
		["Key"] = "UNSTUCK_RETHINK",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Ein Teammitglied kümmert sich um dich!",
		["Key"] = "STUCK_ACCEPTED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast ein Fahrzeug verkauft!",
		["Key"] = "CARBLACKMARKET_SOLD",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},

	{
		["Text"] = "Dein Ticket ist als nächstes an der Reihe, falls du gerade in einer RP-Situation bist, beende diese bitte so schnell wie möglich!",
		["Key"] = "TICKET_NEXT",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 15,
	},
	{
		["Text"] = "Du hast eine Belohnung für das Bearbeiten eines Tickets erhalten!",
		["Key"] = "TICKET_REWARD",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast eine Belohnung für das Spectaten eines Tickets erhalten!",
		["Key"] = "TICKET_REWARD_SPEC",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},

	{
		["Text"] = "Dieser Spieler ist abwesend!",
		["Key"] = "PLAYER_AFK",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Es ist kein Spieler für diesen Call verfügbar!",
		["Key"] = "CALLS_NO_TARGET",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du musst noch warten, bevor du wieder einen Call erstellen kannst!",
		["Key"] = "CALL_COOLDOWN",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast einen Call erstellt!",
		["Key"] = "CALL_CREATED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast einen Job-Ban!",
		["Key"] = "JOB_BANNED",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast einen Job-Ban ausgestellt!",
		["Key"] = "JOB_BAN_GIVEN",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast einen Job-Ban editiert!",
		["Key"] = "JOB_BAN_EDITED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast einen Job-Ban deaktiviert!",
		["Key"] = "JOB_BAN_DISABLED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Deine letzte Anfrage wurde entfernt!",
		["Key"] = "CALL_REMOVED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast keine aktive Anfrage!",
		["Key"] = "NO_CALL_FOUND",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast keinen aktiven Notruf!",
		["Key"] = "NO_SOS_FOUND",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast das Verkaufslimit erreicht!",
		["Key"] = "SELLLIMIT_REACHED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Dein Vorschlag wurde erfolgreich erstellt!",
		["Key"] = "SUGGESTIONS_CREATED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast deine Stimme abgegeben!",
		["Key"] = "SUGGESTIONS_VOTED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Dein Job hat keinen Zugriff darauf!",
		["Key"] = "JOB_NO_ACCESS",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Dieses Modell existiert nicht!",
		["Key"] = "MODEL_NOT_FOUND",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	
	{
		["Text"] = "Der Besitzer des Fahrzeuges ist verschwunden, das Fahrzeug wird in Kürze entfernt!",
		["Key"] = "CARDEALER_DISCONNECTED",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast das Fahrzeuglimit erreicht!",
		["Key"] = "CARDEALER_PARKLIMIT",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Ein Spieler hat ein Fahrzeug von dir gekauft!",
		["Key"] = "CARDEALER_AUCTION_SOLD",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},

	{
		["Text"] = "Als Staatsbeamter kannst du das nicht!",
		["Key"] = "CANNOT_WASH_CP",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast kein ungewaschenes Geld bei dir!",
		["Key"] = "NO_UNWASHED_MONEY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast eine Geldtasche aufgehoben!",
		["Key"] = "PICKED_UP_MONEYBAG",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast eine Geldtasche in die Staatsbank eingezahlt!",
		["Key"] = "TRANSFERRED_MONEYBAG",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast nicht genug ungewaschenes Geld bei dir!",
		["Key"] = "NOT_ENOUGH_UNWASHEDMONEY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Diese Tinte passt nicht zum bereits gedruckten Geld!",
		["Key"] = "MONEYPRINTER_INK_DOESNT_FIT",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Dieser Jobtitel ist zu kurz!",
		["Key"] = "JOBTITLE_SHORT",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Dieser Jobtitel ist zu lang!",
		["Key"] = "JOBTITLE_LONG",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Diese Person hat kein Geld!",
		["Key"] = "PICKPOCKET_NO_MONEY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Person wurde gerade erst ausgeraubt!",
		["Key"] = "PICKPOCKET_NOT_YET",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{	
		["Text"] = "Du hast deine Hände gehoben!",
		["Key"] = "HANDS_UP",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast deine Hände gesenkt!",
		["Key"] = "HANDS_DOWN",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Das geht nicht so schnell!",
		["Key"] = "WARN_TOO_FAST",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Der Kunde hat das Geld nicht mehr!",
		["Key"] = "HITMAN.CUSTOMER_NO_MONEY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Der Auftragskiller hat deinen Auftrag angenommen!",
		["Key"] = "HITMAN.ACCEPTED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Der Auftragskiller hat deinen Auftrag abgelehnt!",
		["Key"] = "HITMAN.DECLINED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du warst das Ziel des Auftragskillers!",
		["Key"] = "HITMAN.WAS_TARGET",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast deinen Auftrag erfolgreich ausgeführt!",
		["Key"] = "HITMAN.SUCCESS",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast deinen Auftrag nicht erfolgreich ausgeführt!",
		["Key"] = "HITMAN.FAIL",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Der Auftragskiller hat deinen Auftrag erfolgreich ausgeführt!",
		["Key"] = "HITMAN.CUSTOMER_SUCCESS",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Der Auftragskiller konnte deinen Auftrag nicht erfolgreich ausführen!",
		["Key"] = "HITMAN.CUSTOMER_FAIL",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},

	{
		["Text"] = "Dieses Prop kollidiert mit irgendwas!",
		["Key"] = "NOCOLLIDE_STUCK",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast ein Fahrzeug aufgeladen!",
		["Key"] = "TOWTRUCK_LOADED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast ein Fahrzeug abgeladen!",
		["Key"] = "TOWTRUCK_UNLOADED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es ist bereits ein Fahrzeug aufgeladen!",
		["Key"] = "TOWTRUCK_ALREADY_LOADED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast keinen Zugriff auf diesen Abschleppwagen!",
		["Key"] = "TOWTRUCK_NO_ACCESS",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Es ist bereits ein Lockdown im Gange!",
		["Key"] = "LOCKDOWN_ALREADY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es ist kein Lockdown im Gange!",
		["Key"] = "LOCKDOWN_NOT_ALREADY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es kann noch nicht wieder ein Lockdown gestartet werden!",
		["Key"] = "LOCKDOWN_TIME",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es wurde ein Lockdown gestartet!",
		["Key"] = "LOCKDOWN_STARTED",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Der Lockdown wurde beendet!",
		["Key"] = "LOCKDOWN_ENDED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast nicht genug Geld auf der Hand!",
		["Key"] = "NOT_ENOUGH_MONEY_ON_HAND",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast nicht genug Geld!",
		["Key"] = "NOT_ENOUGH_MONEY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du kannst nur einen Scheck gleichzeitig ausstellen!",
		["Key"] = "CHEQUE_ALREADY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Dieser Scheck ist nicht für dich!",
		["Key"] = "CHEQUE_NOT_FOR_YOU",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast diesen Scheck entfernt!",
		["Key"] = "CHEQUE_REMOVED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du kannst nur eine Rechnung gleichzeitig ausstellen!",
		["Key"] = "BILL_ALREADY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Der Aussteller der Rechnung ist verschwunden!",
		["Key"] = "BILL_AWAY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast diese Rechnung entfernt!",
		["Key"] = "BILL_REMOVED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Der Waffenschein dieser Person kann nicht entzogen werden!",
		["Key"] = "CANT_REMOVE_LICENSE",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Person besitzt keinen Waffenschein!",
		["Key"] = "PERSON_HAS_NO_LICENSE",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Person besitzt bereits einen Waffenschein!",
		["Key"] = "PERSON_HAS_ALREADY_LICENSE",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast nun eine Waffenlizenz!",
		["Key"] = "WEAPON_LICENSE_GIVEN",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast eine Waffenlizenz ausgestellt!",
		["Key"] = "WEAPON_LICENSE_GIVEN_BY_YOU",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},

	{
		["Text"] = "Dir wurde deine Waffenlizenz entzogen!",
		["Key"] = "WEAPON_LICENSE_TAKEN",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast eine Waffenlizenz entzogen!",
		["Key"] = "WEAPON_LICENSE_TAKEN_BY_YOU",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},

	{
		["Text"] = "Es wurde eine Verbindung deines Geld-Sammlers getrennt!",
		["Key"] = "COLLECTOR_DISCONNECTED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Das Limit für diesen Job ist erreicht!",
		["Key"] = "SWITCH_JOB_LIMIT_REACHED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
				
	// Policebaton
	{
		["Text"] = "Diese Person hat in letzter Zeit keine Drogen genommen!",
		["Key"] = "PLAYER_DRUGS_NONE",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Person hat vor kurzem Heroin genommen!",
		["Key"] = "PLAYER_DRUGS_HEROINE",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Person hat vor kurzem Meth genommen!",
		["Key"] = "PLAYER_DRUGS_METH",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Person hat vor kurzem Pilze genommen!",
		["Key"] = "PLAYER_DRUGS_SHROOMS",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Person hat vor kurzem Weed geraucht!",
		["Key"] = "PLAYER_DRUGS_WEED",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},

	// Corona
	{
		["Text"] = "Diese Person hat eine Infektion!",
		["Key"] = "CORONA_HAS",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Person hat keine Infektion!",
		["Key"] = "CORONA_HASNOT",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du konntest die Infektion dieser Person nicht heilen!",
		["Key"] = "CORONA_NO_HEAL",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du konntest die Infektion dieser Person erfolgreich heilen und hast $1.500 erhalten!",
		["Key"] = "CORONA_HEAL",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},

	// Forum
	{
		["Text"] = "SB-Coins erfolgreich gegen Geld eingetauscht!",
		["Key"] = "JCOINS_EXCHANGED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},

	// Flag Cap
	{
		["Text"] = "Deine Gang hat das Flaggen Limit erreicht!",
		["Key"] = "CAP_LIMIT_REACHED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Deine Gang hat noch keine Flagge festgelegt (https://rp.suchtbunker.de)!",
		["Key"] = "CAP_ICON_NEEDED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Deine Gang hat diese Flagge erfolgreich eingenommen!",
		["Key"] = "CAP_SUCCESS",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Um eine Flagge einzunehmen musst du Mitglied einer Gang sein!",
		["Key"] = "CAP_GANG_NEEDED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Um eine Flagge einzunehmen muss deine Gang das Upgrade besitzen!",
		["Key"] = "CAP_UPGRADE_NEEDED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Flagge wird bereits eingenommen!",
		["Key"] = "CAP_ALREADY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Dein Job kann nicht mit Flaggen interagieren!",
		["Key"] = "CAP_JOB",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	// OIL
	{
		["Text"] = "Du kannst nur leere Fässer in dein Inventar aufnehmen!",
		["Key"] = "OIL_BARREL_FULL",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Um dies zu tun, musst du die Flagge einnehmen!",
		["Key"] = "NEED_FLAG",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},


	// GANG
	{
		["Text"] = "Du hast die Leitung der Gang abgegeben!",
		["Key"] = "GANG_OWNERSHIP_GIVEN",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast die Leitung der Gang erhalten!",
		["Key"] = "GANG_OWNERSHIP_RECEIVED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},

	{
		["Text"] = "Beim Annehmen der Einladung ist ein Fehler aufgetreten!",
		["Key"] = "GANG_JOIN_FAILED",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Du bist nun Mitglied einer Gang!",
		["Key"] = "GANG_JOIN_SUCCESS",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du bist in keiner Gang!",
		["Key"] = "GANG_NO",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du bist in keinem Squad!",
		["Key"] = "SQUAD_NO",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast deine Gang gelöscht!",
		["Key"] = "GANG_DELETED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast die Gang verlassen!",
		["Key"] = "GANG_LEFT",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Deine Gang hat diese Flagge bereits eingenommen!",
		["Key"] = "CAP_GANG_ALREADY",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du wurdest in ein Squad eingeladen!",
		["Key"] = "GANG_SQUAD_INVITED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Es ist ein Fehler beim beitreten des Squads aufgetreten!",
		["Key"] = "GANG_SQUAD_ERROR",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Das Geld konnte nicht vom Gang-Konto abgehoben werden!",
		["Key"] = "GANG_WITHDRAW_ERROR",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Das Geld wurde vom Gang-Konto abgehoben!",
		["Key"] = "GANG_WITHDRAW_SUCCESS",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Deine Gang hat XP erhalten!",
		["Key"] = "GANG_GOT_XP",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},

	// PD-Raid
	{
		["Text"] = "Dein Job kann keinen PD-Raid starten!",
		["Key"] = "PDRAID_JOB",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du kannst nur als Anführer eines Squads einen PD-Raid starten!",
		["Key"] = "PDRAID_NO_SQUAD",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es ist bereits ein PD-Raid im Gange!",
		["Key"] = "PDRAID_ALREADY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Das PD wird angegriffen!",
		["Key"] = "PDRAID_ATTACK",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Dein Squad hat einen PD-Raid gestartet!",
		["Key"] = "PDRAID_YOU",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es kann bereits wieder ein PD-Raid gestartet werden!",
		["Key"] = "PDRAID_READY",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Der letzte PD-Raid ist noch nicht lange genug her! /pdraidinfo",
		["Key"] = "PDRAID_TIME",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es sind nicht alle Squad-Mitglieder außerhalb des PDs!",
		["Key"] = "PDRAID_INSIDE_PD",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Alle Räuber des PD-Raids sind gestorben oder inhaftiert!",
		["Key"] = "PDRAID_ROBBERS_DEAD",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Alle Räuber haben das PD verlassen!",
		["Key"] = "PDRAID_ROBBERS_LEFT",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Deine Gang hat noch keinen PD-Plan!",
		["Key"] = "PDRAID_NO_UPGRADE",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es sind nicht genug Staatsbeamte online!",
		["Key"] = "MISSING_CPS",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Es ist kein PD-Raid im Gange!",
		["Key"] = "NO_PD_RAID",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	// PP
	{
		["Text"] = "Du hast kein Zugriff auf dieses Tool!",
		["Key"] = "TOOL_NO_ACCESS",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Dieses Prop ist auf der Blacklist!",
		["Key"] = "MODEL_BLACKLIST",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast das Drop-Limit erreicht!",
		["Key"] = "DROP_LIMIT",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast das Prop-Limit erreicht!",
		["Key"] = "PROP_LIMIT",
		["Color"] = NOTIFY_RED,
		["Time"] = 5,
	},
	{
		["Text"] = "Dieses Prop konnte nicht gefreezed werden (Stuck)!",
		["Key"] = "CANT_FREEZE_STUCK",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du hast dieses Item befestigt!",
		["Key"] = "ITEM_FROZEN",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast dieses Item gelößt!",
		["Key"] = "ITEM_UNFROZEN",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},

	// Generic
	{
		["Text"] = "Dein Inventar ist voll!",
		["Key"] = "INVENTORY_FULL",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast ungewaschenes Geld gewaschen!",
		["Key"] = "MONEYBAG_WASHED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du musst noch warten, bevor du einen neuen Demote starten kannst!",
		["Key"] = "DEMOTE_WAIT",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Props können nicht auserhalb der Welt erstellt werden!",
		["Key"] = "STACKER_OUT_OF_WORLD",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Bitte spamme den Stacker nicht!",
		["Key"] = "STACKER_SPAM",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Starte Duplikation..",
		["Key"] = "DUPE_START",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Duplikation beendet!",
		["Key"] = "DUPE_FINISHED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast eine Tür gekauft!",
		["Key"] = "DOOR_BOUGHT",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast eine Tür abgeschlossen!",
		["Key"] = "DOOR_FORCELOCKED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast eine Tür aufgeschlossen!",
		["Key"] = "DOOR_FORCEUNLOCKED",
		["Color"] = NOTIFY_GREEN,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast einen Schlüssel weggeworfen!",
		["Key"] = "DOOR_SOLD",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast alle deine Schlüssel weggeworfen!",
		["Key"] = "DOOR_SOLDALL",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du hast nicht genug Geld dabei!",
		["Key"] = "DOOR_NO_MONEY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Dieser Name ist bereits vergeben!",
		["Key"] = "NAME_TAKEN",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du kannst das nicht!",
		["Key"] = "YOU_CANT",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Kein Ziel gefunden!",
		["Key"] = "NO_TARGET",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Dieses Fahrzeug darf nicht gestohlen werden!",
		["Key"] = "VEHICLE_LOCKPICK_NOT_ALLOWED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du kannst den Job gerade nicht wechseln!",
		["Key"] = "CANT_SWITCH_JOB",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Der Demote wurde als erfolgreich eingestuft, da du währenddessen deinen Job gewechselt hast!",
		["Key"] = "SWITCH_JOB_AVOID_DEMOTE",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du kannst das nicht, da du Handschellen an hast!",
		["Key"] = "CANT_HANDCUFFED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du kannst das nicht, da du inhaftiert bist!",
		["Key"] = "CANT_ARRESTED",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	// FTU
	{
		["Text"] = "Verwarnung erfolgreich erstellt!",
		["Key"] = "WARN_CREATED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Ban erfolgreich erstellt!",
		["Key"] = "BAN_CREATED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "Eintrag erfolgreich hinzugefügt!",
		["Key"] = "WATCHLIST_ADDED",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},
	{
		["Text"] = "RP-Punkte erfolgreich vergeben!",
		["Key"] = "RP_POINTS_GIVEN",
		["Color"] = NOTIFY_BLUE,
		["Time"] = 5,
	},

	// Weapon Pickup
	{
		["Text"] = "Du kannst diese Waffe nicht aufnehmen!",
		["Key"] = "CANT_PICKUP_WEAPON",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du darfst nur Waffen vom Equipment-NPC nehmen!",
		["Key"] = "CANT_PICKUP_WEAPON_EQ_ONLY",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Diese Waffe hat die falsche Waffenstufe für deinen Job!",
		["Key"] = "CANT_PICKUP_WEAPON_STAGE",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
	{
		["Text"] = "Du benötigst mindestens vier Stunden Spielzeit, um diese Waffe aufzuheben!",
		["Key"] = "CANT_PICKUP_WEAPON_PLAYTIME",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Du benötigst mindestens drei Stunden Spielzeit, um Werbungen zu veröffentlichen!",
		["Key"] = "CANT_ADVERT_PLAYTIME",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},

	{
		["Text"] = "Diese Munition hat die falsche Waffenstufe für deinen Job!",
		["Key"] = "CANT_PICKUP_AMMO_STAGE",
		["Color"] = NOTIFY_ORANGE,
		["Time"] = 5,
	},
}

NotifyIDs = {}
for k,v in ipairs(NotifyLangs) do
	NotifyIDs[v["Key"]] = k 
end