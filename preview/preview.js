(async () => {
  const client = await initSqlJs({ locateFile: (file) => `https://cdn.jsdelivr.net/npm/sql.js@latest/dist/${file}` });
  const data = await fetch("https://github.com/riokoe/xbox-game-pass-database/raw/refs/heads/main/database/data.sql").then(res => res.arrayBuffer());
  const db = new client.Database(new Uint8Array(data));
  const [games] = db.exec("SELECT * FROM games LIMIT 50");
  const [localizations] = db.exec("SELECT * FROM localizations LIMIT 50");

  const tableGames = new SimpleDataTable(document.getElementById("games"), { readonly: true });
  tableGames.setHeaders(games.columns);
  tableGames.load(games.values);
  tableGames.render();

  const tableLocalizations = new SimpleDataTable(document.getElementById("localizations"), { readonly: true });
  tableLocalizations.setHeaders(localizations.columns);
  tableLocalizations.load(localizations.values);
  tableLocalizations.render();
})();