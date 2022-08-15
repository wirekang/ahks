RunKomorebi(){
  v := A_ScriptDir . "\komorebi"
  Env_UserNew("KOMOREBI_CONFIG_HOME", v)
  Run Komorebic.exe start
}