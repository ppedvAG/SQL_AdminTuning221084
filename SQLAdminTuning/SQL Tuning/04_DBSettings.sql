--DB Settings


-- Initialgr��e der Dateien.. Lebenserwartung (3 Jahre)

--Wachstumsrate nicht 64MB

--Logfile: --> VLF
--nicht zuviele VLF (3000 bis 6000)

--Methode: RecModel Simple--> Startgr��e 1 MB
----> Startgr��e  1/3 der Datendateien setzen-->
--> Vergr��erung auf 1024 MB
--> RecModel Full--> Vollsicherung





dbcc loginfo()


--Zeilenversionierung
--evtl massive Traffixc auf tempdb
--daf�r hindert ein �ndern das Lesen nicht mehr ..
--der Leser erh�lt die "alten" noch ng�ltigen DAten, bis der beim Updater der Commit ausgeef�hrt wurde..eigtl korrektes verhalten



USE [master]
GO
--Standardverhalten von Abfragen wird von READ COMMITTED auf Snapshot ge�ndert
ALTER DATABASE [Northwind] SET READ_COMMITTED_SNAPSHOT ON WITH NO_WAIT
GO
--Zeilenversionierung aktivieren
ALTER DATABASE [Northwind] SET RECOVERY FULL WITH NO_WAIT
GO

GO
ALTER DATABASE [Northwind] SET ALLOW_SNAPSHOT_ISOLATION ON
GO

--

