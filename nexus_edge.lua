-- ============================================================================
-- MGG FUSION V4.1
-- Admin: Smith Luque
-- Base funcional fusionada: SCRIPT ORIGINAL + mgg_script_warlert
-- Interfaz reorganizada para Game Guardian con etiquetas ASCII compatibles.
-- V4.1: lista actualizada, admin solo en bienvenida/acerca y Fichas Reactor tambien en Recursos.
-- ============================================================================

-- ---------------------------------------------------------
-- [NUEVO] 1. ESPACIO PARA TU LISTA
-- ---------------------------------------------------------
local raw_db = [[
Robot	A_01
Robot Débil	A_02
Androide	AA_01
Goliat	AA_02
Necrobot	AB_01
Hypnos	AB_02
Xenarach	AB_03
Humanoide Pérfido	AC_01
Capitán Mecano	AC_02
Dezinger	AC_03
Escarabot	AD_01
Monocerus	AD_02
Coloso	AE_01
Líbraro	AE_02
Deus Machina	AF_01
Virgon	AF_02
Zombi	B_01
Zombi Débil	B_02
Jack O'Lantern	B_03
Zomborg	BA_01
Muñeca Diabólica	BA_02
Lord Blood	BB_01
Espectro de la Cripta	BB_02
Déspota Negro	BC_01
Capitán Osamenta	BC_02
Necrodragón	BD_01
Cancernia	BD_02
Fantasmonauta	BE_01
Cáprika	BE_02
Quebrantacuellos	BE_03
Barón Lundi	BF_01
Mago Tétrico	BF_02
Guerrero	C_01
Guerrero Débil	C_02
Ejecutor	CA_01
Intercéptrix	CA_02
General Caos	CA_03
Banshee Guerrera	CB_01
Bushi	CB_02
Caballero Nórdico	CC_01
Buck Maurice	CC_02
Honey Bunny	CD_01
Sagitauro	CD_02
Haggis	CD_03
Marciano Errante	CE_01
Guardián Galáctico	CE_03
Valkiria	CF_01
Thor	CF_02
Bestia	D_01
Reptoide	DA_01
Aracno	DA_02
Cerbero	DB_01
Zombat	DB_02
Cobrakái	DB_03
Rakshasa	DC_01
Leohart	DC_02
Gargantus	DC_03
Kaiju Kitty	DD_01
Maestro Splitter	DD_02
Reina Parásita	DE_01
Cosmo Kong	DE_02
Dracus Nobilis	DF_01
Sátiro Hechicero	DF_02
Extraterrestre	E_01
Aniquilador	EA_01
Sentry	EA_02
Exopez	EA_03
Tutti Viscosi	EB_01
Sirenia	EB_02
Devorador	EB_03
Sundance Bug	EC_01
Behemoth	EC_02
Xenos	ED_01
Rocágeno	ED_02
Astrosurfista	EE_01
Supernovus	EE_02
Maestro Oida	EE_03
Nébulon	EF_01
Mr Marvelous	EF_02
Aquapunzel	EF_03
Diablesa	F_01
Mago de las Nieves	F_03
Tecno Tao	FA_01
Mekali	FA_02
La Parca	FB_01
Príncipe Escorpión	FB_02
Anubis	FB_03
Gandolphus	FC_01
Capitán Paz	FC_02
Medusa	FD_01
Horus	FD_02
Ivory Hanzo	FD_03
C'thlig	FE_01
Azuria	FE_02
Señor del Abismo	FF_01
Castigo	FF_02
Oriax	FC_03
Ragnar	CB_03
Triple-B	BA_03
Mandrágora	FF_03
Motero Maldito	BB_03
Armadizo	DE_03
Mantidroide	DA_03
Carnero Vengador	BF_03
Battle Toad	CD_04
Cézanne	DC_04
H.U.M.A.N.	AA_03
Rambit	D_03
Star Trooper	EC_03
Micky Krueger	BC_03
Táuridus	AD_03
Autonoraptor	AF_04
Invadron	AE_03
Bruja Malvada	FB_04
Oso Espantoso	BD_03
Azog	CF_04
Geminium	CE_02
Psicojabalí	DD_03
Zena	CC_03
Absolem	DF_03
Wampara	ED_03
Barbaroca	AF_03
George Washington	BC_04
Louis XVI	DB_04
Bazzinger	FA_03
Space Princess	FE_04
Astromago	FE_03
Garuda	A_03
Hada Machete	CF_03
Genshiryoku	DE_04
El Experimento	BA_04
Leonidas	CB_04
Buranka	FD_04
Mexihcatl	FC_04
Banker	FA_04
Emperador Galáctico	BF_04
Nebulus	FE_05
Project X27	CA_04
Miroku	DF_04
Mapach Wik	ED_04
El Fontanero	AC_04
Matafantasmas	EB_04
Exo Cookie	DE_05
Britany	BF_05
Frostmass	C_03
Santactopus	EC_04
Mephisto	EF_04
Monolith	FF_04
Malvatron	AD_04
Lara	CC_04
Commander Ender	AB_04
Zortrex	CE_04
Tengu	BD_99
Sacamantecas	BB_04
Oculus	AA_04
Supraman X	AE_04
Cupido	CB_05
Abraham Lincoln	AF_05
Escuadrón Rhino	DA_04
Dama Harpía	BD_04
Yelda	FC_05
Flying Jordson	EE_04
Cernunnos	DD_04
Capitán Perla Negra	BE_04
Brick McGole	EA_04
Kraken	EF_05
Genimal	DF_99
Hardcorius	FB_05
Marine Muerto	EB_05
Challengeer	CA_05
Ciberpunk	AC_05
Neo Urban XIII	AB_05
Tecnoforzer	AA_05
Chamán Sombra	FA_05
Ingeniero	FE_99
Sun-Duke	CE_05
Ceres	E_03
Shin Hakuho	CC_05
Fenec Plus Ultra	DA_05
Madre de los Dragones	DF_05
Brawler	DB_05
Loco de la Motosierra	BC_05
Rey Mono	DC_05
Acarius	ED_05
Cazador Espacial	EC_05
Artista Siniestro	FD_05
Zeus	EC_06
Glubber	FF_05
Nyrlatoth	BE_05
Cibercroc	AD_05
Bulldozer	BD_05
Pejelagarto	DD_05
Triceratanque	DA_06
Monje Akuso	CF_05
Caronte	BB_05
Tío Sam	CF_06
Hog the Ripper	CD_05
Rey Steven	EA_05
Duplicado de Eva	AF_06
Ciberbabosa	AE_05
Jhingal	EE_05
Doctor Blaw	BA_05
Tomahawk	CE_06
Hechicera	FB_06
Dandi Óscar	BC_06
Kung Chow	FD_06
Comeabuelas	DC_06
Mau-Jack	ED_06
Lily	FA_06
El Rey de Mimphys	BF_06
Bioerizo	AD_06
Gladiadog	CD_06
Casto	DB_06
Viper	AC_06
Dollbyte	FE_06
Garlog	EB_06
Krunk	EA_06
Apofis	BE_06
Cuervo	B_04
Drusella	AB_06
Mandor	EF_06
Borrasca	FC_06
Sable	DF_06
Artemisa	CB_06
Mamá Kangú	DD_06
Darwin	DE_06
ERR-ADI-K-Bot	CA_06
Námaste	FF_06
Tyrtiduron	BD_06
Bounda	AF_07
Mega Claus	CF_07
Marv	AE_06
Z-0	BA_06
Falcon	EC_07
Paramic	ED_07
El Original	BD_07
Señor Dragón	DB_07
Carlingger	DA_07
Rey de los Insectos	FE_07
Aplastador	AB_07
Quimera	DF_07
Champicorteza	BF_07
Reina Rakkti	EE_06
Hércules	AA_06
Aran	CE_07
El Gringo	CC_06
Spartac	CC_07
Amarok	FC_07
Pikabú	BA_07
Leprechaun	F_04
Fénix	FD_07
Kal Wayne	EF_07
Avispa Diésel	AD_07
Robofuerte	AC_07
Rocky Botboa	CA_07
Las Moiras	FB_07
Dr. Frost	FA_07
Capitán Gluglú	DE_07
Rey Esqueleto	CB_07
Turbacieno	BC_07
Juan Hielo	CD_07
Capitán Patriota	EA_07
Astro Gummy	EE_07
Nezarim	BE_07
Globomono	DD_07
Starminator	EB_07
Espectra	EC_08
Wynn	CF_08
Thrann	BC_08
Blender	AC_08
Rinotauro	DD_08
Cosmopandas	DE_08
Kudamono	FC_08
Alfie	AE_07
Tiranozomb	DB_08
H0ud1n1	AF_08
FootBot	FA_08
Geomega	FF_07
Glotón	BB_06
Seiyatsu	EF_08
Asaylan	DA_08
Wrath	CB_08
Lady Libertad	EA_08
Gozer	FB_08
Van Helsing	BF_08
Kitty Ranger	AD_08
Gorthaur el Cruel	FC_09
El Rey sin Nombre	CE_08
Naraxis	BA_08
Andrómeda	AE_08
Enano y Cerebro	BD_08
Arcángel	FA_99
Diablo	EB_99
Drall	CD_08
Noren	DC_07
Sgt. Pandamonium	ED_08
Omikami	FD_08
Makino	CA_08
Chantecler	DF_08
Dr. Nucleus	EB_08
Amo de las Llaves	CF_09
Carcinus Gigas	AD_09
Sanik	DC_08
Necroparásito	BB_07
Proyecto 3V3	AA_07
Optimus Zord	AC_09
Faucesnegras	BD_09
Tormenta de Fuego	FF_08
Golemagnus	EE_08
Dug Dario	BE_08
Centinela R0B-H4N	AA_08
Big Bo$$	CA_09
Reina Sylvidra	EB_09
Quetzalcóatl	DF_09
Majin Zam	FE_08
Bruja de la Peste	BB_08
Excaliduro	EC_09
Zigmo	DE_09
Gran Señor de las Tumbas	AB_08
Pirótropo	BE_09
Altaris	CA_10
Capitán Gorn	EA_09
Yokozuna	CC_08
Calaca	BF_09
Lancelot	CC_09
Centaurus	AE_09
Mon-Key Crew	CD_09
Sound Killah	DA_09
Dracomago	FD_09
Caudillo Steam	AF_09
Cazarrecompensas	A_05
Surfista del Espacio	EA_10
Mister T-Ger	DD_09
Master Paw	FD_10
Grumpy Claus	AB_09
Sargento Dusk	AC_10
Gwenn	DF_10
El Coleccionista	BC_09
El Veneno	AF_10
Frankenhuahua	BB_09
Mad Mike	DE_10
Jane Saw	CB_09
Horax	DB_09
Maestro Shinzo	DC_09
Xeleroth	FE_09
Excavalipsis	BA_09
El Enterrador	BF_10
Zenguru	FA_09
H.U.N.T.3.R	AA_09
Arelvam	CF_10
Zar Bomba	CE_09
Mago Ryzafredd	EF_09
Hawkeye	DA_10
Megastral	EE_09
Liquidador	FF_09
Yggdrasil	FB_10
Rox McRain	ED_09
Hadeath	FB_09
Divastator	EF_10
Angry Pork	ED_10
Frankendwarf	CB_10
Akai-Bot	AE_10
Krampus	DC_10
Waryena	BD_10
Bahamut	FE_10
Mimi Cronocurva	FA_10
Guardia Men'ki	CD_10
Hipopotanque	AD_10
Hefesto	FC_10
T-3rr0r	BB_10
A027441	AF_99
Rey Lulu	BC_10
Kolossus	CE_99
Kameo	DD_10
ED-404	AA_10
Hellsaw	BA_10
Urgan	CC_10
Buffalor	DB_10
Gamallia	EC_10
Gakarian	EB_10
S-K-Venger	AB_10
Overkill	BE_10
Capitán Achabe	CE_10
Aubraea Mutantula	EB_11
Bregbeam	FF_10
Piwisher	DB_11
Nimrod	FC_99
E.T.-Liot	EE_10
Spin Fury	AC_11
Cooktouille	BD_11
Orión	FA_11
Heimdall	AF_11
Chun-Lei	CE_11
The Reef	CA_11
Sir Bannog	CD_11
Pesadilla Viviente	FB_11
An0malie	DA_11
Owlock	ED_11
TriAD	AA_11
La Olvidada	BB_11
Mago de la Singularidad	EF_99
Ishi no Ōkami	FD_11
Disensión	CB_11
Aqueronte	BF_11
Drei, Space Corgi	DE_11
Mix0-Logo	AE_11
Veren Kaeesu	EC_11
Spada	DC_11
Roadmaster	BA_11
Gerard Steelgarden	FF_11
Chocolem	DF_11
Drudge Zombie	B_05
Animus de Irrealidad	EE_99
Midas	FC_11
Caliburn EX	CF_11
Santagonista	CC_11
Barbaro	C_05
Dama del Crepúsculo	FB_12
Mecaovoide Arácneo	AD_11
Terror Abisal	DD_11
Oculys	BE_11
Pierrot	FE_11
Phileas Derocas	AC_12
Dreadnought	EA_11
Missy Despierta	CA_99
Enviro 3.0	AB_11
Asteroide Gestalt	EE_11
X'astuth	EF_12
Colmillo Rabioso	BC_11
Doctor del Farol	BB_12
Leviatán	DE_12
Explorador Sideral	E_12
Aullosaurio	D_12
Protector de los Sueños	AF_12
Basilisco y Esdragón	DF_12
Heredero de los 5 anillos	CF_12
Ballesto	CB_12
Cibermántico Etéreo	FA_12
Lampyrion Solar	DD_12
Dimentio	EF_11
Generalísimo Chocoleón IV	FC_12
Archivista Eterno	FF_12
Ammonia Atlantica	ED_12
General de Terracota	CA_12
Gran Gusano de los Túneles	DB_12
Litominero Stellariano	EC_12
Capitán Águila	CD_12
Octopía	ED_99
Médico Astral	EB_12
Simurgh	FD_12
Väinämöinen	F_13
Disfuncidroide	AB_12
Caronte (Halloween)	BC_12
Cabloide	AA_12
Exoceleste Álgido	FE_12
Clérigo Oscuro	BF_12
D'Arathomis	C_13
Tenacity	AE_12
Regulo&Juzya	CE_12
Gelatina Purulenta	BE_12
Vivaldi	FE_13
Tecnocaracol	DA_12
Zapador de Madrigueras	DC_12
Invocador	F_12
Lepidoptech	AD_12
Huesamblaje	B_12
Sasquatch	D_13
Thanaconda	BD_12
A00-C0R3-C0NTR0L	AA_99
Hijo de la Tormenta	CF_13
Bricodrón LLK-215	EA_12
GAR, Zombi Soberano	B_13
Amalgalmas	BF_13
Llama Sensei	DD_13
Polaris	EE_12
Myrmidus.exe	AD_13
Helicoide Boreal	FA_13
Antropobot Soñador	DA_13
Anteros	CA_13
Doctor Desollador	BC_13
Oryctolagus Exobioicus	DE_13
Cr€$u$	BA_12
Asimov	A_13
Achernar	EF_13
El Motín	CB_13
Xinomas	EB_13
Simulacro de Combate	AB_99
Helidrón KxT-271	AE_13
Reed, el Verdadero Héroe	CF_99
El Fosforescente	BB_13
Tezcatlipoca	FD_13
Scaramouche	CC_12
Traiciobaza	BC_14
Astrobservador	E_13
Sierrametrodon	DC_13
Capsuladora MTZ-004	AC_13
Núcleo seráfico	FE_14
Rey De Avalon	FC_13
K'yu T'ypaï	EF_14
Amistad Sin Limites	CC_13
Sakuraboshi	FF_13
Giganto-Moai	AE_14
TCB-8566 Trafficroid	AA_13
Bearsikk Sikleast	CD_13
Capitan Barbanegra	CB_14
La Anárquica	BA_13
Terror Jurasico	DC_14
Emperador Helado	DF_13
Breakmaster	CA_14
El Descolorido	DB_13
Azaronimo	AE_99
Professor Cronomantico	AC_14
Golem de Epocas	AF_13
La locura reptante	DB_14
Hekatoncheiros	EC_13
Atlas	CE_13
Peregrino Espacial	EA_13
Termodroide Celsius	EA_99
Black I.C.E.	AF_14
Profeta del Crepúsculo	FF_14
Señor Bestial	DD_14
Freyja, Reina de los Vanir	FD_14
Altísimo Candelabro	FB_13
El Arquitecto	AB_13
Medinosaurio	ED_13
Fiera del Campo	BD_14
B.U.N. Genio	DA_14
Gladiador	C_14
Hidrira	ED_14
Infinito Supermasivo	DE_14
Automata	A_14
Nexo Orbital	EE_13
Mascarada Emocional	FF_99
Mago	F_14
Zagam, Rey De La Avaricia	FB_14
Sangresquito	BD_13
Don Gamberetti	CD_14
Rey Azul	CC_14
Espectroplasma	B_14
El Presentador	AB_14
Viajero de Vortice	BE_13
D.A.B.	EA_14
Mecargola	BA_14
Hielo Patinadora Yria	CF_14
Estrellador Telurico	DE_15
Origamix	AD_14
El Glitchy Corazon	AB_15
Spiraxia	E_14
Irradiancia	BF_14
El Hambre	BE_15
Dandy Cosmico	CE_14
Kereon del Abismo	EA_15
Apiarca	D_14
Ornitorrinco	DD_15
]]

-- ---------------------------------------------------------
-- [NUEVO] 2. VARIABLES Y PROCESAMIENTO DE LA LISTA
-- ---------------------------------------------------------
local char_list = {}
if #raw_db > 10 then
    for line in raw_db:gmatch("[^\r\n]+") do
        local name, code = line:match("^(.-)%s+(%S+)$")
        if name and code then
            table.insert(char_list, {name = name, code = string.upper(code)})
        end
    end
end

-- Variables Globales Originales
originalHex = nil
newHex = nil
originalSpecimens = nil
newSpecimens = nil
reactorReady = false

-- ---------------------------------------------------------
-- [NUEVO] 3. FUNCIONES DEL CAMBIADOR INDIVIDUAL
-- ---------------------------------------------------------

-- Buscador de nombres y codigos
-- Normaliza tildes para que tambien puedas buscar, por ejemplo, "capitan" sin escribir "capitán".
local function normalizeText(text)
    text = tostring(text or "")
    local replacements = {
        {"Á", "a"}, {"À", "a"}, {"Ä", "a"}, {"Â", "a"}, {"Ã", "a"},
        {"á", "a"}, {"à", "a"}, {"ä", "a"}, {"â", "a"}, {"ã", "a"},
        {"É", "e"}, {"È", "e"}, {"Ë", "e"}, {"Ê", "e"},
        {"é", "e"}, {"è", "e"}, {"ë", "e"}, {"ê", "e"},
        {"Í", "i"}, {"Ì", "i"}, {"Ï", "i"}, {"Î", "i"},
        {"í", "i"}, {"ì", "i"}, {"ï", "i"}, {"î", "i"},
        {"Ó", "o"}, {"Ò", "o"}, {"Ö", "o"}, {"Ô", "o"}, {"Õ", "o"},
        {"ó", "o"}, {"ò", "o"}, {"ö", "o"}, {"ô", "o"}, {"õ", "o"},
        {"Ú", "u"}, {"Ù", "u"}, {"Ü", "u"}, {"Û", "u"},
        {"ú", "u"}, {"ù", "u"}, {"ü", "u"}, {"û", "u"},
        {"Ñ", "n"}, {"ñ", "n"}, {"Ō", "o"}, {"ō", "o"}
    }
    for _, pair in ipairs(replacements) do
        text = string.gsub(text, pair[1], pair[2])
    end
    return string.lower(text)
end

function searchList(prompt_text)
    local input = gg.prompt({prompt_text}, nil, {"text"})
    if not input then return nil end

    local search_term = normalizeText(input[1])
    if search_term == "" then
        gg.alert("[!] Escribe un nombre o codigo para buscar.")
        return nil
    end

    local matches = {}
    local menu = {}

    for i, v in ipairs(char_list) do
        local searchable = normalizeText(v.name .. " " .. v.code)
        if string.find(searchable, search_term, 1, true) then
            table.insert(matches, v)
            table.insert(menu, v.name .. " (" .. v.code .. ")")
        end
    end

    if #matches == 0 then
        gg.alert("[X] No encontrado en la lista.\n\nPrueba escribiendo parte del nombre o el codigo exacto.")
        return nil
    end

    local choice = gg.choice(menu, nil,
        "RESULTADOS: " .. #matches .. " | LISTA TOTAL: " .. #char_list ..
        "\nSelecciona un mutante: Nombre (CODIGO)")
    if not choice then return nil end

    return matches[choice].code
end

-- Reemplazo Exacto (Método ":")
function replaceText(old_text, new_text)
    gg.clearResults()
    -- Regiones Ca, A, O (Las que usas manualmente)
    gg.setRanges(gg.REGION_ANONYMOUS | gg.REGION_C_ALLOC | gg.REGION_OTHER)
    
    gg.toast("[?] Buscando: " .. old_text)
    
    -- Búsqueda exacta de texto
    gg.searchNumber(":" .. old_text, gg.TYPE_BYTE)
    
    local count = gg.getResultsCount()
    if count == 0 then
        gg.alert("[X] No encontrado: " .. old_text)
        return
    end
    
    if count > 3000 then
        gg.alert("[!] Demasiados resultados ("..count..").\nSé más específico o cambia de pantalla.")
        gg.clearResults()
        return
    end
    
    -- Cargar resultados (Arreglo del error anterior)
    gg.getResults(count)
    
    -- Editar Todo
    gg.editAll(":" .. new_text, gg.TYPE_BYTE)
    
    gg.toast("[OK] ¡LISTO! " .. count .. " cambiados a " .. new_text)
    gg.clearResults() 
end
function Mutants()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("0",gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 22 53 70 65 63 69 6d 65 6e",gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 26 53 70 65 63 69 6d 65 6e",gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2c 53 70 65 63 69 6d 65 6e",gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 53 70 65 63 69 6d 65 6e",gg.TYPE_BYTE)
    gg.clearResults()
    gg.processResume()
    gg.timeJump("5:0")
    gg.toast("Mutantes cargados correctamente.")
end
-- Copiar código
function copyOnly()
    local code = searchList("Buscar mutante para COPIAR:")
    if code then
        gg.copyText(code)
        gg.toast("[COPY] Copiado: " .. code)
    end
end

-- Menú del Cambiador Individual
function MenuCambioIndividual()
    while true do
        local choice = gg.choice({
            "[SWAP] REEMPLAZAR (Buscar por Nombre)",
            "[CODE] REEMPLAZAR (Buscar por Código)",
            "[COPY] Lista de Mutantes (Solo lista)",
            "[<] Volver al Menú Principal"
        }, nil, "[MUT] CAMBIADOR INDIVIDUAL")
        
        if choice == 1 then
            local old = searchList("¿Qué mutante tienes?")
            if old then
                local new = searchList("¿Qué mutante quieres?")
                if new then replaceText(old, new) end
            end
        elseif choice == 2 then
            local input = gg.prompt({"Actual (ej: AA_01)", "Nuevo (ej: EE_02)"}, {"", ""})
            if input and input[1] ~= "" and input[2] ~= "" then
                replaceText(string.upper(input[1]), string.upper(input[2]))
            end
        elseif choice == 3 then
            copyOnly()
        elseif choice == 4 or choice == nil then
            break -- Salir del bucle para volver al menú principal
        end
    end
end

-- ---------------------------------------------------------
-- [ORIGINAL] 4. FUNCIONES ORIGINALES (INTACTAS)
-- ---------------------------------------------------------
function Medlab()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("0", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 42 75 69 6C 64 69 6E 67", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 26 42 75 69 6C 64 69 6E 67", gg.TYPE_BYTE)
    gg.clearResults()
    gg.processResume()
    gg.timeJump("5:0")
end

function GoldFurnace()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber("1;44,000;0;0;0;0;0;0;2;20::165", gg.TYPE_DWORD)
    r = gg.getResults(100000)
    gg.editAll("6;1;1,769,292,314;1,852,400,748;1,128,816,487;12,895;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;3000", gg.TYPE_DWORD)
    gg.refineNumber("6", gg.TYPE_DWORD)
    r = gg.getResults(100000)
    gg.addListItems(r)
    gg.clearResults()
    gg.sleep(1000)
    gg.searchNumber("h1873635F7061636B6167655F3200000000000000000000000", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h 1a 42 75 69 6c 64 69 6e 67 5f 48 43 5f 32", gg.TYPE_BYTE)
    gg.clearResults()
end

function Speed5()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2A 62 75 6E 64 6C 65 5F 6F 72 62 73 5F 73 70 65 65 64 5F 33 5F 33 00 00", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2A 62 75 6E 64 6C 65 5F 6F 72 62 73 5F 73 70 65 65 64 5F 35 5F 31 00 00", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber(":speed_03", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll(":speed_05", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("400", gg.TYPE_DWORD)
    r = gg.getResults(100000)
    gg.editAll("1500", gg.TYPE_DWORD)
    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("0", gg.TYPE_BYTE)
    gg.clearResults()
    gg.processResume()
    gg.timeJump("5:0")
end

function xpOrb()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    local revert = gg.getResults(100000)
    gg.editAll("0", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber(":*bundle_orbs_slash_4_2", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.processResume()
    local t = gg.getResults(1)
    if #t == 0 then gg.alert("No se encontró nada.") return end
    for i, v in ipairs(t) do
        v.address = v.address + 0x378
        v.flags = gg.TYPE_BYTE
        v.value = "1"
        v.freeze = true
        v.freezeType = gg.FREEZE_NORMAL
    end
    gg.clearResults()
    gg.setValues(t)
    gg.addListItems(t)
    gg.processResume()
    gg.timeJump("5:0")
    t = nil
end

function JackpotBox()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("0", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h28416E6E697665727361727932335F426F785F3235000000106D6174657269616C000000", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    local start = gg.getResults(1)
    local valuesToEdit = {}
    for i = 1, #start do
        local target = start[i].address + 0xfffffffffffffff8
        table.insert(valuesToEdit, { address = target, flags = gg.TYPE_DWORD, value = 1 })
    end
    gg.setValues(valuesToEdit)
    gg.clearResults()
    gg.processResume()
    gg.timeJump("5:0")
end

function XPJarBox()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("0", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h2C416E6E69766572736172795F323031395F426F785F3900106D6174657269616C000000", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    start = gg.getResults(1)
    valuesToEdit = {}
    for i = 1, #start do
        local target = start[i].address + 0xfffffffffffff578
        table.insert(valuesToEdit, { address = target, flags = gg.TYPE_DWORD, value = 1 })
    end
    gg.setValues(valuesToEdit)
    gg.clearResults()
    gg.processResume()
    gg.timeJump("5:0")
end

function Attack7()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":orb_basic_attack_05", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll(":orb_basic_attack_07", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("300", gg.TYPE_DWORD)
    r = gg.getResults(100000)
    gg.editAll("10000", gg.TYPE_DWORD)
    gg.clearResults()
    gg.processResume()
    gg.timeJump("5:0")
end

function AllMutants()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("0", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 22 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 26 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2c 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
    gg.clearResults()
    gg.processResume()
    gg.timeJump("5:0")
end

function BasicOrbs()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    local r = gg.getResults(100000)
    gg.editAll("0", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber(":(bundle_orbs_basic_06", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.processResume()
    local t = gg.getResults(1)
    if #t == 0 then gg.alert("No se encontró nada.") return end
    for i, v in ipairs(t) do
        v.address = v.address - 0x38
        v.flags = gg.TYPE_BYTE
        v.value = "1"
        v.freeze = true
        v.freezeType = gg.FREEZE_NORMAL
    end
    gg.setValues(t)
    gg.addListItems(t)
    gg.clearResults()
    gg.processResume()
    gg.timeJump("5:0")
end

function Bundle6Orbs()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    local r = gg.getResults(100000)
    gg.editAll("0", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber(":&bundle_orbs_core_06", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 1)
    gg.processResume()
    local t = gg.getResults(1)
    if #t == 0 then gg.alert("No se encontró nada.") return end
    for i, v in ipairs(t) do
        v.address = v.address - 0x38
        v.flags = gg.TYPE_BYTE
        v.value = "1"
        v.freeze = true
        v.freezeType = gg.FREEZE_NORMAL
    end
    gg.setValues(t)
    gg.addListItems(t)
    gg.clearResults()
    gg.processResume()
    gg.timeJump("5:0")
end

function Buranka_Britany()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    local r = gg.getResults(100000)
    gg.editAll("0", gg.TYPE_BYTE)
    gg.clearResults()
    gg.searchNumber(":&Bundle_Mutants_Fire", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
    gg.processResume()
    local t = gg.getResults(1)
    if #t == 0 then gg.alert("No se encontró nada.") return end
    for i, v in ipairs(t) do
        v.address = v.address + 0x1B8
        v.flags = gg.TYPE_BYTE
        v.value = "1"
        v.freeze = true
        v.freezeType = gg.FREEZE_NORMAL
    end
    gg.setValues(t)
    gg.addListItems(t)
    gg.clearResults()
    gg.processResume()
    gg.timeJump("5:0")
end

function MutantReactor()
    gg.setVisible(false)
    gg.clearResults()
    if not reactorReady then
        gg.alert("Primero usa: Cambiar el Reactor -> selecciona NUEVO y luego el ORIGINAL (a reemplazar).")
        return
    end
    gg.searchNumber(originalHex, gg.TYPE_BYTE)
    local r = gg.getResults(100000)
    gg.editAll(newHex, gg.TYPE_BYTE)
    gg.clearResults()
    for i = 1, #originalSpecimens do
        gg.searchNumber(":" .. originalSpecimens[i], gg.TYPE_BYTE)
        local s = gg.getResults(100000)
        gg.editAll(":" .. newSpecimens[i], gg.TYPE_BYTE)
        gg.clearResults()
    end
    gg.toast("Reactor cambiado.")
    originalHex = nil
    newHex = nil
    originalSpecimens = nil
    newSpecimens = nil
    reactorReady = false
end

function ReadyFight()
    gg.setVisible(false)
    gg.clearResults()
    gg.searchNumber(":ready_fight", gg.TYPE_BYTE)
    local results = gg.getResults(100000)
    if #results == 0 then return end
    for i = 1, #results do
        results[i].value = 0
        results[i].freeze = true
    end
    gg.addListItems(results)
    gg.clearResults()
end

local reactorNames = {
    "Steampunk", "Girl Power", "Superheroes", "Gothic", "Japan", "Star Wars",
    "Villains", "Big Boss", "Movies", "Gods of the Arena", "Elements",
    "Time Soldiers", "Music", "Lucha Libre", "Dark Fantasy", "Western", "Beach",
    "Photosynthesis", "Bloody Games"
}

function ChangeReactorMenu()
    local newMenu = gg.choice(reactorNames, nil, "CAMBIAR REACTOR\n\nPaso 1/2: Selecciona el reactor NUEVO (el que quieres obtener).")
    if newMenu == nil then return end
    local originalMenu = gg.choice(reactorNames, nil, "CAMBIAR REACTOR\n\nPaso 2/2: Selecciona el reactor ORIGINAL (el que vas a reemplazar).")
    if originalMenu == nil then return end

    if originalMenu == 1 then originalHex = "h12737465616D70756E6B0000000000000000000000000000010000007E0400002867616368615F7061636B5F737465616D70756E6B000000" originalSpecimens = { "Specimen_BF_02", "Specimen_EC_01", "Specimen_AB_01", "Specimen_C_01", "Specimen_AC_02", "Specimen_AD_01" } end
    if originalMenu == 2 then originalHex = "h086769726C0000000000000000000000000000000000000001000000650400001E67616368615F7061636B5F6769726C0000000000000000" originalSpecimens = { "Specimen_AA_01", "Specimen_CB_01", "Specimen_CD_01", "Specimen_F_01", "Specimen_FB_01", "Specimen_CF_01" } end
    if originalMenu == 3 then originalHex = "h0C6865726F65730000000000000000000000000000000000020000003A0700002267616368615F7061636B5F6865726F6573000000000000" originalSpecimens = { "Specimen_FC_02", "Specimen_AE_01", "Specimen_BB_01", "Specimen_CA_01", "Specimen_FA_01", "Specimen_EF_02" } end
    if originalMenu == 4 then originalHex = "h0C676F746869630000000000000000000000000000000000010000007E0400002267616368615F7061636B5F676F74686963000000000000" originalSpecimens = { "Specimen_CE_01", "Specimen_BF_01", "Specimen_DC_01", "Specimen_E_01", "Specimen_FD_01", "Specimen_DC_03" } end
    if originalMenu == 5 then originalHex = "h0A6A6170616E00000000000000000000000000000000000003000000FC0800002067616368615F7061636B5F6A6170616E00000000000000" originalSpecimens = { "Specimen_CC_01", "Specimen_A_01", "Specimen_DF_01", "Specimen_BA_02", "Specimen_CB_02", "Specimen_FD_03" } end
    if originalMenu == 6 then originalHex = "h10737461727761727300000000000000000000000000000003000000FC0800002667616368615F7061636B5F737461727761727300000000" originalSpecimens = { "Specimen_AF_04", "Specimen_CC_03", "Specimen_CD_01", "Specimen_EC_01", "Specimen_BC_01", "Specimen_BF_04" } end
    if originalMenu == 7 then originalHex = "h1076696C6C61696E7300000000000000000000000000000003000000FC0800002667616368615F7061636B5F76696C6C61696E7300000000" originalSpecimens = { "Specimen_DA_01", "Specimen_B_01", "Specimen_AB_02", "Specimen_EC_03", "Specimen_BA_03", "Specimen_CE_05" } end
    if originalMenu == 8 then originalHex = "h126761636861626F7373000000000000000000000000000003000000FC0800002867616368615F7061636B5F6761636861626F7373000000" originalSpecimens = { "Specimen_FF_01", "Specimen_D_01", "Specimen_FB_03", "Specimen_DB_01", "Specimen_EA_01", "Specimen_AB_05" } end
    if originalMenu == 9 then originalHex = "h0C6D6F76696573000000000000000000000000000000000003000000FC0800002267616368615F7061636B5F6D6F76696573000000000000" originalSpecimens = { "Specimen_ED_03", "Specimen_EB_04", "Specimen_CB_03", "Specimen_BD_03", "Specimen_CC_02", "Specimen_FA_06" } end
    if originalMenu == 10 then originalHex = "h126F6C796D7069616E73000000000000000000000000000003000000FC0800002867616368615F7061636B5F6F6C796D7069616E73000000" originalSpecimens = { "Specimen_CC_04", "Specimen_AC_01", "Specimen_BC_02", "Specimen_BB_03", "Specimen_CE_03", "Specimen_EC_06" } end
    if originalMenu == 11 then originalHex = "h10656C656D656E747300000000000000000000000000000003000000FC0800002667616368615F7061636B5F656C656D656E747300000000" originalSpecimens = { "Specimen_EF_01", "Specimen_EB_02", "Specimen_BD_04", "Specimen_EB_05", "Specimen_DF_04", "Specimen_EB_06" } end
    if originalMenu == 12 then originalHex = "h10736F6C646965727300000000000000000000000000000003000000FC0800002667616368615F7061636B5F736F6C646965727300000000" originalSpecimens = { "Specimen_AB_04", "Specimen_CF_02", "Specimen_BC_04", "Specimen_AD_05", "Specimen_CD_06", "Specimen_BD_07" } end
    if originalMenu == 13 then originalHex = "h0A6D7573696300000000000000000000000000000000000004000000C40900002067616368615F7061636B5F6D7573696300000000000000" originalSpecimens = { "Specimen_AA_03", "Specimen_BF_06", "Specimen_EE_04", "Specimen_FB_05", "Specimen_DE_05", "Specimen_DA_09" } end
    if originalMenu == 14 then originalHex = "h0A6C7563686100000000000000000000000000000000000004000000C40900002067616368615F7061636B5F6C7563686100000000000000" originalSpecimens = { "Specimen_CF_03", "Specimen_DE_04", "Specimen_DC_05", "Specimen_FE_04", "Specimen_BE_05", "Specimen_AC_07" } end
    if originalMenu == 15 then originalHex = "h0E66616E746173790000000000000000000000000000000004000000C40900002467616368615F7061636B5F66616E746173790000000000" originalSpecimens = { "Specimen_FC_04", "Specimen_FC_05", "Specimen_DB_06", "Specimen_AC_03", "Specimen_BD_05", "Specimen_FC_09" } end
    if originalMenu == 16 then originalHex = "h0E7765737465726E0000000000000000000000000000000004000000C40900002467616368615F7061636B5F7765737465726E0000000000" originalSpecimens = { "Specimen_FF_06", "Specimen_FC_07", "Specimen_AA_06", "Specimen_DB_04", "Specimen_CF_06", "Specimen_BF_10" } end
    if originalMenu == 17 then originalHex = "h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000" originalSpecimens = { "Specimen_FE_08", "Specimen_EE_07", "Specimen_BB_08", "Specimen_AB_07", "Specimen_AF_08", "Specimen_CA_11" } end
    if originalMenu == 18 then originalHex = "h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000" originalSpecimens = { "Specimen_BB_02", "Specimen_DC_08", "Specimen_AF_01", "Specimen_DE_09", "Specimen_CA_06", "Specimen_DF_12" } end
    if originalMenu == 19 then originalHex = "h106F6C796D7069637300000000000000000000000000000005000000C40900002667616368615F7061636B5F6F6C796D7069637300000000" originalSpecimens = { "Specimen_FA_08", "Specimen_CA_02", "Specimen_FD_06", "Specimen_CA_07", "Specimen_CA_08", "Specimen_CA_14" } end

    if newMenu == 1 then newHex = "h12737465616D70756E6B0000000000000000000000000000010000007E0400002867616368615F7061636B5F737465616D70756E6B000000" newSpecimens = { "Specimen_BF_02", "Specimen_EC_01", "Specimen_AB_01", "Specimen_AB_01", "Specimen_AC_02", "Specimen_AD_01" } end
    if newMenu == 2 then newHex = "h086769726C0000000000000000000000000000000000000001000000650400001E67616368615F7061636B5F6769726C0000000000000000" newSpecimens = { "Specimen_AA_01", "Specimen_CB_01", "Specimen_CD_01", "Specimen_CD_01", "Specimen_FB_01", "Specimen_CF_01" } end
    if newMenu == 3 then newHex = "h0C6865726F65730000000000000000000000000000000000020000003A0700002267616368615F7061636B5F6865726F6573000000000000" newSpecimens = { "Specimen_FC_02", "Specimen_AE_01", "Specimen_BB_01", "Specimen_CA_01", "Specimen_FA_01", "Specimen_EF_02" } end
    if newMenu == 4 then newHex = "h0C676F746869630000000000000000000000000000000000010000007E0400002267616368615F7061636B5F676F74686963000000000000" newSpecimens = { "Specimen_CE_01", "Specimen_BF_01", "Specimen_DC_01", "Specimen_DC_01", "Specimen_FD_01", "Specimen_DC_03" } end
    if newMenu == 5 then newHex = "h0A6A6170616E00000000000000000000000000000000000003000000FC0800002067616368615F7061636B5F6A6170616E00000000000000" newSpecimens = { "Specimen_CC_01", "Specimen_CC_02", "Specimen_DF_01", "Specimen_BA_02", "Specimen_CB_02", "Specimen_FD_03" } end
    if newMenu == 6 then newHex = "h10737461727761727300000000000000000000000000000003000000FC0800002667616368615F7061636B5F737461727761727300000000" newSpecimens = { "Specimen_AF_04", "Specimen_CC_03", "Specimen_CD_01", "Specimen_EC_01", "Specimen_BC_01", "Specimen_BF_04" } end
    if newMenu == 7 then newHex = "h1076696C6C61696E7300000000000000000000000000000003000000FC0800002667616368615F7061636B5F76696C6C61696E7300000000" newSpecimens = { "Specimen_DA_01", "Specimen_DA_01", "Specimen_AB_02", "Specimen_EC_03", "Specimen_BA_03", "Specimen_CE_05" } end
    if newMenu == 8 then newHex = "h126761636861626F7373000000000000000000000000000003000000FC0800002867616368615F7061636B5F6761636861626F7373000000" newSpecimens = { "Specimen_FF_01", "Specimen_FF_01", "Specimen_FB_03", "Specimen_DB_01", "Specimen_EA_01", "Specimen_AB_05" } end
    if newMenu == 9 then newHex = "h0C6D6F76696573000000000000000000000000000000000003000000FC0800002267616368615F7061636B5F6D6F76696573000000000000" newSpecimens = { "Specimen_ED_03", "Specimen_EB_04", "Specimen_CB_03", "Specimen_BD_03", "Specimen_CC_02", "Specimen_FA_06" } end
    if newMenu == 10 then newHex = "h126F6C796D7069616E73000000000000000000000000000003000000FC0800002867616368615F7061636B5F6F6C796D7069616E73000000" newSpecimens = { "Specimen_CC_04", "Specimen_AC_01", "Specimen_BC_02", "Specimen_BB_03", "Specimen_CE_03", "Specimen_EC_06" } end
    if newMenu == 11 then newHex = "h10656C656D656E747300000000000000000000000000000003000000FC0800002667616368615F7061636B5F656C656D656E747300000000" newSpecimens = { "Specimen_EF_01", "Specimen_EB_02", "Specimen_BD_04", "Specimen_EB_05", "Specimen_DF_04", "Specimen_EB_06" } end
    if newMenu == 12 then newHex = "h10736F6C646965727300000000000000000000000000000003000000FC0800002667616368615F7061636B5F736F6C646965727300000000" newSpecimens = { "Specimen_AB_04", "Specimen_CF_02", "Specimen_BC_04", "Specimen_AD_05", "Specimen_CD_06", "Specimen_BD_07" } end
    if newMenu == 13 then newHex = "h0A6D7573696300000000000000000000000000000000000004000000C40900002067616368615F7061636B5F6D7573696300000000000000" newSpecimens = { "Specimen_AA_03", "Specimen_BF_06", "Specimen_EE_04", "Specimen_FB_05", "Specimen_DE_05", "Specimen_DA_09" } end
    if newMenu == 14 then newHex = "h0A6C7563686100000000000000000000000000000000000004000000C40900002067616368615F7061636B5F6C7563686100000000000000" newSpecimens = { "Specimen_CF_03", "Specimen_DE_04", "Specimen_DC_05", "Specimen_FE_04", "Specimen_BE_05", "Specimen_AC_07" } end
    if newMenu == 15 then newHex = "h0E66616E746173790000000000000000000000000000000004000000C40900002467616368615F7061636B5F66616E746173790000000000" newSpecimens = { "Specimen_FC_04", "Specimen_FC_05", "Specimen_DB_06", "Specimen_AC_03", "Specimen_BD_05", "Specimen_FC_09" } end
    if newMenu == 16 then newHex = "h0E7765737465726E0000000000000000000000000000000004000000C40900002467616368615F7061636B5F7765737465726E0000000000" newSpecimens = { "Specimen_FF_06", "Specimen_FC_07", "Specimen_AA_06", "Specimen_DB_04", "Specimen_CF_06", "Specimen_BF_10" } end
    if newMenu == 17 then newHex = "h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000" newSpecimens = { "Specimen_FE_08", "Specimen_EE_07", "Specimen_BB_08", "Specimen_AB_07", "Specimen_AF_08", "Specimen_CA_11" } end
    if newMenu == 18 then newHex = "h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000" newSpecimens = { "Specimen_BB_02", "Specimen_DC_08", "Specimen_AF_01", "Specimen_DE_09", "Specimen_CA_06", "Specimen_DF_12" } end
    if newMenu == 19 then newHex = "h106F6C796D7069637300000000000000000000000000000005000000C40900002667616368615F7061636B5F6F6C796D7069637300000000" newSpecimens = { "Specimen_FA_08", "Specimen_CA_02", "Specimen_FD_06", "Specimen_CA_07", "Specimen_CA_08", "Specimen_CA_14" } end

    reactorReady = true
    gg.toast("Listo: ahora ve a 'Hackear el Reactor' para aplicar el cambio.")
end

function OthersMenu()
    local othersMenu = gg.choice({
        "[LAB] Laboratorio médico",
        "[GOLD] Horno de oro",
        "[FAST] Velocidad x5",
        "[ORB] Orbe XP nivel 4",
        "[JACKPOT] Caja fichas Jackpot",
        "[XP] Caja frascos XP",
        "[ATK] Orbe ataque nivel 7",
        "[MUT] Mutantes",
        "[ORB] Orbes básicos nivel 6",
        "[ORB] Orbes ATK / VD / CRIT",
        "[MUT] Buranka y Britany",
        "[READY] Preparar y pelear",
        "[ALL] Todos los Mutantes"
                   
    }, nil,
    "OTROS")

    if othersMenu == 1 then Medlab()
    elseif othersMenu == 2 then GoldFurnace()
    elseif othersMenu == 3 then Speed5()
    elseif othersMenu == 4 then xpOrb()
    elseif othersMenu == 5 then JackpotBox()
    elseif othersMenu == 6 then XPJarBox()
    elseif othersMenu == 7 then Attack7()
    elseif othersMenu == 8 then AllMutants()
    elseif othersMenu == 9 then BasicOrbs()
    elseif othersMenu == 10 then Bundle6Orbs()
    elseif othersMenu == 11 then Buranka_Britany()
    elseif othersMenu == 12 then ReadyFight()
    elseif othersMenu == 13 then Mutants() 
    end
end
-- ==========================================
-- CAJAS MGG (bloques reparados — integrado en menú principal)
-- Sin Bloque 1 Aniversarios. "SALIR" solo cierra el submenú (no os.exit).
-- ==========================================
function EjecutarCajas(modo)
    gg.setVisible(false)
    gg.clearResults()

    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    local r = gg.getResults(100)
    if #r > 0 then
        gg.editAll("0", gg.TYPE_BYTE)
    end
    gg.clearResults()

    local function aplicar(codigo, tipo, offset)
        gg.clearResults()
        gg.searchNumber(codigo, tipo, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100)
        if #start > 0 then
            local toEdit = {}
            for i = 1, #start do
                table.insert(toEdit, { address = start[i].address + offset, flags = gg.TYPE_DWORD, value = 1 })
            end
            gg.setValues(toEdit)
        end
        gg.clearResults()
    end

    if modo == "TODO" or modo == "G1" then
        aplicar("1,986,289,960;1,601,465,957;1,701,601,635;1,918,985,326", gg.TYPE_DWORD, 0xffffffffffffffbc)
        aplicar("1,836,605,296;1,650,422,625;1,650,423,919;6,649,196", gg.TYPE_DWORD, 0xffffffffffffffbc)
        aplicar("1,836,605,296;1,650,422,625;1,734,309,999;1,852,138,866", gg.TYPE_DWORD, 0xffffffffffffffbc)
        aplicar("1,836,605,296;1,650,422,625;1,918,859,375;25,701", gg.TYPE_DWORD, 0xffffffffffffffbc)
    end

    if modo == "TODO" or modo == "G2" then
        aplicar("1,852,727,596;1,919,252,073;2,037,539,187;2,020,565,599", gg.TYPE_DWORD, 0xffffffffffffffc0)
        aplicar("1,839,605,296;1,650,422,625;1,650,423,919;6,649,196", gg.TYPE_DWORD, 0xffffffffffffffbc)
        aplicar("1,839,605,296;1,650,422,625;1,734,309,999;1,852,138,866", gg.TYPE_DWORD, 0xffffffffffffffbc)
        aplicar("1,839,605,296;1,650,422,625;1,918,859,375;25,701", gg.TYPE_DWORD, 0xffffffffffffffbc)
    end

    gg.processResume()
    gg.timeJump("5:0")
    gg.toast("[OK] Cajas inyectadas con éxito")
end

function MenuCajas()
    local sel = gg.choice({
        "[*] ACTIVAR TODAS LAS CAJAS",
        "[BOX] GRUPO 1: Cajas de Navidad",
        "[BOX] GRUPO 2: Cajas Especiales/Elite",
        "[X] SALIR"
    }, nil, "[BOX] GESTOR DE CAJAS MGG")

    if sel == 1 then
        EjecutarCajas("TODO")
    elseif sel == 2 then
        EjecutarCajas("G1")
    elseif sel == 3 then
        EjecutarCajas("G2")
    end
end


-- ============================================================================
-- MODULOS HEREDADOS DE WARLERY'S BLACKMARKET V1.5
-- ============================================================================

function Medlabsandfurnace() 
    gg.toast("Iniciando, Esto puede tardar un poco...")
    gg.setVisible(false)
    gg.clearResults()
    
    gg.searchNumber("1;10,000;0;0;0;0;0;0;2;5::165", gg.TYPE_DWORD)
    local r = gg.getResults(100000)
    gg.editAll("6;1;1,769,292,326;1,852,400,748;1,867,013,991;1,953,067,123;828,337,249;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;125", gg.TYPE_DWORD)
    gg.refineNumber("6", gg.TYPE_DWORD)
    r = gg.getResults(100000)
    gg.addListItems(r)
    gg.clearResults()
    
    gg.sleep(500)
    gg.searchNumber("h1873635F7061636B6167655F3100000000000000000000000", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h 26 42 75 69 6c 64 69 6e 67 5f 48 6f 73 70 69 74 61 6c 5f 32", gg.TYPE_BYTE)
    gg.clearResults()


    gg.searchNumber("1;44,000;0;0;0;0;0;0;2;20::165", gg.TYPE_DWORD)
    r = gg.getResults(100000)
    gg.editAll("6;1;1,769,292,314;1,852,400,748;1,128,816,487;12,895;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;0;2;3000", gg.TYPE_DWORD)
    gg.refineNumber("6", gg.TYPE_DWORD)
    r = gg.getResults(100000)
    gg.addListItems(r)
    gg.clearResults()
    
    gg.sleep(500)
    gg.searchNumber("h1873635F7061636B6167655F3200000000000000000000000", gg.TYPE_BYTE)
    r = gg.getResults(100000)
    gg.editAll("h 1a 42 75 69 6c 64 69 6e 67 5f 48 43 5f 32", gg.TYPE_BYTE)
    gg.clearResults()
    
    gg.toast("Opcion Activada!, revisa la seccion de banco.")
end

function fichasytarros()
    local cajitas = gg.choice({
        '[>] Fichas Jackpot',
        '[>] Tarros XP',
        '[>] Fichas Reactor',
        '[>] Fichas Reto',
        '[>] Mutosterona',
        '[>] Estrellas',
        '[>] Creditos',
        '[>] Zona Deluxe',
        '[>] Volver',
    }, nil, '[CFG] Configuracion de cajas 2.')

    if cajitas == 1 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()

        gg.searchNumber("h28416E6E697665727361727932335F426F785F3235000000106D6174657269616C000000", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()

        local t = gg.getResults(1)
        if #t == 0 then
            gg.alert("Nothing found.")
            return
        end

        for i, v in ipairs(t) do
            v.address = v.address - 0x8
            v.flags = gg.TYPE_DWORD
            v.value = 1
            v.freeze = true
            v.freezeType = gg.FREEZE_NORMAL
        end

        gg.setValues(t)      
        gg.addListItems(t)     
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("Opcion cargada con exito, checa la seccion de Especial")

    elseif cajitas == 2 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()

        gg.searchNumber("h2C416E6E69766572736172795F323031395F426F785F3900106D6174657269616C000000", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

        start = gg.getResults(1)
        valuesToEdit = {}
        for i = 1, #start do
            local target = start[i].address + 0xfffffffffffff578        table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end

        gg.setValues(valuesToEdit)         
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("Opcion cargada con exito, checa la seccion de Especial")

    elseif cajitas == 3 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()

        gg.searchNumber("h1E416476656E7432345F426F785F30360000000000000000106D6174", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()

        local t = gg.getResults(1)
        if #t == 0 then
            gg.alert("Nothing found.")
            return
        end

        for i, v in ipairs(t) do
            v.address = v.address - 0x8
            v.flags = gg.TYPE_DWORD
            v.value = 1
            v.freeze = true
            v.freezeType = gg.FREEZE_NORMAL
        end

        gg.setValues(t)        
        gg.addListItems(t)     
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("Opcion cargada con exito, checa la seccion de Especial")

    elseif cajitas == 4 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()

        gg.searchNumber("h28 41 6E 6E 69 76 65 72 73 61 72 79 32 34 5F 42 6F 78 5F 30 39 00 00 00 10 6D 61 74 65 72 69 61 6C", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()

        local t = gg.getResults(1)
        if #t == 0 then
            gg.alert("Nothing found.")
            return
        end

        for i, v in ipairs(t) do
            v.address = v.address - 0x8
            v.flags = gg.TYPE_DWORD
            v.value = 1
            v.freeze = true
            v.freezeType = gg.FREEZE_NORMAL
        end

        gg.setValues(t)        
        gg.addListItems(t)     
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("Opcion cargada con exito, checa la seccion de Especial")

    elseif cajitas == 5 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()

        gg.searchNumber("h24 61 64 76 65 6E 74 5F 63 61 6C 65 6E 64 61 72 5F 31 34 00 00 00 00 00 31", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()

        local t = gg.getResults(1)
        if #t == 0 then
            gg.alert("Nothing found.")
            return
        end

        for i, v in ipairs(t) do
            v.address = v.address - 0x38
            v.flags = gg.TYPE_DWORD
            v.value = 1
            v.freeze = true
            v.freezeType = gg.FREEZE_NORMAL
        end

        gg.setValues(t)        
        gg.addListItems(t)     
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("Opcion cargada con exito, checa la seccion de Especial")

    elseif cajitas == 6 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()

        local patterns = {
            {hex = "h28 41 6E 6E 69 76 65 72 73 61 72 79 32 34 5F 42 6F 78 5F 32 36 00 00 00 10 6D 61 74 65 72 69 61 6C", offset = 0x8},
            {hex = "h28 41 6E 6E 69 76 65 72 73 61 72 79 32 34 5F 42 6F 78 5F 32 30 00 00 00 10 6D 61 74 65 72 69 61 6C", offset = 0x8},
            {hex = "h28 41 6E 6E 69 76 65 72 73 61 72 79 32 34 5F 42 6F 78 5F 31 36 00 00 00 10 6D 61 74 65 72 69 61 6C", offset = 0x8},
            {hex = "h28 41 6E 6E 69 76 65 72 73 61 72 79 32 34 5F 42 6F 78 5F 30 38 00 00 00 10 6D 61 74 65 72 69 61 6C", offset = 0x8},
        }

        local allResults = {}

        for _, p in ipairs(patterns) do
            gg.clearResults()
            gg.searchNumber(p.hex, gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
            local t = gg.getResults(1)
            if #t > 0 then
                for i, v in ipairs(t) do
                    v.address = v.address - p.offset
                    v.flags = gg.TYPE_DWORD
                    v.value = "1"
                    v.freeze = true
                    v.freezeType = gg.FREEZE_NORMAL
                    table.insert(allResults, v)
                end
            end
        end

        if #allResults == 0 then
            gg.alert("Nothing found.")
            return
        end

        gg.setValues(allResults)
        gg.addListItems(allResults)
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("opcion cargada con exito, checa la seccion de Especial.")

    elseif cajitas == 7 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()

        gg.searchNumber("h58 6D 61 73 32 31 5F 42 6F 78 5F 37 00 00 00 00 00 00 00 00 00 00 00 10 6D 61 74 65 72 69 61 6C", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()

        local t = gg.getResults(1)
        if #t == 0 then
            gg.alert("Nothing found.")
            return
        end

        for i, v in ipairs(t) do
            v.address = v.address - 0x9
            v.flags = gg.TYPE_DWORD
            v.value = 1
            v.freeze = true
            v.freezeType = gg.FREEZE_NORMAL
        end

        gg.setValues(t)
        gg.addListItems(t)
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("opcion cargada con exito, checa la seccion de Especial.")


    elseif cajitas == 8 then
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()

        gg.searchNumber("h2C 41 6E 6E 69 76 65 72 73 61 72 79 5F 32 30 32 31 5F 42 6F 78 5F 37 00 10 6D 61 74 65 72 69 61 6C", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()

        local t = gg.getResults(1)
        if #t == 0 then
            gg.alert("Nothing found.")
            return
        end

        for i, v in ipairs(t) do
            v.address = v.address - 0x8
            v.flags = gg.TYPE_DWORD
            v.value = "1"
            v.freeze = true
            v.freezeType = gg.FREEZE_NORMAL
        end

        gg.setValues(t) 
        gg.addListItems(t)
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("opcion cargada con exito, checa la seccion de Especial.")
        
    elseif cajitas == 9 then
        fichasytarros()
    end
end

function Cajasaniversario()
    local submenu = gg.choice({
        '[>] Cajas de aniversario y Navidad',
        '[>] Paquete de orbes Basicos LV6',
        '[>] Paquete Rapidez Lv5',
        '[>] Paquete de escudo especial Lv5',
        '[>] Paquete de Orbes de poder Lv6',
        '[>] Paquetes de EXP y Creditos',
        '[>] Paquete de Orbes de EXP Lv4',
        '[>] Cajas Misteriosas',
        '[>] Ofertas y Paquetes',
        '[>] Paquete Fortalecimiento Lv5',
        '[>] Regresar'
    }, nil, '[CFG] Configuracion de Cajas.')
    
    if submenu == 1 then
        gg.toast("Congelando y Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
        gg.processPause()
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(2000)

        gg.clearResults()
        gg.searchNumber("1986289960;1601465957;1701601635;1918985326", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)
        gg.clearResults()

        gg.clearResults()
        gg.searchNumber("1836605296;1650422625;1650423919;6649196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)

        gg.clearResults()
        gg.searchNumber("1836605296;1650422625;1734309999;1852138866", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)

        gg.clearResults()
        gg.searchNumber("1836605296;1650422625;1918859375;25701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)
        gg.clearResults()

        gg.clearResults()
        gg.searchNumber("1852727596;1919252073;2037539187;2020565599", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffc0
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)
        gg.clearResults()

        gg.clearResults()
        gg.searchNumber("1839605296;1650422625;1650423919;6649196", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)

        gg.clearResults()
        gg.searchNumber("1839605296;1650422625;1734309999;1852138866", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)

        gg.clearResults()
        gg.searchNumber("1839605296;1650422625;1918859375;25701", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        local start = gg.getResults(100000)
        local valuesToEdit = {} 

        for i = 1, #start do
            local target = start[i].address + 0xffffffffffffffbc
            table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1})
        end
        gg.setValues(valuesToEdit)
        gg.clearResults()

        gg.processResume()
        gg.sleep("1000")
        gg.timeJump("5:0")
        gg.toast("Todas las cajas han sido Cargadas.")
    
    elseif submenu == 2 then
        gg.toast("Congelando y Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
        gg.processPause()
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        if gg.getResultsCount() > 0 then
            gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
        end
        gg.sleep(1000)

        gg.clearResults()
        gg.searchNumber(":&bundle_orbs_core_06", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)


        local t = gg.getResults(1) 
  
        for i, v in ipairs(t) do
            v.address = v.address + 0xffffffffffffffc8
            v.flags = gg.TYPE_BYTE 
            v.value = "1"         
            v.freeze = true        
        end

        gg.setValues(t)
        gg.addListItems(t)

        gg.clearResults()
        gg.processResume()
        gg.sleep("1000")
        gg.timeJump("5:0")
        gg.toast("Paquete de Orbes basicos Lv6, cargado completamente.")
    
    elseif submenu == 3 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(2000)

        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2A 62 75 6E 64 6C 65 5F 6F 72 62 73 5F 73 70 65 65 64 5F 33 5F 33 00 00", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2A 62 75 6E 64 6C 65 5F 6F 72 62 73 5F 73 70 65 65 64 5F 35 5F 31 00 00", gg.TYPE_BYTE)
        gg.clearResults()
        gg.searchNumber(":speed_03", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll(":speed_05", gg.TYPE_BYTE)
        gg.clearResults()
        gg.searchNumber("400", gg.TYPE_DWORD)
        r = gg.getResults(100000)
        gg.editAll("1500", gg.TYPE_DWORD)

        gg.clearResults()
        gg.timeJump("5:0")
        gg.toast("Paquete Rapidez LV5 Cargado.")
        gg.sleep(1000)
        gg.toast("Los orbes de velocidad a Lv3 es solo un error visual!.")

    elseif submenu == 4 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        if gg.getResultsCount() > 0 then
            gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
        end
        gg.sleep(1000)

        gg.clearResults()
        gg.searchNumber(":&Specimen_AA_05_Gold", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)


        local t = gg.getResults(1) 
  
        for i, v in ipairs(t) do
            v.address = v.address + 0xfffffffffffffe38
            v.flags = gg.TYPE_BYTE 
            v.value = "1"         
            v.freeze = true        
        end

        gg.setValues(t)
        gg.addListItems(t)

        gg.clearResults()
        gg.timeJump("5:0")
        gg.toast("Paquete de escudo especial Lv5 cargado completamente.")

    elseif submenu == 5 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        if gg.getResultsCount() > 0 then
            gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
        end
        gg.sleep(1000)

        gg.clearResults()
        gg.searchNumber(":(bundle_orbs_basic_06", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)


        local t = gg.getResults(1) 
  
        for i, v in ipairs(t) do
            v.address = v.address + 0xffffffffffffffc8
            v.flags = gg.TYPE_BYTE 
            v.value = "1"         
            v.freeze = true        
        end

        gg.setValues(t)
        gg.addListItems(t)

        gg.clearResults()
        gg.timeJump("5:0")
        gg.toast("Paquete de Orbes de poder Lv6, cargado completamente.")



    elseif submenu == 6 then
        gg.toast("Congelando y Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
        gg.processPause()
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(2000)

        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 70 61 63 6b", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2c 70 61 63 6b", gg.TYPE_BYTE)
        gg.clearResults()

        gg.clearResults()
        gg.processResume()
        gg.sleep(1000)
        gg.timeJump("5:0")
        gg.toast("Paquete de EXP y Creditos Cargado.")

    elseif submenu == 7 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        if gg.getResultsCount() > 0 then
            gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
        end
        gg.sleep(1000)

        gg.clearResults()
        gg.searchNumber(":*bundle_orbs_slash_4_2", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)

        local t = gg.getResults(1)
    
        for i, v in ipairs(t) do
            v.address = v.address + 0x378 
            v.flags = gg.TYPE_BYTE 
            v.value = "1"          
            v.freeze = true        
            v.name = "Orbes Exp lv4 enabled" 
        end

        gg.setValues(t)   
        gg.addListItems(t) 

        gg.clearResults()
        gg.timeJump("5:0")
        gg.toast("Paquete de Orbes de XP Lv4, cargado completamente.")

    elseif submenu == 8 then
        gg.toast("Congelando y Iniciando, Esto puede tardar un poco...")
        gg.setVisible(false)
        gg.processPause()

        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
        gg.clearResults()
        gg.sleep(2000)
    
        local mysteryPatterns = {
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 6D 79 73 74 65 72 79",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 6D 79 73 74 65 72 79",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 6D 79 73 74 65 72 79", 
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6D 79 73 74 65 72 79",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 6D 79 73 74 65 72 79",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 4D 79 73 74 65 72 79",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 4D 79 73 74 65 72 79",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 4D 79 73 74 65 72 79", 
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4D 79 73 74 65 72 79",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 4D 79 73 74 65 72 79",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 6C 75 63 6B 79 62 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 6C 75 63 6B 79 62 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 6C 75 63 6B 79 62 6F 78", 
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 6C 75 63 6B 79 62 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 6C 75 63 6B 79 62 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 4C 75 63 6B 79 62 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 4C 75 63 6B 79 62 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 4C 75 63 6B 79 62 6F 78", 
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4C 75 63 6B 79 62 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 4C 75 63 6B 79 62 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 4C 75 63 6B 79 42 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 4C 75 63 6B 79 42 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 4C 75 63 6B 79 42 6F 78", 
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 4C 75 63 6B 79 42 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 4C 75 63 6B 79 42 6F 78",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 73 68 6F 70",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 73 68 6F 70",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 73 68 6F 70", 
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 73 68 6F 70",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 73 68 6F 70",
        }
    
        for i, pattern in ipairs(mysteryPatterns) do
            gg.clearResults()
            gg.searchNumber(pattern, gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                local replacement = pattern:gsub("00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", "01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00")
                local r = gg.getResults(100000)
                gg.editAll(replacement, gg.TYPE_BYTE)
            end
        end
    
        gg.processResume()
        gg.sleep(500)
        gg.toast("Cajas misteriosas activadas!, si no estan cargadas, adelanta 5 mins!")

    elseif submenu == 9 then
        gg.toast("Iniciando, Esto puede tardar un poco...")
        gg.setVisible(false)
        gg.processPause()

        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(2000)
    
        local offerPatterns = {
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 70 61 63 6B",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 70 61 63 6B",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 70 61 63 6B", 
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 70 61 63 6B",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 50 61 63 6B",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 50 61 63 6B",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 50 61 63 6B", 
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 50 61 63 6B",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 24 73 75 70 65 72 70 61 63 6b",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 73 75 70 65 72 70 61 63 6b",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 73 75 70 65 72 70 61 63 6b",
            "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2c 73 75 70 65 72 70 61 63 6b"
        }
    
        for i, boxpat in ipairs(offerPatterns) do
            gg.clearResults()
            gg.searchNumber(boxpat, gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                local replacement = boxpat:gsub("00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00", "01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00")
                local r = gg.getResults(100000)
                gg.editAll(replacement, gg.TYPE_BYTE)
            end
        end
    
        gg.processResume()
        gg.sleep(500)
        gg.toast("Ofertas y paquetes!, si no estan cargadas, adelanta 5 mins!")


    elseif submenu == 10 then
        gg.toast("Iniciando, Esto puede tardar un poco...")
        gg.setVisible(false)
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("0",gg.TYPE_BYTE)
        gg.clearResults()
        gg.setVisible(false)
        gg.clearResults()

        gg.searchNumber("h22 6F 72 62 5F 62 75 6E 64 6C 65 5F 67 72 6F 77 74 68 00 00 00 00 00 00 31 00 00 00 00 00 00 00 2A", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.processResume()

        local t = gg.getResults(1)
        if #t == 0 then
            gg.alert("Nothing found.")
            return
        end

        for i, v in ipairs(t) do
            v.address = v.address - 0x38
            v.flags = gg.TYPE_BYTE
            v.value = "1"
            v.freeze = true
            v.freezeType = gg.FREEZE_NORMAL
        end

        gg.setValues(t)
        gg.addListItems(t)
        gg.clearResults()
        gg.processResume()
        gg.timeJump("5:0")
        gg.toast("Opcion Agregada con exito, revisa la seccion Especial")

    elseif submenu == 11 then
        return
    end
end


function Mutantesymas()
    local submenu = gg.choice({
        '[>] Todos los Paquetes',
        '[>] Todos los mutantes',
        '[>] Paquete Platino',
        '[>] Mutantes a Creditos Seccion 1',
        '[>] Mutantes Meta y Comunes a ORO Seccion 1',
        '[>] Paquete Monogen Platino',
        '[>] Volver',
    }, nil, '[CFG] Configuracion de Mutantes.')

    if submenu == 1 then
        gg.toast("Congelando y Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
        gg.processPause()
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        if gg.getResultsCount() > 0 then
            local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        end

        gg.clearResults()
        gg.sleep(1000)

        local prefix_bloqueado = "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 "
        local prefix_activo    = "h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 "
        local wordList = {
            "62 75 6e 64 6c 65",
            "42 75 6e 64 6c 65",
            "70 61 63 6b",
            "50 61 63 6b"
        }
        local bundleIDs = {"26", "2a", "2c", "00", "22", "24", "28", "5f"}

        for i, word in ipairs(wordList) do
            for i, id in ipairs(bundleIDs) do
                local searchPattern = prefix_bloqueado .. id .. word
        
                local replacePattern = prefix_activo .. id .. word
                gg.clearResults()
                gg.searchNumber(searchPattern, gg.TYPE_BYTE)
        
            if gg.getResultsCount() > 0 then
                gg.getResults(100000) 
                gg.editAll(replacePattern, gg.TYPE_BYTE)
                gg.toast("Los Paquetes se esta activando")
            end
        end
        end
                
        gg.clearResults()
        gg.processResume()
        --gg.timeJump("5:0")
        gg.toast("Todos los Paquetes activados.")

    elseif submenu == 2 then
        gg.toast("Congelando y Cargando, Esto tomara unos segundos.")
        local patterns = {
            "1701868304;1701669219;110;0;0;0;1701868316;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868330;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868326;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868328;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868324;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868322;1701669219:29",
            "1701868304;1701669219;110;0;0;0;1701868332;1701669219:29"
        }

        local valuesToEdit = {}

        for _, pattern in ipairs(patterns) do
            gg.clearResults()
            gg.searchNumber(pattern, gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
            local results = gg.getResults(100000)

            for i = 1, #results, 8 do
                local firstDwordAddress = results[i].address
                local target = firstDwordAddress - 0x20

                local currentValue = gg.getValues({{address = target, flags = gg.TYPE_DWORD}})

                if currentValue[1].value ~= 1 then
                    table.insert(valuesToEdit, {address = target, flags = gg.TYPE_DWORD, value = 1, freeze = true, freezeType = gg.FREEZE_NORMAL})
                end
            end
        end

        if #valuesToEdit > 0 then
            gg.setVisible(false)
            gg.setValues(valuesToEdit)
        gg.addListItems(valuesToEdit)
            gg.clearResults()
            gg.processResume()
            gg.timeJump("5:0")
            gg.toast("Done!")
        end
        gg.toast("Todos los Mutantes activados, aveces no aparecen todos, reinicia si no te gusta los resultados!.") 


    elseif submenu == 3 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
        gg.processPause()

        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(2000)

        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 62 75 6e 64 6c 65", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 26 62 75 6e 64 6c 65", gg.TYPE_BYTE)

        gg.clearResults()
        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 28 62 75 6e 64 6c 65", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 28 62 75 6e 64 6c 65", gg.TYPE_BYTE)

        gg.clearResults()
        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2a 62 75 6e 64 6c 65", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2a 62 75 6e 64 6c 65", gg.TYPE_BYTE)

        gg.clearResults()
        gg.processResume()
        gg.sleep(1000)
        gg.timeJump("5:0")
        gg.toast("Paquete Platino y mas, cargado completamente.")

    elseif submenu == 4 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
        gg.processPause()

        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(1000)

        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 22 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 22 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
        gg.clearResults()

        gg.clearResults()
        gg.processResume()
        gg.sleep(1000)
        gg.timeJump("5:0")
        gg.toast("Paquete de mutantes a credito Seccion 1 Cargado.")

    elseif submenu == 5 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
        gg.processPause()

        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(2000)

        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 26 53 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
        gg.clearResults()

        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 26 73 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 26 73 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
        gg.clearResults()

        gg.searchNumber("h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 2e 73 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
        r = gg.getResults(100000)
        gg.editAll("h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 2e 73 70 65 63 69 6d 65 6e", gg.TYPE_BYTE)
        gg.clearResults()

        gg.clearResults()
        gg.processResume()
        gg.sleep(1000)
        gg.timeJump("5:0")
        gg.toast("Paquete de mutantes Meta y Comunes a ORO Seccion 1 Cargado.")

    elseif submenu == 6 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
        gg.processPause()

        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        if gg.getResultsCount() > 0 then
            gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
        end
        gg.sleep(1000)

        local prefix_bloqueado = "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 "
        local prefix_activo    = "h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 "
        local monoList = {
            "73 70 65 63 69 6d 65 6e",
            "53 70 65 63 69 6d 65 6e"
        }
        local monogIDs = {"2c", "00"}

        for i, mono in ipairs(monoList) do
            for i, id in ipairs(monogIDs) do
                local searchPattern = prefix_bloqueado .. id .. mono
        
                local replacePattern = prefix_activo .. id .. mono
                gg.clearResults()
                gg.searchNumber(searchPattern, gg.TYPE_BYTE)          
        
            if gg.getResultsCount() > 0 then
                gg.getResults(100000) 
                gg.editAll(replacePattern, gg.TYPE_BYTE)
                gg.toast("Los Paquetes se esta activando")
            end
        end
        end

        gg.clearResults()
        gg.processResume()
        gg.sleep(1000)
        gg.timeJump("5:0")
        gg.toast("Paquete Monogen Platino Cargado.")

    elseif submenu == 7 then
        return
    end
end

function paquetesespeciales()
    local submenu = gg.choice({
        '[>] Orbes Basicos Lv7',
        '[>] Paquetes de Orbes',
        '[>] Mas Cajas misteriosas',
        '[>] Neo Monogenes',
        '[>] Volver',
    }, nil, '[CFG] Configuracion de Paquetes Especiales.')

    if submenu == 1 then
        local suborbs = gg.choice({
            '[>] Ataque Lv7',
            '[>] Vida Lv7',
            '[>] Critico Lv7',
            '[>] XP Lv6',
            '[>] Volver',
        }, nil, '[CFG] Configuracion de Orbes lv7.')

            if suborbs == 1 then
                gg.setVisible(false)
            
                gg.clearResults()
                gg.searchNumber(":Allowed", gg.TYPE_BYTE)
                if gg.getResultsCount() > 0 then
                    gg.getResults(100000)
                    gg.editAll("0", gg.TYPE_BYTE)
                end
                gg.sleep(1000)

                gg.clearResults()
                gg.searchNumber(":orb_basic_attack_05", gg.TYPE_BYTE)
                local r = gg.getResults(100000)
                gg.editAll(":orb_basic_attack_07", gg.TYPE_BYTE)
                gg.searchNumber(":Allowed", gg.TYPE_BYTE)
                r = gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
                gg.clearResults()
                gg.searchNumber("300", gg.TYPE_DWORD)
                r = gg.getResults(100000)
                gg.editAll("10000", gg.TYPE_DWORD)

                gg.clearResults()
                gg.timeJump("5:0")
                gg.toast("Orbes de Lv7, cargados completamente.")

            elseif suborbs == 2 then
                gg.toast("Cargando, Esto tomara unos segundos.")
                gg.setVisible(false)
            
                gg.clearResults()
                gg.searchNumber(":Allowed", gg.TYPE_BYTE)
                if gg.getResultsCount() > 0 then
                    gg.getResults(100000)
                    gg.editAll("0", gg.TYPE_BYTE)
                end
                gg.sleep(1000)

                gg.clearResults()
                gg.searchNumber(":orb_basic_life_05", gg.TYPE_BYTE)
                local r = gg.getResults(100000)
                gg.editAll(":orb_basic_life_07", gg.TYPE_BYTE)
                gg.searchNumber(":Allowed", gg.TYPE_BYTE)
                r = gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
                gg.clearResults()
                gg.searchNumber("300", gg.TYPE_DWORD)
                r = gg.getResults(100000)
                gg.editAll("100000", gg.TYPE_DWORD)

                gg.clearResults()
                gg.timeJump("5:0")
                gg.toast("Orbes de Lv7, cargados completamente.")


            elseif suborbs == 3 then
                gg.toast("Cargando, Esto tomara unos segundos.")
                gg.setVisible(false)
            
                gg.clearResults()
                gg.searchNumber(":Allowed", gg.TYPE_BYTE)
                if gg.getResultsCount() > 0 then
                    gg.getResults(100000)
                    gg.editAll("0", gg.TYPE_BYTE)
                end
                gg.sleep(1000)

                gg.clearResults()
                gg.searchNumber(":orb_basic_critical_04", gg.TYPE_BYTE)
                local r = gg.getResults(100000)
                gg.editAll(":orb_basic_critical_07", gg.TYPE_BYTE)
                gg.searchNumber(":Allowed", gg.TYPE_BYTE)
                r = gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
                gg.clearResults()
                gg.searchNumber("200", gg.TYPE_DWORD)
                r = gg.getResults(100000)
                gg.editAll("100000", gg.TYPE_DWORD)

                gg.clearResults()
                gg.timeJump("5:0")
                gg.toast("Orbes de Lv7, cargados completamente.")


            elseif suborbs == 4 then
                gg.toast("Cargando, Esto tomara unos segundos.")
                gg.setVisible(false)
            
                gg.clearResults()
                gg.searchNumber(":Allowed", gg.TYPE_BYTE)
                if gg.getResultsCount() > 0 then
                    gg.getResults(100000)
                    gg.editAll("0", gg.TYPE_BYTE)
                end
                gg.sleep(1000)

                gg.clearResults()
                gg.searchNumber(":orb_basic_xp_03", gg.TYPE_BYTE)
                local r = gg.getResults(100000)
                gg.editAll(":orb_basic_xp_06", gg.TYPE_BYTE)
                gg.searchNumber(":Allowed", gg.TYPE_BYTE)
                r = gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
                gg.clearResults()
                gg.searchNumber("130", gg.TYPE_DWORD)
                r = gg.getResults(100000)
                gg.editAll("100000", gg.TYPE_DWORD)

                gg.clearResults()
                gg.timeJump("5:0")
                gg.toast("Orbes de Lv7, cargados completamente.")

            elseif suborbs == 5 then
                paquetesespeciales()
            end       
         
    elseif submenu == 2 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
        gg.processPause()
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        if gg.getResultsCount() > 0 then
            local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        end

        gg.clearResults()
        gg.sleep(1000)

        local prefix_bloqueado = "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 "
        local prefix_activo    = "h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 "
        local wordList = {
            --" 70 61 63 6B 61 67 65",
            --" 50 61 63 6B 61 67 65",
            " 62 75 6E 64 6C 65 5F 6F 72 62",
            " 42 75 6E 64 6C 65 5F 6F 72 62",
            " 6F 72 62",
            " 4F 72 62",
        }
        local bundleIDs = {"26", "2a", "2c", "00", "22", "24", "28", "5f"}

        for i, word in ipairs(wordList) do
            for i, id in ipairs(bundleIDs) do
                local searchPattern = prefix_bloqueado .. id .. word
        
                local replacePattern = prefix_activo .. id .. word
                gg.clearResults()
                gg.searchNumber(searchPattern, gg.TYPE_BYTE)
        
            if gg.getResultsCount() > 0 then
                gg.getResults(100000) 
                gg.editAll(replacePattern, gg.TYPE_BYTE)
                gg.toast("Los Paquetes se esta activando")
            end
        end
        end
                
        gg.clearResults()
        gg.processResume()
        gg.sleep(1000)
        gg.timeJump("5:0")
        gg.toast("Paquetes de Orbes activados.")


    elseif submenu == 3 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.setVisible(false)
        gg.processPause()
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(2000)

        local prefix_bloqueado = "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 "
        local prefix_activo    = "h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 "
        local wordList = {
            "70 61 63 6B 61 67 65",
            "50 61 63 6B 61 67 65",
            "6c 75 63 6b 79",
            "4c 75 63 6b 79",
            "72 65 73 65 61 72 63 68 5f 76 69 69 69",
            "52 65 73 65 61 72 63 68 5f 76 69 69 69",
            "73 68 6f 70",
            "53 68 6f 70"
        }
        local bundleIDs = {"26", "2a", "2c", "00", "22", "24", "28", "5f"}

        for i, word in ipairs(wordList) do
            for i, id in ipairs(bundleIDs) do
                local searchPattern = prefix_bloqueado .. id .. word
        
                local replacePattern = prefix_activo .. id .. word
                gg.clearResults()
                gg.searchNumber(searchPattern, gg.TYPE_BYTE)          
        
            if gg.getResultsCount() > 0 then
                gg.getResults(100000) 
                gg.editAll(replacePattern, gg.TYPE_BYTE)
                gg.toast("Los Paquetes se esta activando")
            end
        end
        end
                
        gg.clearResults()
        gg.processResume()
        gg.sleep(1000)
        gg.timeJump("5:0")
        gg.toast("Cajas misteriosas Seccion 2 activadas.")


    elseif submenu == 4 then
        gg.toast("Cargando, Esto tomara unos segundos.")
        gg.alert("[!]==============================[!]\nEsta opcion no suele cargarse completo, si no te gusta los resultados\nprueba recargando esta misma opcion\n\n Mutantes que pueden aparecer aqui:\n-Automata\n-Barbaro\n-Gladiator\n-Drudge zombie\n-Mago\n-Cazarecompensas\n-Hechicera\n-Espectroplasma")
        gg.setVisible(false)
        gg.processPause()
    
        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.clearResults()
        gg.sleep(1000)

        local prefix_bloqueado = "h00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 00 "
        local prefix_activo    = "h01 00 00 00 01 00 00 00 01 00 00 00 01 00 00 00 "
        local wordList = {
            "53 70 65 63 69 6d 65 6e",
            "73 70 65 63 69 6d 65 6e"
        }
        local bundleIDs = {"24", "2e", "00"}

        for i, word in ipairs(wordList) do
            for i, id in ipairs(bundleIDs) do
                local searchPattern = prefix_bloqueado .. id .. word
        
                local replacePattern = prefix_activo .. id .. word
                gg.clearResults()
                gg.searchNumber(searchPattern, gg.TYPE_BYTE)          
        
            if gg.getResultsCount() > 0 then
                gg.getResults(100000) 
                gg.editAll(replacePattern, gg.TYPE_BYTE)
                gg.toast("Los Paquetes se esta activando")
            end
        end
        end
                
        gg.clearResults()
        gg.processResume()
        gg.sleep(1000)
        --gg.timeJump("5:0")
        gg.toast("Neo Monogenes activados.")

    elseif submenu == 5 then
        return
    end
end



function reactorgachas()
    gg.toast("Cargando, Esto tomara unos segundos.")
    gg.sleep("500")
    gg.alert("Atencion:\nel primer reactor que se reemplaze podria desaparecer, si desaparece no hay preocupacion, reemplaza otro reactor mas!.")
    gg.setVisible(false)

    gg.clearResults()
    gg.searchNumber(":Allowed", gg.TYPE_BYTE)
    local r = gg.getResults(100000)
    gg.editAll("0", gg.TYPE_BYTE)
    gg.clearResults()
    gg.sleep(1000)
    local sourceID = nil 
    local database = {
        [1] = {
            name = "The Steampunk",
            packHex = "h12737465616D70756E6B0000000000000000000000000000010000007E0400002867616368615F7061636B5F737465616D70756E6B000000",
            specs = {":Specimen_BF_02", ":Specimen_EC_01", ":Specimen_AB_01", ":Specimen_AB_01", ":Specimen_AC_02", ":Specimen_AD_01"}
        },
        [2] = {
            name = "Girl Power",
            packHex = "h086769726C0000000000000000000000000000000000000001000000650400001E67616368615F7061636B5F6769726C0000000000000000",
            specs = {":Specimen_AA_01", ":Specimen_CB_01", ":Specimen_CD_01", ":Specimen_FB_01", ":Specimen_FB_01", ":Specimen_CF_01"}
        },
        [3] = {
            name = "Mutants Super-Heroes",
            packHex = "h0C6865726F65730000000000000000000000000000000000020000003A0700002267616368615F7061636B5F6865726F6573000000000000",
            specs = {":Specimen_FC_02", ":Specimen_AE_01", ":Specimen_BB_01", ":Specimen_CA_01", ":Specimen_FA_01", ":Specimen_EF_02"}
        },
        [4] = {
            name = "Gothic",
            packHex = "h0C676F746869630000000000000000000000000000000000010000007E0400002267616368615F7061636B5F676F74686963000000000000",
            specs = {":Specimen_CE_01", ":Specimen_BF_01", ":Specimen_DC_01", ":Specimen_FD_01", ":Specimen_AA_02", ":Specimen_DC_03"}
        },
        [5] = {
            name = "Japan",
            packHex = "h0A6A6170616E00000000000000000000000000000000000003000000FC0800002067616368615F7061636B5F6A6170616E00000000000000",
            specs = {":Specimen_CC_01", ":Specimen_CC_01", ":Specimen_DF_01", ":Specimen_BA_02", ":Specimen_CB_02", ":Specimen_FD_03"}
        },
        [6] = {
            name = "Space War",
            packHex = "h10737461727761727300000000000000000000000000000003000000FC0800002667616368615F7061636B5F737461727761727300000000",
            specs = {":Specimen_AF_04", ":Specimen_CC_03", ":Specimen_CD_01", ":Specimen_EC_01", ":Specimen_BC_01", ":Specimen_BF_04"}
        },
        [7] = {
            name = "Mutants-Super-Villains",
            packHex = "h1076696C6C61696E7300000000000000000000000000000003000000FC0800002667616368615F7061636B5F76696C6C61696E7300000000",
            specs = {":Specimen_DA_01", ":Specimen_DA_01", ":Specimen_AB_02", ":Specimen_EC_03", ":Specimen_BA_03", ":Specimen_CE_05"}
        },
        [8] = {
            name = "Big Boss",
            packHex = "h126761636861626F7373000000000000000000000000000003000000FC0800002867616368615F7061636B5F6761636861626F7373000000",
            specs = {":Specimen_FF_01", ":Specimen_FF_01", ":Specimen_FB_03", ":Specimen_DB_01", ":Specimen_EA_01", ":Specimen_AB_05"}
        },
        [9] = {
            name = "Movies",
            packHex = "h0C6D6F76696573000000000000000000000000000000000003000000FC0800002267616368615F7061636B5F6D6F76696573000000000000",
            specs = {":Specimen_ED_03", ":Specimen_EB_04", ":Specimen_CB_03", ":Specimen_BD_03", ":Specimen_CC_02", ":Specimen_FA_06"}
        },
        [10] = {
            name = "God Of The Arena",
            packHex = "h126F6C796D7069616E73000000000000000000000000000003000000FC0800002867616368615F7061636B5F6F6C796D7069616E73000000",
            specs = {":Specimen_CC_04", ":Specimen_AC_01", ":Specimen_BC_02", ":Specimen_BB_03", ":Specimen_CE_03", ":Specimen_EC_06"}
        },
        [11] = {
            name = "Elements Squad",
            packHex = "h10656C656D656E747300000000000000000000000000000003000000FC0800002667616368615F7061636B5F656C656D656E747300000000",
            specs = {":Specimen_EF_01", ":Specimen_EB_02", ":Specimen_BD_04", ":Specimen_EB_05", ":Specimen_DF_04", ":Specimen_EB_06"}
        },
        [12] = {
            name = "Time Soldiers",
            packHex = "h10736F6C646965727300000000000000000000000000000003000000FC0800002667616368615F7061636B5F736F6C646965727300000000",
            specs = {":Specimen_AB_04", ":Specimen_CF_02", ":Specimen_BC_04", ":Specimen_AD_05", ":Specimen_CD_06", ":Specimen_BD_07"}
        },
        [13] = {
            name = "Lucha Libre",
            packHex = "h0A6C7563686100000000000000000000000000000000000004000000C40900002067616368615F7061636B5F6C7563686100000000000000",
            specs = {":Specimen_CF_03", ":Specimen_DE_04", ":Specimen_DC_05", ":Specimen_FE_04", ":Specimen_BE_05", ":Specimen_AC_07"}
        },
        [14] = {
            name = "Dark Fantasy",
            packHex = "h0E66616E746173790000000000000000000000000000000004000000C40900002467616368615F7061636B5F66616E746173790000000000",
            specs = {":Specimen_FC_04", ":Specimen_FC_05", ":Specimen_DB_06", ":Specimen_AC_03", ":Specimen_BD_05", ":Specimen_FC_09"}
        },
        [15] = {
            name = "Music",
            packHex = "h0A6D7573696300000000000000000000000000000000000004000000C40900002067616368615F7061636B5F6D7573696300000000000000",
            specs = {":Specimen_AA_03", ":Specimen_BF_06", ":Specimen_EE_04", ":Specimen_FB_05", ":Specimen_DE_05", ":Specimen_DA_09"}
        },
        [16] = {
            name = "Western",
            packHex = "h0E7765737465726E0000000000000000000000000000000004000000C40900002467616368615F7061636B5F7765737465726E0000000000",
            specs = {":Specimen_FF_06", ":Specimen_FC_07", ":Specimen_AA_06", ":Specimen_DB_04", ":Specimen_CF_06", ":Specimen_BF_10"}
        },
        [17] = {
            name = "Tropical",
            packHex = "h0A626561636800000000000000000000000000000000000004000000C40900002067616368615F7061636B5F626561636800000000000000",
            specs = {":Specimen_FE_08", ":Specimen_EE_07", ":Specimen_BB_08", ":Specimen_AB_07", ":Specimen_AF_08", ":Specimen_CA_11"}
        },
        [18] = {
            name = "Photosynthesis",
            packHex = "h0E7665676574616C0000000000000000000000000000000005000000C40900002467616368615F7061636B5F7665676574616C0000000000",
            specs = {":Specimen_BB_02", ":Specimen_DC_08", ":Specimen_AF_01", ":Specimen_DE_09", ":Specimen_CA_06", ":Specimen_DF_12"}
        },
        [19] = {
            name = "Bloody Games",
            packHex = "h106F6C796D7069637300000000000000000000000000000005000000C40900002667616368615F7061636B5F6F6C796D7069637300000000",
            specs = {":Specimen_FA_08", ":Specimen_CA_02", ":Specimen_FD_06", ":Specimen_CA_07", ":Specimen_CA_08", ":Specimen_CA_14"}
        },
        [20] = {
            name = "Checkmate",
            packHex = "h0A636865737300000000000000000000000000000000000005000000C40900002067616368615F7061636B5F636865737300000000000000",
            specs = {":Specimen_CF_04", ":Specimen_FE_06", ":Specimen_BA_06", ":Specimen_AC_04", ":Specimen_AC_04", ":Specimen_CC_14"}
        }
    }

    local subMenuReactor
    local selectSource
    local selectTarget
    local performSwap

    performSwap = function(src, tgt)
        local originData = database[src]
        local targetData = database[tgt]
        
        if originData == nil or targetData == nil then
            gg.alert("Error: Datos del Reactor no encontrados en la base de datos.")
            subMenuReactor()
            return
        end

        gg.setVisible(false)
        gg.toast("Cambiando, esto puede tardar unos segundos...")
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_CODE_APP | gg.REGION_ANONYMOUS)

        gg.clearResults()
        gg.searchNumber(originData.packHex, gg.TYPE_BYTE)
        local count = gg.getResultsCount() or 0

        if gg.getResultsCount() == 0 then
            gg.toast("en busca...")
            gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_C_BSS | gg.REGION_C_DATA | gg.REGION_ANONYMOUS | gg.REGION_JAVA_HEAP | gg.REGION_C_HEAP | gg.REGION_CODE_APP)
            gg.searchNumber(originData.packHex, gg.TYPE_BYTE)
        end
        
        if count == 0 then
            gg.alert("No se encontro: " .. originData.name .. "")
            subMenuReactor()
            return
        end
        
        local r = gg.getResults(count)
        gg.editAll(targetData.packHex, gg.TYPE_BYTE)
        gg.toast("Reactor principal cambiado")

        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        
        for i = 1, 6 do
            local searchSpec = originData.specs[i]
            local targetSpec = targetData.specs[i]
            if originData.specs[i] ~= targetData.specs[i] then
                gg.clearResults()
                local searchSpec = originData.specs[i]
            end

            if searchSpec ~= nil and targetSpec ~= nil then
                gg.searchNumber(searchSpec, gg.TYPE_BYTE)
                local cSpecs = gg.getResultsCount() or 0
        
                if cSpecs > 0 then
                    local res = gg.getResults(cSpecs)
                    gg.editAll(targetData.specs[i], gg.TYPE_BYTE)
                end
                gg.clearResults()
            end
        end

        gg.alert("Cambios exitosos!")
    end
    selectSource = function()
        local names = {}
        local mapping = {} 
        local c = 1
        
        for k, v in pairs(database) do
        table.insert(names, v.name)
        mapping[c] = k
        c = c + 1
        end
        
        local choice = gg.choice(names, nil, "selecciona uno de los reactores que estan disponibles")
        if choice == nil then subMenuReactor() return end
        
        sourceID = mapping[choice]
        gg.toast("Reactor seleccionado: " .. database[sourceID].name)
        subMenuReactor()
    end
    selectTarget = function()
        if sourceID == nil then
        gg.alert("Error!")
        subMenuReactor()
        return
        end

        local names = {}
        local mapping = {}
        local c = 1
        for k, v in pairs(database) do
        table.insert(names, "Reemplazar a: " .. v.name)
        mapping[c] = k
        c = c + 1
        end
        
        local choice = gg.choice(names, nil, "Reactor seleccionado: " .. database[sourceID].name .. "\nbusca un reemplazo para seguir!")
        if choice == nil then subMenuReactor() return end
        
        local targetID = mapping[choice]
        performSwap(sourceID, targetID)
    end
    subMenuReactor = function()
        local status = "Ninguno"
        if sourceID ~= nil then 
        status = database[sourceID].name 
        end

        local menu = gg.choice({
        '[>] Selecciona un reactor para reemplazar',
        '[>] Selecciona un reactor que deseas',
        '[>] Salir'
        }, nil, "[CFG] Configuracion de reactores: [" .. status .. "]")

        if menu == 1 then selectSource() end
        if menu == 2 then selectTarget() end
        if menu == 3 then
            return
        end  
    end
    --gg.timeJump("5:0")
    subMenuReactor()

end



function misc()
    local submenu = gg.choice({
        '[>] Compras Ilimitadas',
        '[>] Mutantes Exclusivos',
        '[>] Volver',
    }, nil, '[CFG] Configuracion de Mutantes.')

    if submenu == 1 then
        gg.alert("Esta opcion permite que todas las ofertas que estan disponibles este dia se congelen, haciendo que sean ilimitadas")
        gg.setVisible(false)

        gg.clearResults()
        gg.searchNumber(":Allowed", gg.TYPE_BYTE)
        local r = gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        --gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS | gg.REGION_CODE_APP)
        gg.clearResults()
        gg.sleep(1000)

        gg.clearResults()
        gg.timeJump("5:0")
        gg.toast("Compras ilimitadas activadas.")

    elseif submenu == 2 then
        gg.alert("Advertencia, solo carga 4 mutantes a la vez!\nlos mutantes reemplazados aparecen en la seccion mutantes!")
        local exclumu = gg.choice({
            '[>] Goliath R Marciano errante',
            '[>] Juan Hielo R Deus Machina',
            '[>] Capitan Paz R Nebulon',
            '[>] George Washington R Señor del abismo',
            '[>] Louis XVI R Señor del abismo',
            '[>] Mapach Wik R Nebulon',
            '[>] Santoctopus R Deus Machina',
            '[>] Genimal R Señor del abismo',
            '[>] Hog the Ripper R Marciano errante',
            '[>] El Tio Sam R Marciano errante',
            '[>] Duplicado de Eva R Nebulon',
            '[>] Sable R Deus Machina',
            '[>] Artemisa R Deus Machina',
            '[>] Mega Claus R Marciano errante',
            '[>] Aplastador R Señor del abismo',
            '[>] Spartac R Señor del abismo',
            '[>] Geomega R Nebulon',
            '[>] Arcangel R Nebulon',
            '[>] Diablo R Deus Machina',
            '[>] Norem R Deus Machina',
            '[>] Surfista del espacio R Señor del abismo',
            '[>] Master Paw R Marciano errante',
            '[>] Akai bot R Deus Machina',
            '[>] Kolossus R Nebulon',
            '[>] Capitan achabe R Señor del abismo',
            '[>] Heimdall R Marciano errante',
            '[>] Oriax R Deus Machina',
            '[>] Caliburn Ex R Nebulon',
            '[>] Generalisimo Chocoleon R Señor del abismo',
        }, nil, '[CFG] Configuracion Mutantes Exclusivos, R = Reemplazo.')

        if exclumu == 1 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AA_02_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Goliath cargado, hecha un vistazo a la seccion mutantes.")

        elseif exclumu == 2 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CD_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Juan Hielo cargado, hecha un vistazo a la seccion mutantes.")

        elseif exclumu == 3 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FC_02_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("1200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Capitan Paz cargado, hecha un vistazo a la seccion mutantes.")


        elseif exclumu == 4 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":BC_04_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("1000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("George Washington cargado completamente.")


        elseif exclumu == 5 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":DB_04_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Louis XVI cargado completamente.")

        elseif exclumu == 6 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":ED_04_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Mapach Wik cargado completamente.")


        elseif exclumu == 7 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":EC_04_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Santoctopus cargado completamente.")
 
            
        elseif exclumu == 8 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":DF_99_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Genimal cargado completamente.")


        elseif exclumu == 9 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CD_05_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Hog the Ripper cargado completamente.")


        elseif exclumu == 10 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CF_06_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("El Tio Samn cargado completamente.")

        elseif exclumu == 11 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AF_06_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Duplicado de Eva cargado completamente.")

        elseif exclumu == 12 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":DF_06_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Sable cargado completamente.")

        elseif exclumu == 13 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CB_06_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Artemisa cargado completamente.")


        elseif exclumu == 14 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CF_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Mega Claus cargado completamente.")

        elseif exclumu == 15 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AB_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Aplastador cargado completamente.")

        elseif exclumu == 16 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CC_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Spartac cargado completamente.")


        elseif exclumu == 17 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FF_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Geomega cargado completamente.")

        elseif exclumu == 18 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FA_99_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Arcangel cargado completamente.")

        elseif exclumu == 19 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":EB_99_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Diablo cargado completamente.")

        elseif exclumu == 20 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":DC_07_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Norem cargado completamente.")

        elseif exclumu == 21 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":EA_10_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Surfista del espacio cargado completamente.")


        elseif exclumu == 22 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FD_10_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("1500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Master Paw cargado completamente.")


        elseif exclumu == 23 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AE_10_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("4000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Akai bot cargado completamente.")

        elseif exclumu == 24 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CE_99_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Kolossus cargado completamente.")


        elseif exclumu == 25 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CE_10_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Capitan Achabe cargado completamente.")


        elseif exclumu == 26 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":CE_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AF_11_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2520", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Heimdall cargado completamente.")

        elseif exclumu == 27 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":AF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FC_03_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2880", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Oriax cargado completamente.")

        elseif exclumu == 28 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":EF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CF_11_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("1800", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3000", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Caliburn Ex cargado completamente.")

        elseif exclumu == 29 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":FF_01", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FC_12_sc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("2160", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.timeJump("5:0")
            gg.toast("Generalisimo chocoleon cargado completamente.")

        elseif exclumu == 30 then
            misc()
        end

    elseif submenu == 5 then
        gg.alert("Advertencia, Crasheo normal despues de poner en la terraza al mutante, no se perdera el mutante")
        local officeex = gg.choice({
            '[>] Amistad Sin Limites R Mutante Mensual',
            '[>] Black Ice R Mutante Mensual',
            '[>] Hidrira R Mutante Mensual',
            '[>] Nexo Orbital R Mutante Mensual',
            '[>] Fiera del campo R Mutante Mensual',
            '[>] Señor Bestial R Mutante Mensual',
            '[>] Emperador Helado R Mutante Mensual',
            '[>] Profesor Cronomantico R Mutante Mensual',
            '[>] Bearsikk Sikleast R Mutante Mensual',
            '[>] Sakuraboshi R Mutante Mensual',
            '[>] Nucleo Serafico R Mutante Mensual',
            '[>] Helidron R Mutante Mensual',
        }, nil, '[CFG] Configuracion Mutantes 2025 - 2024, R = Reemplazo.')

        if officeex == 1 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CC_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Amistad Sin Limites cargado completamente.")


        elseif officeex == 2 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AF_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Black Ice cargado completamente.")


        elseif officeex == 3 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":ED_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Hidrira cargado completamente.")


        elseif officeex == 4 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":EE_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Nexo Orbital cargado completamente.")


        elseif officeex == 5 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":BD_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Fiera del campo cargado completamente.")





        elseif officeex == 6 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":DD_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Señor bestial cargado completamente.")




        elseif officeex == 7 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":EA_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Emperador Helado cargado completamente.")


        elseif officeex == 8 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AC_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3500", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Profesor Cronomantico cargado completamente.")

        elseif officeex == 9 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":CD_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Bearsikk Sikleast cargado completamente.")





        elseif officeex == 10 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FF_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Sakuraboshi cargado completamente.")


        elseif officeex == 11 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":FE_14_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("3200", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Nucleo Serafico cargado completamente.")

        elseif officeex == 12 then
            gg.toast("Cargando, Esto tomara unos segundos.")
            gg.setVisible(false)
            gg.processPause()
                
            gg.clearResults()
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            if gg.getResultsCount() > 0 then
                gg.getResults(100000)
                gg.editAll("0", gg.TYPE_BYTE)
            end
            gg.sleep(1000)

            gg.clearResults()
            gg.searchNumber(":BE_13", gg.TYPE_BYTE)
            local r = gg.getResults(100000)
            gg.editAll(":AE_13_hc", gg.TYPE_BYTE)
            gg.searchNumber(":Allowed", gg.TYPE_BYTE)
            r = gg.getResults(100000)
            gg.editAll("0", gg.TYPE_BYTE)
            gg.clearResults()
            gg.searchNumber("3000", gg.TYPE_DWORD)
            r = gg.getResults(100000)
            gg.editAll("2800", gg.TYPE_DWORD)

            gg.clearResults()
            gg.processResume()
            gg.sleep(1000)
            gg.timeJump("5:0")
            gg.toast("Helidron cargado completamente.")

        elseif officeex == 13 then
            misc()
        end

    elseif submenu == 3 then
        return
    end   
end



-- ============================================================================
-- INTERFAZ ACTUALIZADA
-- ============================================================================

local APP_NAME = "MGG FUSION V4.1"
local ADMIN_NAME = "Smith Luque"

local function MenuTitle(section, guide)
    return APP_NAME .. " | " .. section .. "\n\n" ..
           "GUIA RAPIDA: " .. guide
end

local function ShowError(context, err)
    gg.alert("[ERROR] " .. context .. "\n\n" .. tostring(err) ..
             "\n\nPrueba reiniciando el juego y vuelve a cargar solo una opcion.")
end

local function RunAction(label, fn)
    gg.toast("Cargando: " .. label)
    local ok, err = pcall(fn)
    if not ok then ShowError(label, err) end
end

-- Permite abrir directamente una opcion interna de los menus heredados.
-- Si la funcion necesita un segundo submenu, este se mostrara normalmente.
local function RunForcedChoices(fn, selections, label)
    local originalChoice = gg.choice
    local index = 1
    gg.choice = function(items, selected, title)
        if index <= #selections then
            local value = selections[index]
            index = index + 1
            return value
        end
        return originalChoice(items, selected, title)
    end

    gg.toast("Cargando: " .. label)
    local ok, err = pcall(fn)
    gg.choice = originalChoice
    if not ok then ShowError(label, err) end
end

local function MenuCambioIndividualV4()
    while true do
        local choice = gg.choice({
            "[1] Reemplazar (Buscar por Nombre)",
            "[2] Reemplazar (Buscar por Codigo)",
            "[3] Lista de Mutantes (Solo Lista)",
            "[<] Volver"
        }, nil, MenuTitle("REEMPLAZAR MUTANTES EN HIBRIDIZADORA",
            "Busca primero el mutante actual y despues el nuevo. Usa Codigo si ya conoces valores como AA_01."))

        if choice == 1 then
            local old = searchList("Escribe el nombre del mutante ACTUAL:")
            if old then
                local new = searchList("Escribe el nombre del mutante NUEVO:")
                if new then RunAction("Reemplazo individual", function() replaceText(old, new) end) end
            end
        elseif choice == 2 then
            local input = gg.prompt({"Codigo actual (ej: AA_01)", "Codigo nuevo (ej: EE_02)"}, {"", ""}, {"text", "text"})
            if input and input[1] ~= "" and input[2] ~= "" then
                local old = string.upper(input[1])
                local new = string.upper(input[2])
                RunAction("Reemplazo por codigo", function() replaceText(old, new) end)
            end
        elseif choice == 3 then
            copyOnly()
        elseif choice == 4 or choice == nil then
            return
        end
    end
end

local function MenuTiendaMutantes()
    while true do
        local choice = gg.choice({
            "[1] Todos los Paquetes de Mutantes",
            "[2] Todos los Mutantes",
            "[3] Paquete Platino",
            "[4] Mutantes a Creditos - Seccion 1",
            "[5] Mutantes Meta y Comunes a Oro - Seccion 1",
            "[6] Paquete Monogen Platino",
            "[<] Volver"
        }, nil, MenuTitle("TIENDA DE MUTANTES",
            "Activa una opcion por vez. Espera el mensaje de finalizacion antes de abrir otra seccion."))

        if choice and choice >= 1 and choice <= 6 then
            RunForcedChoices(Mutantesymas, {choice}, "Tienda de mutantes")
        elseif choice == 7 or choice == nil then
            return
        end
    end
end

local function MenuMutantesEspeciales()
    while true do
        local choice = gg.choice({
            "[1] Mutantes Exclusivos",
            "[2] Mutantes Mensuales 2024 - 2025",
            "[3] Neo Monogenes",
            "[4] Buranka y Britany",
            "[<] Volver"
        }, nil, MenuTitle("MUTANTES ESPECIALES",
            "En Exclusivos carga pocos mutantes a la vez. Los reemplazos aparecen en la seccion de mutantes del juego."))

        if choice == 1 then
            RunForcedChoices(misc, {2}, "Mutantes exclusivos")
        elseif choice == 2 then
            RunForcedChoices(misc, {5}, "Mutantes mensuales")
        elseif choice == 3 then
            RunForcedChoices(paquetesespeciales, {4}, "Neo Monogenes")
        elseif choice == 4 then
            RunAction("Buranka y Britany", Buranka_Britany)
        elseif choice == 5 or choice == nil then
            return
        end
    end
end

local function MenuMutantes()
    while true do
        local choice = gg.choice({
            "[1] Reemplazar Mutantes en Hibridizadora",
            "[2] Tienda de Mutantes",
            "[3] Mutantes Especiales",
            "[<] Volver al Menu Principal"
        }, nil, MenuTitle("MUTANTES",
            "Usa Reemplazar para cambiar un mutante concreto. Usa Tienda o Especiales para activar lotes y ofertas."))

        if choice == 1 then MenuCambioIndividualV4()
        elseif choice == 2 then MenuTiendaMutantes()
        elseif choice == 3 then MenuMutantesEspeciales()
        elseif choice == 4 or choice == nil then return end
    end
end

local function MenuReactor()
    while true do
        local choice = gg.choice({
            "[1] Cambiar Reactor (Preparar)",
            "[2] Hackear Reactor (Aplicar el Cambio)",
            "[3] Fichas Reactor",
            "[4] Preparar y Pelear",
            "[5] Salas Reactor",
            "[<] Volver al Menu Principal"
        }, nil, MenuTitle("REACTOR",
            "Para cambiar un reactor: primero Preparar, elige NUEVO y luego ORIGINAL. Despues usa Aplicar el Cambio."))

        if choice == 1 then RunAction("Preparar reactor", ChangeReactorMenu)
        elseif choice == 2 then RunAction("Aplicar reactor", MutantReactor)
        elseif choice == 3 then RunForcedChoices(fichasytarros, {3}, "Fichas reactor")
        elseif choice == 4 then RunAction("Preparar y pelear", ReadyFight)
        elseif choice == 5 then RunAction("Salas reactor", reactorgachas)
        elseif choice == 6 or choice == nil then return end
    end
end

local function MenuDesbloquearCajas()
    while true do
        local choice = gg.choice({
            "[1] Activar Todas las Cajas",
            "[2] Grupo 1: Cajas de Aniversario y Navidad",
            "[3] Grupo 2: Cajas Especiales y Elite",
            "[<] Volver"
        }, nil, MenuTitle("DESBLOQUEAR CAJAS",
            "Empieza con un grupo si tu dispositivo tiene pocos recursos. Usa Todas las Cajas solo si el juego esta estable."))

        if choice == 1 then RunAction("Todas las cajas", function() EjecutarCajas("TODO") end)
        elseif choice == 2 then RunAction("Cajas grupo 1", function() EjecutarCajas("G1") end)
        elseif choice == 3 then RunAction("Cajas grupo 2", function() EjecutarCajas("G2") end)
        elseif choice == 4 or choice == nil then return end
    end
end

local function MenuPaquetesGenerales()
    while true do
        local choice = gg.choice({
            "[1] Cajas de Aniversario y Navidad",
            "[2] Paquete Rapidez Nivel 5",
            "[3] Paquete Escudo Especial Nivel 5",
            "[4] Paquetes de EXP y Creditos",
            "[5] Cajas Misteriosas",
            "[6] Ofertas y Paquetes",
            "[7] Paquete Fortalecimiento Nivel 5",
            "[<] Volver"
        }, nil, MenuTitle("PAQUETES GENERALES",
            "Carga una opcion por vez. Algunas opciones pueden congelar el juego durante unos segundos mientras terminan."))

        if choice == 1 then RunForcedChoices(Cajasaniversario, {1}, "Cajas aniversario y Navidad")
        elseif choice == 2 then RunForcedChoices(Cajasaniversario, {3}, "Paquete rapidez nivel 5")
        elseif choice == 3 then RunForcedChoices(Cajasaniversario, {4}, "Paquete escudo especial nivel 5")
        elseif choice == 4 then RunForcedChoices(Cajasaniversario, {6}, "Paquetes EXP y creditos")
        elseif choice == 5 then RunForcedChoices(Cajasaniversario, {8}, "Cajas misteriosas")
        elseif choice == 6 then RunForcedChoices(Cajasaniversario, {9}, "Ofertas y paquetes")
        elseif choice == 7 then RunForcedChoices(Cajasaniversario, {10}, "Paquete fortalecimiento nivel 5")
        elseif choice == 8 or choice == nil then return end
    end
end

local function MenuPaquetesEspeciales()
    while true do
        local choice = gg.choice({
            "[1] Mas Cajas Misteriosas",
            "[<] Volver"
        }, nil, MenuTitle("PAQUETES ESPECIALES",
            "Usa esta opcion despues de cargar las cajas normales si deseas ampliar la lista de cajas misteriosas."))

        if choice == 1 then RunForcedChoices(paquetesespeciales, {3}, "Mas cajas misteriosas")
        elseif choice == 2 or choice == nil then return end
    end
end

local function MenuCajasPaquetes()
    while true do
        local choice = gg.choice({
            "[1] Desbloquear Cajas",
            "[2] Paquetes Generales",
            "[3] Paquetes Especiales",
            "[<] Volver al Menu Principal"
        }, nil, MenuTitle("CAJAS Y PAQUETES",
            "Separa cajas y paquetes para evitar cargas innecesarias. No actives muchas opciones seguidas."))

        if choice == 1 then MenuDesbloquearCajas()
        elseif choice == 2 then MenuPaquetesGenerales()
        elseif choice == 3 then MenuPaquetesEspeciales()
        elseif choice == 4 or choice == nil then return end
    end
end

local function MenuRecursos()
    while true do
        local choice = gg.choice({
            "[1] Laboratorio Medico",
            "[2] Horno de Oro",
            "[3] Velocidad x5",
            "[4] Compras Ilimitadas",
            "[5] Mutosterona",
            "[6] Estrellas",
            "[7] Caja Creditos",
            "[8] Zona Deluxe",
            "[9] Fichas Jackpot (Recurso)",
            "[10] Frascos XP (Recurso)",
            "[11] Fichas Reactor",
            "[12] Fichas Reto",
            "[<] Volver al Menu Principal"
        }, nil, MenuTitle("RECURSOS, FICHAS Y MEJORAS",
            "Carga solo el recurso que necesitas. Fichas Reactor tambien aparece aqui para encontrarla rapidamente."))

        if choice == 1 then RunAction("Laboratorio medico", Medlab)
        elseif choice == 2 then RunAction("Horno de oro", GoldFurnace)
        elseif choice == 3 then RunAction("Velocidad x5", Speed5)
        elseif choice == 4 then RunForcedChoices(misc, {1}, "Compras ilimitadas")
        elseif choice == 5 then RunForcedChoices(fichasytarros, {5}, "Mutosterona")
        elseif choice == 6 then RunForcedChoices(fichasytarros, {6}, "Estrellas")
        elseif choice == 7 then RunForcedChoices(fichasytarros, {7}, "Caja creditos")
        elseif choice == 8 then RunForcedChoices(fichasytarros, {8}, "Zona Deluxe")
        elseif choice == 9 then RunForcedChoices(fichasytarros, {1}, "Fichas Jackpot")
        elseif choice == 10 then RunForcedChoices(fichasytarros, {2}, "Frascos XP")
        elseif choice == 11 then RunForcedChoices(fichasytarros, {3}, "Fichas reactor")
        elseif choice == 12 then RunForcedChoices(fichasytarros, {4}, "Fichas reto")
        elseif choice == 13 or choice == nil then return end
    end
end

local function MenuOrbesNivel7()
    while true do
        local choice = gg.choice({
            "[1] Ataque Nivel 7",
            "[2] Vida Nivel 7",
            "[3] Critico Nivel 7",
            "[4] XP Nivel 6",
            "[<] Volver"
        }, nil, MenuTitle("ORBES NIVEL 7",
            "Elige el tipo de orbe que deseas mejorar. Activa una opcion y revisa el resultado antes de continuar."))

        if choice == 1 then RunForcedChoices(paquetesespeciales, {1, 1}, "Orbe ataque nivel 7")
        elseif choice == 2 then RunForcedChoices(paquetesespeciales, {1, 2}, "Orbe vida nivel 7")
        elseif choice == 3 then RunForcedChoices(paquetesespeciales, {1, 3}, "Orbe critico nivel 7")
        elseif choice == 4 then RunForcedChoices(paquetesespeciales, {1, 4}, "Orbe XP nivel 6")
        elseif choice == 5 or choice == nil then return end
    end
end

local function MenuPaquetesOrbes()
    while true do
        local choice = gg.choice({
            "[1] Paquete de Orbes Basicos Nivel 6",
            "[2] Paquete de Orbes de Poder Nivel 6",
            "[3] Paquete de Orbes de EXP Nivel 4",
            "[4] Paquete de Orbes Basicos Nivel 7",
            "[<] Volver"
        }, nil, MenuTitle("PAQUETES DE ORBES",
            "Los tres primeros activan paquetes concretos. Nivel 7 abre el selector para elegir Ataque, Vida, Critico o XP."))

        if choice == 1 then RunForcedChoices(Cajasaniversario, {2}, "Paquete orbes basicos nivel 6")
        elseif choice == 2 then RunForcedChoices(Cajasaniversario, {5}, "Paquete orbes poder nivel 6")
        elseif choice == 3 then RunForcedChoices(Cajasaniversario, {7}, "Paquete orbes EXP nivel 4")
        elseif choice == 4 then MenuOrbesNivel7()
        elseif choice == 5 or choice == nil then return end
    end
end

local function MenuOrbes()
    while true do
        local choice = gg.choice({
            "[1] Orbe XP Nivel 4",
            "[2] Orbes Basicos Nivel 6",
            "[3] Orbes ATK / VD / CRIT",
            "[4] Paquetes de Orbes",
            "[5] Orbes Nivel 7",
            "[<] Volver al Menu Principal"
        }, nil, MenuTitle("ORBES",
            "Usa Orbes para mejoras individuales y Paquetes para activar lotes completos."))

        if choice == 1 then RunAction("Orbe XP nivel 4", xpOrb)
        elseif choice == 2 then RunAction("Orbes basicos nivel 6", BasicOrbs)
        elseif choice == 3 then RunAction("Orbes ATK / VD / CRIT", Bundle6Orbs)
        elseif choice == 4 then MenuPaquetesOrbes()
        elseif choice == 5 then MenuOrbesNivel7()
        elseif choice == 6 or choice == nil then return end
    end
end

local function MenuOtros()
    while true do
        local choice = gg.choice({
            "[1] Misc",
            "[<] Volver al Menu Principal"
        }, nil, MenuTitle("OTROS",
            "Abre las utilidades heredadas. Varias funciones ya estan ordenadas en otras secciones, pero se conserva el acceso original."))

        if choice == 1 then RunAction("Menu Misc heredado", misc)
        elseif choice == 2 or choice == nil then return end
    end
end

local function InformacionV4()
    gg.alert([[MGG FUSION V4.1

ADMIN: Smith Luque

ESTRUCTURA:
[1] Mutantes
[2] Reactor
[3] Cajas y Paquetes
[4] Recursos, Fichas y Mejoras
[5] Orbes
[6] Otros

LISTA DE MUTANTES:
- Catalogo actualizado: ]] .. tostring(#char_list) .. [[ mutantes.
- El buscador muestra Nombre (CODIGO).
- Puedes buscar escribiendo parte del nombre o el codigo.
- Game Guardian no muestra imagenes remotas dentro de gg.choice; por compatibilidad se usan nombres y codigos.

RECOMENDACIONES:
- Usa una sola opcion por vez.
- Espera a que finalice la carga antes de abrir otra opcion.
- Si el juego se congela brevemente durante una carga, espera unos segundos.
- Si una opcion falla, reinicia el juego y vuelve a cargar solo esa opcion.

BASE FUNCIONAL:
- Modulos heredados de Warlery's Blackmarket V1.5.
- Cambiador individual y herramientas integradas.

Admin y reorganizacion de interfaz: Smith Luque]])
end

local function MenuAcerca()
    while true do
        local choice = gg.choice({
            "[1] Informacion del Script",
            "[<] Volver al Menu Principal"
        }, nil, MenuTitle("ACERCA DE",
            "Consulta la version, autoria administrativa y recomendaciones generales de uso."))

        if choice == 1 then InformacionV4()
        elseif choice == 2 or choice == nil then return end
    end
end

local function SalirV4()
    if gg.alert("Deseas finalizar el script?", "Si", "No") == 1 then
        gg.alert("Hasta luego.")
        os.exit()
    end
end

local function MenuPrincipalV4()
    local choice = gg.choice({
        "[1] Mutantes",
        "[2] Reactor",
        "[3] Cajas y Paquetes",
        "[4] Recursos, Fichas y Mejoras",
        "[5] Orbes",
        "[6] Otros",
        "[7] Acerca de",
        "[X] Salir"
    }, nil, MenuTitle("MENU PRINCIPAL",
        "Elige una categoria. El boton flotante de Game Guardian vuelve a abrir este menu cuando lo necesites."))

    if choice == 1 then MenuMutantes()
    elseif choice == 2 then MenuReactor()
    elseif choice == 3 then MenuCajasPaquetes()
    elseif choice == 4 then MenuRecursos()
    elseif choice == 5 then MenuOrbes()
    elseif choice == 6 then MenuOtros()
    elseif choice == 7 then MenuAcerca()
    elseif choice == 8 then SalirV4() end
end

local function InitFusionV4()
    gg.setVisible(false)
    local aceptar = gg.alert([[MGG FUSION V4.1

BIENVENIDO/A

Admin: Smith Luque
Lista actualizada: ]] .. tostring(#char_list) .. [[ mutantes disponibles.

GUIA GENERAL:
1. Usa el boton flotante de Game Guardian para abrir el menu.
2. Las funciones estan separadas por categorias para evitar repeticiones.
3. Activa una opcion por vez y espera el mensaje final.
4. En Reactor: primero prepara el cambio y despues aplicalo.
5. En Reemplazar Mutantes: busca por nombre o escribe el codigo manualmente.

RECOMENDADO:
- VPhone o LDPlayer.
- Game Guardian con selector de memoria reiniciado.
- Dispositivo rooteado y de 64 bits.
- Evita activar demasiadas opciones seguidas.

Continuar?]], "Continuar", "Salir")

    if aceptar == 1 then
        gg.toast("Script iniciado. Pulsa el boton flotante de Game Guardian.")
        gg.showUiButton()
    else
        os.exit()
    end
end

InitFusionV4()

while true do
    if gg.isClickedUiButton() then
        MenuPrincipalV4()
    end
    gg.sleep(150)
end
