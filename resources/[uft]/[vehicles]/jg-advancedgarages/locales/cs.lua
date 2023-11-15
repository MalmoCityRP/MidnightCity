Locales = Locales or {}

Locales['cs'] = {
  yes = "Ano",
  ne = "Ne",
  garage = "Garáž",
  jobGarage = "Frakční Garáž",
  gangGarage = "Gang Garáž",
  player = "Hráč",
  impound = "Odtahovka",
  inGarage = "V garáži",
  notInGarage = "Mimo garáž",
  car = "Car",
  air = "Air",
  sea = "Sea",
  fuel = "Palivo",
  engine = "Motor",
  body = "Karoserie",
  day = "den",
  days = "dní",
  hour = "hodiny",
  hours = "hodin",

  -- User Interface
  noVehicles = "V této garáži nejsou žádná vozidla",
  vehicles = "vozidlo(a)",
  vehiclePlate = "SPZ vozidla",
  vehicleNotInGarage = "Vozidlo není v garáži",
  vehicleTakeOut = "Vytáhnout vozidlo",
  vehicleReturnAndTakeOut = "Vyzvednout z odtahovky",
  vehicleReturnToOwnersGarage = "Návrat do garáže majitele",
  transferToGarageOrPlayer = "Převést do garáže nebo hráči",
  transferToGarage = "Převést do garáže",
  transferToPlayer = "Převést na hráče",
  vehicleTransfer = "Převod",
  noAvailableGarages = "Žádné dostupné garáže",
  currentGarage = "Aktuální garáž",
  noPlayersOnline = "Žádní hráči online",
  createPrivateGarage = "Vytvořit soukromou garáž",
  pgAlertHeadsUp = "Heads up!",
  pgAlertText = "Vytvoří se garáž a vozidla se budou spawnovat přesně v místě a směru, kde právě stojíte.",
  garageName = "Název garáže",
  impoundInformation = "Informace o zabavení",
  impoundedBy = "Zabaveno do",
  impoundedReason = "Důvod",
  impoundPlayerCanCollect = "Můžete si vyzvednout své vozidlo na odtahovce.",
  impoundCollectionContact = "Kontaktujte prosím %{value}, abyste si mohli vyzvednout své vozidlo.",
  impoundNoVehicles = "V blízkosti nejsou žádná vozidla",
  impoundAvailable = "K dispozici",
  impoundRetrievableByOwner = "Vyzvednutelné vlastníkem",
  impoundNoReason = "Není uveden důvod",
  impoundVehicle = "Zabavené vozidlo",
  impoundReasonField = "Důvod (nepovinný)",
  impoundTime = "Doba zabavení",
  impoundAvailableImmediately = "K dispozici ihned",
  impoundCost = "Cena",
  changeVehiclePlate = "Vyměnit registrační značku vozidla",
  newPlate = "Nová registrační značka",
  search = "Hledejte podle jména nebo štítku",

  -- NEW
  noPrivateGarages = "Žádné soukromé garáže",
  editPrivateGarage = "Upravit soukromou garáž",
  owners = "Majitel(é)",
  location = "Umístění",
  next = "Další",
  previous = "Předchozí",
  page = "Stránka",
  of = "z",
  show = "Zobrazit",
  save = "Uložit",
  edit = "Upravit",
  delete = "Odstranit",
  garageDeleteConfirm = "Opravdu chcete tuto garáž odstranit?",
  privGarageSearch = "Vyhledávání podle jména",
  garageUpdatedSuccess = "Garáž úspěšně aktualizována!",
  getCurrentCoords = "Získání aktuálních souřadnic",
  identifier = "Identifikátor",
  name = "Název",
  noPlayers = "Nebyli přidáni žádní hráči",
  addPlayer = "Přidat hráče",
  loadingVehicle = "Nakládací vozidlo...",
  vehicleSetup = "Nastavení vozidla",
  extras = "Doplňky",
  extra = "Extra",
  liveries = "Liveries",
  livery = "Livery",
  noLiveries = "Nejsou k dispozici žádné livreje",
  noExtras = "Žádné doplňky nejsou k dispozici",
  none = "Žádné",

  -- Notifications
  insertVehicleTypeError = "V této garáži lze uložit pouze %{value} typů vozidel",
  insertVehiclePublicError = "Do veřejných garáží nelze ukládat frakční vozidla",
  vehicleParkedSuccess = "Vozidlo bylo zaparkováno do garáže",
  vehicleNotOwnedError = "Toto vozidlo nevlastníte",
  vehicleNotOwnedByPlayerError = "Vozidlo není ve vlastnictví tohoto hráče",
  notEnoughMoneyError = "Nemáte v bance dostatek peněz",
  vehicleNotYoursError = "Toto vozidlo vám nepatří",
  notJobOrGangVehicle = "Toto není vozidlo %{value}",
  invalidGangError = "Nezadali jste platný gang",
  invalidJobError = "Nezadali jste platnou frakci",
  notInsideVehicleError = "Nesedíte ve vozidle",
  vehicleAddedToGangGarageSuccess = "Vozidlo bylo přidáno do garáže gangu %{value}!",
  vehicleAddedToJobGarageSuccess = "Vozidlo bylo přidáno do garáže frakce %{value}!",
  moveCloserToVehicleError = "Musíte se přiblížit k vozidlu",
  noVehiclesNearbyError = "V blízkosti nejsou žádná vozidla",
  commandPermissionsError = "Nemáte oprávnění na použítí tohoto příkazu",
  actionNotAllowedError = "Nejste opravněn(a) provádět tuto akci",
  garageNameExistsError = "Název garáže již existuje",
  vehiclePlateExistsError = "SPZ vozidla je již použita",
  playerNotOnlineError = "Hráč není online",
  vehicleTransferSuccess = "Vozidlo převedeno na %{value}",
  vehicleTransferSuccessGeneral = "Vozidlo bylo úspěšně převedeno",
  vehicleReceived = "Získal jsi vozidlo se  %{value}",
  vehicleImpoundSuccess = "Vozidlo bylo úspěšně zabaveno",
  vehicleImpoundRemoveSuccess = "Vozidlo bylo odstraněno z odtahovky",
  vehicleImpoundReturnedToOwnerSuccess = "Vozidlo bylo vráceno do garáže majitele",
  garageCreatedSuccess = "Garáž byla úspěšně vytvořena!",
  vehiclePlateUpdateSuccess = "SPZ vozidla nastavena na %{value}",
  vehicleDeletedSuccess = "Vozidlo bylo odstraněno z databáze %{value}",
  playerIsDead = "Nemůžeš to udělat, dokud jsi mrtvý",

  -- Commands
  cmdSetGangVehicle = "Přidat aktuální vozidlo do gang garáže",
  cmdRemoveGangVehicle = "Nastavit vozidlo gangu zpět do vlastnictví hráče",
  cmdSetJobVehicle = "Přidat aktuální vozidlo do garáže pro frakci",
  cmdRemoveJobVehicle = "Nastavit frakční vozidlo zpět do vlastnictví hráče",
  cmdArgGangName = "Název gangu",
  cmdArgJobName = "Název jobu",
  cmgArgMinGangRank = "Minimální hodnost gangu",
  cmgArgMinJobRank = "Minimální pracovní zařazení",
  cmdArgPlayerId = "ID hráče nového vlastníka",
  cmdImpoundVehicle = "Zabavit vozidlo",
  cmdChangePlate = "Změnit registrační značku vozidla (pouze pro administrátory)",
  cmdDeleteVeh = "Odstranit vozidlo z databáze (pouze pro administrátory)",
  cmdCreatePrivGarage = "Vytvořit soukromou garáž pro hráče"
}
