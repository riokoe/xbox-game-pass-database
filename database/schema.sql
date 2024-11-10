CREATE TABLE IF NOT EXISTS games (
  id TEXT UNIQUE PRIMARY KEY,
  removed BOOLEAN,
  dateRemoved TIMESTAMP,
  platformConsole BOOLEAN,
  platformPc BOOLEAN,
  platformEa BOOLEAN,
  dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  dateChecked TIMESTAMP,
  dateModified TIMESTAMP,
  uri TEXT,
  developerName TEXT,
  publisherName TEXT,
  publisherAddress TEXT,
  publisherWebsiteUri TEXT,
  supportUri TEXT,
  supportPhone TEXT,
  gameImages TEXT,
  gameVideos TEXT,
  gameDescription TEXT,
  gameTitle TEXT,
  gameShortTitle TEXT,
  gameShortDescription TEXT,
  markets TEXT,
  ratings TEXT,
  minAge TEXT,
  category TEXT,
  categories TEXT,
  isDemo BOOLEAN,
  hasAddOns BOOLEAN
);

CREATE TABLE IF NOT EXISTS localizations (
  id TEXT PRIMARY KEY,
  gameId TEXT,
  language TEXT,
  removed BOOLEAN,
  dateRemoved TIMESTAMP,
  dateCreated TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  dateChecked TIMESTAMP,
  dateModified TIMESTAMP,
  gameImages TEXT,
  gameVideos TEXT,
  gameDescription TEXT,
  gameTitle TEXT,
  gameShortTitle TEXT,
  gameShortDescription TEXT
);