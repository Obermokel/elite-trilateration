#NoEnv                          ; Leere Variablen werden nicht überprüft, ob sie Umgebungsvariablen sind.
#MaxThreadsPerHotkey 1          ; Das Script darf nicht mehrfach parallel laufen!
SetWorkingDir %A_ScriptDir%     ; Ändert das aktuelle Arbeitsverzeichnis des Scripts.
SetKeyDelay, 50, 50             ; Setzt eine Verzögerung, die nach jeder Tastatureingabe via Send und ControlSend erfolgen soll.

; ---------- Unsere Systeme ----------
FromSystemName := "Syreadiae JX-F c0"
UnknownSystems := { "Smojai YH-T b58-5" : 15008, "Byeia Euq TN-V b44-3" : 17359, "Byeia Euq WE-J b51-5" : 17482, "Zunuae XZ-O c19-5943" : 32770, "Shrogaei DT-P c19-2882" : 30178, "Bleia Hypoea NA-S b19-0" : 20577, "Prielea UN-W b1-3" : 17791, "M20 Sector CA-Y b1-1" : 13506, "Nyeakio TJ-A b56-0" : 19418, "Prieluia GD-Z c27-21" : 19395, "Flyoo Prau JX-Y b6-1" : 58823, "Hegua QG-T b31-0" : 7981, "Leamuae GH-B c1-184" : 28640, "Smojue BG-J b11-0" : 13606, "Zejai BP-M a89-2" : 19079, "Juenae SJ-Y c1-3151" : 34719, "Plaa Ain GB-R b32-15" : 19775, "Plaa Ain OI-T c3-41" : 19317, "Phroi Phoea VW-O c8-0" : 19028, "Wregoe HK-N b50-1" : 12817, "Byeia Thaa BR-H c25-0" : 13963, "Pyulz SC-D b18-3" : 17439, "Pyulz WD-L c10-5" : 17423, "Aucoks SC-D b44-0" : 13941, "Drojaea WK-R a45-0" : 14319, "Byua Eurk NX-C b4" : 14333, "NGC 6530 Sector OH-Z a2-1" : 14760, "Smojue QO-B b55-1" : 14717, "Slegao BW-S b8-1" : 9210, "Eidaills HE-P a101-0" : 21584, "M17 Sector IN-R c5-20" : 14191, "Hypio Pra FU-D c13-31" : 33966, "Byua Euq JO-L b49-6" : 16512, "Smojue FL-S b32-0" : 14183, "Zuni KV-B c14-1423" : 32713, "Graea Hypue PB-P a60-74" : 22759, "Prieluia TR-Q b33-6" : 19203, "Outorst XI-I b23-0" : 9384, "Lysoorb NE-S c4-1" : 17799, "Blaa Hypai FM-C b45-4" : 22950, "Whamboi XM-H c11-428" : 27005, "Byua Euq OA-H c10-51" : 16135, "Leami HZ-I c9-78" : 29713, "Pyralea SH-T b23-2" : 13294, "Floawns PT-X b5-5" : 24367, "Blu Thua DH-X b42-6" : 13739, "Myriesly ZZ-O c19-2066" : 34025, "Phua Aub BZ-E c1904" : 34552, "Synookio GN-R b21-0" : 21845, "Eok Gree VG-F c27-51" : 39109, "Lasoae HY-G c11-1560" : 41316, "Hyia Eohn XB-O b12-0" : 72558, "Lyaisua DE-E c26-1428" : 40439, "Ootosky IS-E b30-0" : 6793, "Greeroi RX-G b54-0" : 48098, "Sifi DN-X c16-2" : 11342, "Greae Phio JH-N c22-87" : 26341, "Byaa Aod HT-S c4-1" : 53748, "Oupailks UP-O c6-7" : 56333, "Hatchooe NE-G b40-0" : 55703, "Eactainds SI-E b53-0" : 53410, "Smootau YU-V b4-1" : 61334, "Byeia Chruia SH-Q b32-0" : 64481, "Byeia Chruia JW-U c3-0" : 64073, "Frecku LI-B b13-0" : 71923, "Nuwie TN-S b37-0" : 71625, "Pru Euq ZO-O b49-0" : 12488, "Byeia Chruia ME-P c19-2" : 64671, "Struia Eork II-A b34-0" : 72026, "Pyrooe Dryoae WO-G c27-1" : 71413, "Nuwia IH-U c19-0" : 71246, "Preae Aewsy LG-R b51-0" : 17053, "Truecho SB-W c15-9" : 63155, "Ogaimy BP-I c25-218" : 29312, "Bleia Dryiae AQ-J b56-0" : 15511, "Col 173 Sector YW-S b21-0" : 13223, "Blau Aec WX-J b22-9" : 22717, "Blu Euq KG-F c11-35" : 15740, "Puwee KX-U c2-0" : 69708, "Gru Pri RW-L b27-0" : 54515, "Slatchue BW-K b41-0" : 53532, "Pro Broae XH-N b48-0" : 60971, "Swoilz TB-A a41-0" : 12607, "Ploxao PS-I a105-3" : 65743, "Ploxao KC-O c9-3" : 65066, "Clookuia PY-O c20-4" : 23903, "Byoi Aod XP-N b20-1" : 53389, "Fachoae YJ-Q b24-0" : 53821, "Prooe Flyi TO-B b44-11" : 47954, "Blua Phio FN-B b30-16" : 25830, "Blaa Flyi FB-W b35-7" : 50812, "Whambeia KB-W c15-491" : 28696, "Gria Phreia FE-V c4-69" : 25155, "Flyooe Hypue AR-U c19-15" : 17708, "Hypio Pri RR-A a82-62" : 34252, "Eos Chrea BC-D c12-7308" : 36334, "Dryau Chrea GZ-O c19-2617" : 37870, "Phaa Ain JS-M b26-0" : 5928, "Stranaei VV-O c6-41" : 28043, "Phraa Pra WV-I b1-4" : 34623, "Phreia Byoea QQ-N c23-1" : 57370, "Phreia Byoea MO-B c16-7" : 57122, "NGC 2264 Sector IE-M b22-0" : 11533, "Whambeia MF-N c20-91" : 28599, "Synuefe GY-L c10-2" : 12275, "Hegua RS-S b4-7" : 7078 }

; ---------- Tastenbelegung ----------
; g             Galaxiekarte öffnen/schließen
; Enter         UI auswählen
; Backspace     UI zurück
; PgUp          UI Reiter nach rechts
; PgDn          UI Reiter nach links
; Pfeiltasten   UI links/rechts/hoch/runter

; ----------- Anmerkungen ------------
; 1) nconvert.exe muss im selben Verzeichnis liegen wie dieses Script.
; 2) Die Screenshots werden nicht von Programmen wie EDDiscovery "wegverarbeitet",
;    bleiben also als BMP in Bilder\Frontier Developments\Elite Dangerous.
; 3) Tastenbelegung und Wartezeiten müssen ggf angepasst werden.
; 4) Hochladen funktioniert nur, wenn Google Drive lokal installiert ist.
;    Das Verzeichnis muss dann ggf angepasst werden.




; -------------------------------------------------------------
; Hotkey um Screenshots zu machen und hochzuladen
; -------------------------------------------------------------
^g::

; ~~~~~~~~~~ Start ~~~~~~~~~~
Send, g                 ; Galaxiekarte öffnen
Sleep, 10000            ; Beim ersten öffnen eine etwas längere Ladezeit

; ~~~~~~~~~~ GPL Systeme ~~~~~~~~~~
For UnknownSystemName, EstimatedDistance in UnknownSystems
{
        ; ~~~~~~~~~~ Systemkarte öffnen ~~~~~~~~~~
        Send, {PgUp}                    ; Reiter nach rechts zum Suchfeld
        Sleep, 250
        Send, {Enter}                   ; Ins Suchfeld springen
        Send, %UnknownSystemName%       ; Systemname eingeben
        Send, {Enter}                   ; Suche abschicken
        Sleep, 10000                    ; Warten bis Karte zentriert ist
        Send, {F10}                     ; Screenshot machen
        SoundBeep, 750, 250             ; Kurzer Beep zur Bestätigung
        Sleep, 1000                     ; Die gigantische Bitmap Datei will gespeichert werden...
        Send, {PgDn}                    ; Reiter nach links für Ausgangszustand

        ; ~~~~~~~~~~ Screenshots umbenennen, konvertieren, hochladen ~~~~~~~~~~
        Loop, Files, C:\Users\%A_UserName%\Pictures\Frontier Developments\Elite Dangerous\*.bmp
        {
                NewFileName := Format("Distance_{:s}_{:06i}_{:s}_{:02i}", FromSystemName, EstimatedDistance, UnknownSystemName, A_Index)
                ; Umbenennen
                FileMove, %A_LoopFileFullPath%, %A_LoopFileDir%\%NewFileName%.bmp
                ; Konvertieren
                RunWait nconvert.exe "-out" "png" "%A_LoopFileDir%\%NewFileName%.bmp", , Hide
                ; BMP löschen
                FileDelete, %A_LoopFileDir%\%NewFileName%.bmp
                ; PNG Hochladen
                IfExist, C:\Users\%A_UserName%\Google Drive\Elite Dangerous\Trilateration
                        FileMove, %A_LoopFileDir%\%NewFileName%.png, C:\Users\%A_UserName%\Google Drive\Elite Dangerous\Trilateration
        }
}

; ~~~~~~~~~~ Fertig ~~~~~~~~~~
Send, g                 ; Galaxiekarte schließen

Return




; -------------------------------------------------------------
; Hotkey zum schnellen Abbrechen!
; -------------------------------------------------------------
Esc::

ExitApp

Return
