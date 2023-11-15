Locales = Locales or {}

Locales['da'] = {
  yes = "Ja",
  no = "Nej",
  garage = "Garage",
  jobGarage = "Job Garage",
  gangGarage = "Bande Garage",
  player = "Spiller",
  impound = "Impound",
  inGarage = "I garage",
  notInGarage = "Ikke i garage",
  car = "Bil",
  air = "Fly",
  sea = "Båd",
  fuel = "Brændstof",
  engine = "Motor",
  body = "Karosseri",
  day = "dag",
  days = "dage",
  hour = "time",
  hours = "timer",

  -- User Interface
  noVehicles = "Der er ingen køretøjer i denne garage",
  vehicles = "køretøj(er)",
  vehiclePlate = "Nummerplade",
  vehicleNotInGarage = "Køretøj er ikke i denne garage",
  vehicleTakeOut = "Tag ud",
  vehicleReturnAndTakeOut = "Parker og tag ud",
  vehicleReturnToOwnersGarage = "Send tilbage til ejers garage",
  transferToGarageOrPlayer = "Overfør til en garage eller en spiller",
  transferToGarage = "Overfør til garage",
  transferToPlayer = "Overfør til spiller",
  vehicleTransfer = "Overfør",
  noAvailableGarages = "Ingen tilgængelige garager",
  currentGarage = "Nuværende garage",
  noPlayersOnline = "Ingen spillere online",
  createPrivateGarage = "Opret privat garage",
  pgAlertHeadsUp = "Pas på!",
  pgAlertText = "The garage will be created and vehicles will spawn in the exact location and direction are you are currently standing.",
  garageName = "Garage Navn",
  impoundInformation = "Impound Information",
  impoundedBy = "Impoundet af",
  impoundedReason = "Grund",
  impoundPlayerCanCollect = "Du kan hente dit køretøj hos impound.",
  impoundCollectionContact = "Kontakt venligst %{value} for at hente dit køretøj.",
  impoundNoVehicles = "Der er ingen køretøjer i dette impound",
  impoundAvailable = "Tilgængelig",
  impoundRetrievableByOwner = "Kan afhentes af ejer",
  impoundNoReason = "Ingen grund angivet",
  impoundVehicle = "Impound Køretøj",
  impoundReasonField = "Grund (valgfri)",
  impoundTime = "Impound Tid",
  impoundAvailableImmediately = "Tilgængelig øjeblikkeligt",
  impoundCost = "Pris",
  changeVehiclePlate = "Skift nummerplade",
  newPlate = "Ny nummerplade",
  search = "Søg efter navn eller nummerplade",

  -- NEW
  noPrivateGarages = "Ingen private garager",
  editPrivateGarage = "Rediger privat garage",
  owners = "Ejer(e)",
  location = "Placering",
  next = "Næste",
  previous = "Tidligere",
  page = "Side",
  of = "af",
  show = "Vis",
  save = "Gem",
  edit = "Rediger",
  delete = "Slet",
  garageDeleteConfirm = "Er du sikker på, at du vil slette denne garage?",
  privGarageSearch = "Søg efter navn",
  garageUpdatedSuccess = "Garagen er blevet opdateret!",
  getCurrentCoords = "Hent aktuelle koordinater",
  identifier = "Identifikator",
  name = "Navn",
  noPlayers = "Der er ikke tilføjet nogen spillere",
  addPlayer = "Tilføj spiller",
  loadingVehicle = "Indlæser køretøj...",
  vehicleSetup = "Opsætning af køretøj",
  extras = "Ekstraudstyr",
  extra = "Ekstra",
  liveries = "Liveries",
  livery = "Livery",
  noLiveries = "Ingen liveries tilgængelige",
  noExtras = "Ingen ekstraudstyr til rådighed",
  none = "Ingen",

  -- Notifications
  insertVehicleTypeError = "Du kan kun opbevare %{value} i denne garage",
  insertVehiclePublicError = "You can't store job or gang vehicles in public garages",
  vehicleParkedSuccess = "Vehicle parked in garage",
  vehicleNotOwnedError = "You don't own this vehicle",
  vehicleNotOwnedByPlayerError = "Vehicle is not owned by a player",
  notEnoughMoneyError = "Du har ikke nok penge i din bank",
  vehicleNotYoursError = "Køretøj tilhører ikke dig",
  notJobOrGangVehicle = "Dette er ikke en %{value}",
  invalidGangError = "Du har ikke angivet en gyldig bande",
  invalidJobError = "Du har ikke givet et gyldigt job",
  notInsideVehicleError = "Du sidder ikke i et køretøj",
  vehicleAddedToGangGarageSuccess = "Køretøj tilføjet til %{value} bande garagen!",
  vehicleAddedToJobGarageSuccess = "Køretøj tilføjet til %{value} job garagen!",
  moveCloserToVehicleError = "Du skal være tættere på køretøjet",
  noVehiclesNearbyError = "Der er ingen køretøjer i nærheden",
  commandPermissionsError = "Du må ikke bruge denne kommando",
  actionNotAllowedError = "Du må ikke gøre dette",
  garageNameExistsError = "Garagenavn eksisterer allerede",
  vehiclePlateExistsError = "Nummerplade er allerede i brug",
  playerNotOnlineError = "Spiller er ikke online",
  vehicleTransferSuccess = "Køretøj overført til %{value}",
  vehicleTransferSuccessGeneral = "Køretøj blev overført",
  vehicleReceived = "Du modtog et køretøj med nummerpladen %{value}",
  vehicleImpoundSuccess = "Køretøj blev impounded",
  vehicleImpoundRemoveSuccess = "Køretøj blev fjernet fra impound",
  vehicleImpoundReturnedToOwnerSuccess = "Køretøjet blev returneret til ejerens garage",
  garageCreatedSuccess = "Garage oprettet!",
  vehiclePlateUpdateSuccess = "Nummerplade ændret til %{value}",
  vehicleDeletedSuccess = "Køretøj blev slettet fra databasen %{value}",
  playerIsDead = "Du kan ikke gøre dette, mens du er død",

  -- Commands
  cmdSetGangVehicle = "Tilføj dette køretøj til bandegaragen",
  cmdRemoveGangVehicle = "Fjern bandekøretøjet og returner det til ejeren",
  cmdSetJobVehicle = "Tilføj dette køretøj til jobgaragen",
  cmdRemoveJobVehicle = "Fjern jobkøretøjet og returner det til ejeren",
  cmdArgGangName = "Bande navn",
  cmdArgJobName = "Job navn",
  cmgArgMinGangRank = "Minimum bande rang",
  cmgArgMinJobRank = "Minimum jobrangering",
  cmdArgPlayerId = "Spiller-ID på ejeren",
  cmdImpoundVehicle = "Impound et køretøj",
  cmdChangePlate = "Skift nummerplade (Kun admin)",
  cmdDeleteVeh = "Fjern køretøj fra databasen (Kun admin)",
  cmdCreatePrivGarage = "Opret en privat garage til en spiller"
}
