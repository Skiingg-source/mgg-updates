-- ============================================================================
-- NEXUS EDGE - CARGADOR PUBLICO
-- Admin: Smith Luque
-- Este archivo puede compartirse libremente.
-- ============================================================================

gg.setVisible(false)

local opcion = gg.alert([[
============================================================
                 NEXUS EDGE INTERFACE
============================================================
 Admin: Smith Luque

 [!] SCRIPT GRATUITO
 Si pagaste por este archivo, te han estafado.

 [>] Este cargador descarga la versión protegida más reciente.
 [>] Necesitas conexión a internet.
 [>] Después ingresa la contraseña general.
============================================================
]], "[>] INICIAR", "[X] SALIR")

if opcion ~= 1 then
    os.exit()
end

local REMOTE_URL = "https://raw.githubusercontent.com/Skiingg-source/mgg-updates/main/nexus_edge_release_protegido.lua"

gg.toast("Descargando actualización protegida...")

local request = gg.makeRequest(REMOTE_URL, nil, nil)

if type(request) ~= "table" or request.code ~= 200 or not request.content then
    gg.alert("[X] No se pudo descargar el archivo remoto.\n\nRevisa tu conexión a internet y confirma que el archivo esté publicado en GitHub.")
    os.exit()
end

local ejecutar, errorCarga = load(request.content, "@NEXUS_EDGE_REMOTE")

if not ejecutar then
    gg.alert("[X] Error al abrir el release protegido:\n" .. tostring(errorCarga))
    os.exit()
end

gg.toast("Archivo recibido. Abriendo...")
ejecutar()
