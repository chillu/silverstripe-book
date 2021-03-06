<?php

/**
 * Swedish (Sweden) language pack
 * @package cms
 * @subpackage i18n
 */

i18n::include_locale_file('cms', 'en_US');

global $lang;

if(array_key_exists('sv_SE', $lang) && is_array($lang['sv_SE'])) {
	$lang['sv_SE'] = array_merge($lang['en_US'], $lang['sv_SE']);
} else {
	$lang['sv_SE'] = $lang['en_US'];
}

$lang['sv_SE']['AssetAdmin']['CHOOSEFILE'] = 'Välj fil';
$lang['sv_SE']['AssetAdmin']['CONTENTMODBY'] = 'Följande kan redigera innehållet';
$lang['sv_SE']['AssetAdmin']['CONTENTUSABLEBY'] = 'Följande kan använda innehållet';
$lang['sv_SE']['AssetAdmin']['DELETEDX'] = 'Raderade %s filer. %s';
$lang['sv_SE']['AssetAdmin']['FILESREADY'] = 'Filer klara för uppladdning:';
$lang['sv_SE']['AssetAdmin']['FOLDERDELETED'] = 'mappen raderad.';
$lang['sv_SE']['AssetAdmin']['FOLDERSDELETED'] = 'mappar raderade.';
$lang['sv_SE']['AssetAdmin']['MENUTITLE'] = 'Filer & bilder';
$lang['sv_SE']['AssetAdmin']['MOVEDX'] = 'Flyttade %s filer';
$lang['sv_SE']['AssetAdmin']['NEWFOLDER'] = 'Ny mapp';
$lang['sv_SE']['AssetAdmin']['NOTHINGTOUPLOAD'] = 'Det fanns inget att ladda upp';
$lang['sv_SE']['AssetAdmin']['NOWBROKEN'] = 'De här sidorna har nu brutna länkar:';
$lang['sv_SE']['AssetAdmin']['NOWBROKEN2'] = 'Deras ägare har blivit meddelade och de kommer att fixa sidorna.';
$lang['sv_SE']['AssetAdmin']['OWNER'] = 'Ägare';
$lang['sv_SE']['AssetAdmin']['SAVEDFILE'] = 'Sparade fil %s';
$lang['sv_SE']['AssetAdmin']['SAVEFOLDERNAME'] = 'Spara mappnamn';
$lang['sv_SE']['AssetAdmin']['THUMBSDELETED'] = 'Alla oanvända tumnaglar har raderats';
$lang['sv_SE']['AssetAdmin']['UPLOAD'] = 'Ladda upp filerna nedan';
$lang['sv_SE']['AssetAdmin']['UPLOADEDX'] = 'Laddade upp %s filer';
$lang['sv_SE']['AssetAdmin_left.ss']['CREATE'] = 'Skapa';
$lang['sv_SE']['AssetAdmin_left.ss']['DELETE'] = 'Radera';
$lang['sv_SE']['AssetAdmin_left.ss']['DELFOLDERS'] = 'Radera markerade mappar';
$lang['sv_SE']['AssetAdmin_left.ss']['ENABLEDRAGGING'] = 'Tillåt sortering genom att dra och släppa.';
$lang['sv_SE']['AssetAdmin_left.ss']['FOLDERS'] = 'Mappar';
$lang['sv_SE']['AssetAdmin_left.ss']['GO'] = 'Kör';
$lang['sv_SE']['AssetAdmin_left.ss']['SELECTTODEL'] = 'Markera de mappar du vill radera och klicka på knappen nedan';
$lang['sv_SE']['AssetAdmin_left.ss']['TOREORG'] = 'Du organiserar om dina mappar genom att dra runt dem som du önskar.';
$lang['sv_SE']['AssetAdmin_right.ss']['CHOOSEPAGE'] = 'Var god välj en sida till vänster.';
$lang['sv_SE']['AssetAdmin_right.ss']['WELCOME'] = 'Välkommen till';
$lang['sv_SE']['AssetAdmin_uploadiframe.ss']['PERMFAILED'] = 'Du har inte tillåtelse att ladda upp filer till den mappen.';
$lang['sv_SE']['AssetTableField']['CREATED'] = 'Först uppladdad';
$lang['sv_SE']['AssetTableField']['DIM'] = 'Dimensioner';
$lang['sv_SE']['AssetTableField']['DIMLIMT'] = 'Begränsa dimensionerna i popup-fönstret';
$lang['sv_SE']['AssetTableField']['EDITIMAGE'] = 'Redigera bilden';
$lang['sv_SE']['AssetTableField']['FILENAME'] = 'Filnamn';
$lang['sv_SE']['AssetTableField']['GALLERYOPTIONS'] = 'Galleri-alternativ';
$lang['sv_SE']['AssetTableField']['IMAGE'] = 'Bild';
$lang['sv_SE']['AssetTableField']['ISFLASH'] = 'Är ett Flash-dokument';
$lang['sv_SE']['AssetTableField']['LASTEDIT'] = 'Senast ändrad';
$lang['sv_SE']['AssetTableField']['NOLINKS'] = 'Det finns inga länkar till den här filen.';
$lang['sv_SE']['AssetTableField']['OWNER'] = 'Ägare';
$lang['sv_SE']['AssetTableField']['PAGESLINKING'] = 'Följande sidor länkar till den här filen:';
$lang['sv_SE']['AssetTableField']['POPUPHEIGHT'] = 'Popup-höjd';
$lang['sv_SE']['AssetTableField']['POPUPWIDTH'] = 'Popup-bredd';
$lang['sv_SE']['AssetTableField']['SIZE'] = 'Storlek';
$lang['sv_SE']['AssetTableField.ss']['DELFILE'] = 'Radera den här filen';
$lang['sv_SE']['AssetTableField.ss']['DRAGTOFOLDER'] = 'Dra till önskad mapp till vänster för att flytta filen';
$lang['sv_SE']['AssetTableField']['TITLE'] = 'Titel';
$lang['sv_SE']['AssetTableField']['TYPE'] = 'Typ';
$lang['sv_SE']['AssetTableField']['URL'] = 'URL';
$lang['sv_SE']['CMSLeft.ss']['DELPAGE'] = 'Radera sidor...';
$lang['sv_SE']['CMSLeft.ss']['DELPAGES'] = 'Radera markerade sidor';
$lang['sv_SE']['CMSLeft.ss']['GO'] = 'Kör';
$lang['sv_SE']['CMSLeft.ss']['NEWPAGE'] = 'Ny sida...';
$lang['sv_SE']['CMSLeft.ss']['SELECTPAGESDEL'] = 'Markera de sidor du vill radera och klicka sedan på knappen nedan';
$lang['sv_SE']['CMSLeft.ss']['SITECONT'] = 'Sidinnehåll';
$lang['sv_SE']['CMSMain']['ACCESS'] = 'Tillgång till %s i CMSet';
$lang['sv_SE']['CMSMain']['CANCEL'] = 'Avbryt';
$lang['sv_SE']['CMSMain']['CHOOSEREPORT'] = '(Välj en rapport)';
$lang['sv_SE']['CMSMain']['COMPARINGV'] = 'Du jämför versionerna #%d och #%d';
$lang['sv_SE']['CMSMain']['DELETEFP'] = 'Radera från den publicerade sajten';
$lang['sv_SE']['CMSMain']['EMAIL'] = 'E-post';
$lang['sv_SE']['CMSMain']['GO'] = 'Kör';
$lang['sv_SE']['CMSMain']['MENUTITLE'] = 'Sajt-innehåll';
$lang['sv_SE']['CMSMain']['METADESCOPT'] = 'Beskrivning';
$lang['sv_SE']['CMSMain']['METAKEYWORDSOPT'] = 'Nyckerord';
$lang['sv_SE']['CMSMain']['NEW'] = 'Ny';
$lang['sv_SE']['CMSMain']['NOCONTENT'] = 'Inget innehåll';
$lang['sv_SE']['CMSMain']['NOTHINGASSIGNED'] = 'Du har inget som är tilldelat till dig.';
$lang['sv_SE']['CMSMain']['NOWAITINGON'] = 'Du väntar inte på någon';
$lang['sv_SE']['CMSMain']['NOWBROKEN'] = 'Följande sidor har brutna länkar';
$lang['sv_SE']['CMSMain']['NOWBROKEN2'] = 'Ägarna har blivit underrättade och kommer att fixa de här sidorna.';
$lang['sv_SE']['CMSMain']['OK'] = 'OK';
$lang['sv_SE']['CMSMain']['PAGEDEL'] = '%d sida raderad';
$lang['sv_SE']['CMSMain']['PAGENOTEXISTS'] = 'Den här sidan finns inte';
$lang['sv_SE']['CMSMain']['PAGEPUB'] = '%d sidor publicerade';
$lang['sv_SE']['CMSMain']['PAGESDEL'] = '%d sidor raderade';
$lang['sv_SE']['CMSMain']['PAGESPUB'] = '%d sidor publicerade';
$lang['sv_SE']['CMSMain']['PAGETYPEOPT'] = 'Sidtyp';
$lang['sv_SE']['CMSMain']['PRINT'] = 'Skriv ut';
$lang['sv_SE']['CMSMain']['PUBALLFUN'] = '"Publicera alla"-funktion';
$lang['sv_SE']['CMSMain']['PUBALLFUN2'] = 'Ett klick på den här knappen är samma sak som att gå till varje sida och klicka på "Publicera". Tanken är att den ska användas efter stora uppdateringar av innehållet på sidan, som när den skapas.';
$lang['sv_SE']['CMSMain']['PUBPAGES'] = 'Klar: %d sidor publicerade';
$lang['sv_SE']['CMSMain']['REMOVEDFD'] = 'Bortagen från utkast-sajten';
$lang['sv_SE']['CMSMain']['REMOVEDPAGE'] = 'Tog bort \'%s\' ';
$lang['sv_SE']['CMSMain']['REPORT'] = 'Rapport';
$lang['sv_SE']['CMSMain']['RESTORE'] = 'Återskapa';
$lang['sv_SE']['CMSMain']['RESTORED'] = 'Återställningen av \'%s\' lyckades';
$lang['sv_SE']['CMSMain']['ROLLBACK'] = 'Återställ den här versionen';
$lang['sv_SE']['CMSMain']['ROLLEDBACKPUB'] = 'Återskapade den publicerade versionen. Nytt versionsnummer är #%d';
$lang['sv_SE']['CMSMain']['ROLLEDBACKVERSION'] = 'Återskapade version #%d. Nytt versionsnummer är #%d';
$lang['sv_SE']['CMSMain']['SAVE'] = 'Spara';
$lang['sv_SE']['CMSMain']['SENTTO'] = 'Skickat till %s %s för godkännande';
$lang['sv_SE']['CMSMain']['STATUSOPT'] = 'Status';
$lang['sv_SE']['CMSMain']['TOTALPAGES'] = 'Totalt antal sidor';
$lang['sv_SE']['CMSMain']['VERSIONSNOPAGE'] = 'Kan inte hitta sida #%d';
$lang['sv_SE']['CMSMain']['VIEWING'] = 'Du tittar på version #%d, skapad %s';
$lang['sv_SE']['CMSMain']['VISITRESTORE'] = 'gå till restorepage/(ID)';
$lang['sv_SE']['CMSMain']['WAITINGON'] = 'Du väntar på att andra ska arbeta på de här <b>%d</b> sidorna.';
$lang['sv_SE']['CMSMain']['WORKTODO'] = 'Du har arbete att göra på dessa <b>%d</b> sidor.';
$lang['sv_SE']['CMSMain_dialog.ss']['BUTTONNOTFOUND'] = 'Kunde inte hitta knappens namn';
$lang['sv_SE']['CMSMain_left.ss']['ADDEDNOTPUB'] = 'Tillagd till utkast-sajten och inte publicerad än';
$lang['sv_SE']['CMSMain_left.ss']['ADDSEARCHCRITERIA'] = 'Lägg till kritierie..';
$lang['sv_SE']['CMSMain_left.ss']['BATCHACTIONS'] = 'Ändra flera';
$lang['sv_SE']['CMSMain_left.ss']['CHANGED'] = 'ändrad';
$lang['sv_SE']['CMSMain_left.ss']['CLOSEBOX'] = 'klicka för att stänga den här boxen';
$lang['sv_SE']['CMSMain_left.ss']['COMMENTS'] = 'Kommentarer';
$lang['sv_SE']['CMSMain_left.ss']['COMPAREMODE'] = 'Jämför (klicka på 2 nedan)';
$lang['sv_SE']['CMSMain_left.ss']['CREATE'] = 'Skapa';
$lang['sv_SE']['CMSMain_left.ss']['DEL'] = 'raderad';
$lang['sv_SE']['CMSMain_left.ss']['DELETECONFIRM'] = 'Radera markerade sidor';
$lang['sv_SE']['CMSMain_left.ss']['DELETEDSTILLLIVE'] = 'Raderad från utkast-sajten men finns fortfarande på den live-sajten';
$lang['sv_SE']['CMSMain_left.ss']['EDITEDNOTPUB'] = 'Redigerad på utkast-sajten men inte publicerad än';
$lang['sv_SE']['CMSMain_left.ss']['EDITEDSINCE'] = 'Ändrade sedean';
$lang['sv_SE']['CMSMain_left.ss']['ENABLEDRAGGING'] = 'Tillåt dra &amp; släpp-organisering';
$lang['sv_SE']['CMSMain_left.ss']['GO'] = 'Kör';
$lang['sv_SE']['CMSMain_left.ss']['KEY'] = 'Nyckel';
$lang['sv_SE']['CMSMain_left.ss']['NEW'] = 'ny';
$lang['sv_SE']['CMSMain_left.ss']['OPENBOX'] = 'klicka för att öppna den här boxen';
$lang['sv_SE']['CMSMain_left.ss']['PAGEVERSIONH'] = 'Sidversionshistorik';
$lang['sv_SE']['CMSMain_left.ss']['PUBLISHCONFIRM'] = 'Publicera de markerade sidorna';
$lang['sv_SE']['CMSMain_left.ss']['SEARCH'] = 'Sök';
$lang['sv_SE']['CMSMain_left.ss']['SEARCHTITLE'] = 'Sök genom URL, Titel, Menytitel , &amp; Innehåll';
$lang['sv_SE']['CMSMain_left.ss']['SELECTPAGESACTIONS'] = 'Markera de sidor du vill ändra och klicka sedan på en funktion';
$lang['sv_SE']['CMSMain_left.ss']['SELECTPAGESDUP'] = 'Markera de sidor du vill duplicera, om deras barn också ska dupliceras, och var du vill att kopiorna ska placeras';
$lang['sv_SE']['CMSMain_left.ss']['SHOWONLYCHANGED'] = 'Visa bara ändrade sidor';
$lang['sv_SE']['CMSMain_left.ss']['SHOWUNPUB'] = 'Visa opublicerade versioner';
$lang['sv_SE']['CMSMain_left.ss']['SITECONTENT TITLE'] = 'Sajt-innehåll och struktur';
$lang['sv_SE']['CMSMain_left.ss']['SITEREPORTS'] = 'Sajt-rapporter';
$lang['sv_SE']['CMSMain_left.ss']['TASKLIST'] = 'Uppgiftslista';
$lang['sv_SE']['CMSMain_left.ss']['WAITINGON'] = 'Väntar på';
$lang['sv_SE']['CMSMain_right.ss']['ANYMESSAGE'] = 'Har du något meddelande till din redaktör?';
$lang['sv_SE']['CMSMain_right.ss']['CHOOSEPAGE'] = 'Var god välj en sida till vänster.';
$lang['sv_SE']['CMSMain_right.ss']['LOADING'] = 'laddar...';
$lang['sv_SE']['CMSMain_right.ss']['MESSAGE'] = 'Meddelande';
$lang['sv_SE']['CMSMain_right.ss']['SENDTO'] = 'Skicka till';
$lang['sv_SE']['CMSMain_right.ss']['STATUS'] = 'Status';
$lang['sv_SE']['CMSMain_right.ss']['SUBMIT'] = 'Skicka in för godkännande';
$lang['sv_SE']['CMSMain_right.ss']['WELCOMETO'] = 'Välkomment till';
$lang['sv_SE']['CMSMain_versions.ss']['AUTHOR'] = 'Författare';
$lang['sv_SE']['CMSMain_versions.ss']['NOTPUB'] = 'Inte publicerad';
$lang['sv_SE']['CMSMain_versions.ss']['PUBR'] = 'Utgivare';
$lang['sv_SE']['CMSMain_versions.ss']['UNKNOWN'] = 'Okänd';
$lang['sv_SE']['CMSMain_versions.ss']['WHEN'] = 'När';
$lang['sv_SE']['CMSRight.ss']['CHOOSEPAGE'] = 'Var god välj en sida till vänster.';
$lang['sv_SE']['CMSRight.ss']['ECONTENT'] = 'Redigera innehåll';
$lang['sv_SE']['CMSRight.ss']['WELCOMETO'] = 'Välkommen till';
$lang['sv_SE']['CommentAdmin']['ACCEPT'] = 'Acceptera';
$lang['sv_SE']['CommentAdmin']['APPROVED'] = 'Accepterade %s kommentarer.';
$lang['sv_SE']['CommentAdmin']['APPROVEDCOMMENTS'] = 'Godkända kommentarer';
$lang['sv_SE']['CommentAdmin']['AUTHOR'] = 'Författare';
$lang['sv_SE']['CommentAdmin']['COMMENT'] = 'Kommentar';
$lang['sv_SE']['CommentAdmin']['COMMENTS'] = 'Kommentarer';
$lang['sv_SE']['CommentAdmin']['COMMENTSAWAITINGMODERATION'] = 'Kommentarer som väntar på att modereras';
$lang['sv_SE']['CommentAdmin']['DATEPOSTED'] = 'Skrivet den';
$lang['sv_SE']['CommentAdmin']['DELETE'] = 'Radera';
$lang['sv_SE']['CommentAdmin']['DELETEALL'] = 'Radera alla';
$lang['sv_SE']['CommentAdmin']['DELETED'] = 'Raderade %s kommentarer.';
$lang['sv_SE']['CommentAdmin']['MARKASNOTSPAM'] = 'Avmarkera som skräp';
$lang['sv_SE']['CommentAdmin']['MARKEDSPAM'] = 'Märkte %s kommentarer som skräp.';
$lang['sv_SE']['CommentAdmin']['MENUTITLE'] = 'Kommentarer';
$lang['sv_SE']['CommentAdmin']['NAME'] = 'Namn';
$lang['sv_SE']['CommentAdmin']['PAGE'] = 'Sida';
$lang['sv_SE']['CommentAdmin']['SPAM'] = 'Skräp';
$lang['sv_SE']['CommentAdmin']['SPAMMARKED'] = 'Märk som skräp';
$lang['sv_SE']['CommentAdmin_left.ss']['COMMENTS'] = 'Kommentarer';
$lang['sv_SE']['CommentAdmin_right.ss']['WELCOME1'] = 'Välkommen till';
$lang['sv_SE']['CommentAdmin_SiteTree.ss']['APPROVED'] = 'Godkänd';
$lang['sv_SE']['CommentAdmin_SiteTree.ss']['AWAITMODERATION'] = 'Väntar på granskning';
$lang['sv_SE']['CommentAdmin_SiteTree.ss']['COMMENTS'] = 'Kommentarer';
$lang['sv_SE']['CommentAdmin_SiteTree.ss']['SPAM'] = 'Spam';
$lang['sv_SE']['CommentList.ss']['NOCOM'] = 'Det finns inga kommentarer på den här sidan.';
$lang['sv_SE']['CommentTableField']['FILTER'] = 'Filtrera';
$lang['sv_SE']['CommentTableField']['SEARCH'] = 'Sök';
$lang['sv_SE']['CommentTableField.ss']['APPROVE'] = 'godkänn';
$lang['sv_SE']['CommentTableField.ss']['DELETE'] = 'radera';
$lang['sv_SE']['CommentTableField.ss']['EDIT'] = 'ändra';
$lang['sv_SE']['ComplexTableField']['CLOSEPOPUP'] = 'Stäng popup';
$lang['sv_SE']['GenericDataAdmin']['CHOOSECRIT'] = 'Var god något sökkriterie och klicka på \'sök\'.';
$lang['sv_SE']['GenericDataAdmin']['CREATE'] = 'Skapa';
$lang['sv_SE']['GenericDataAdmin']['EXPORTCSV'] = 'Exportera som CSV';
$lang['sv_SE']['GenericDataAdmin']['FOUND'] = 'hittade:';
$lang['sv_SE']['GenericDataAdmin']['SAVED'] = 'Sparad';
$lang['sv_SE']['GenericDataAdmin_left.ss']['SEARCHRESULTS'] = 'Sökresultat';
$lang['sv_SE']['GenericDataAdmin_right.ss']['WELCOME1'] = 'Välkommen till';
$lang['sv_SE']['ImageEditor.ss']['CANCEL'] = 'avbryt';
$lang['sv_SE']['ImageEditor.ss']['CROP'] = 'beskär';
$lang['sv_SE']['ImageEditor.ss']['HEIGHT'] = 'höjd';
$lang['sv_SE']['ImageEditor.ss']['REDO'] = 'gör om';
$lang['sv_SE']['ImageEditor.ss']['ROT'] = 'rotera';
$lang['sv_SE']['ImageEditor.ss']['SAVE'] = 'Spara&nbsp;bild';
$lang['sv_SE']['ImageEditor.ss']['UNDO'] = 'ångra';
$lang['sv_SE']['ImageEditor.ss']['UNTITLED'] = 'Obetitlat dokument';
$lang['sv_SE']['ImageEditor.ss']['WIDTH'] = 'bredd';
$lang['sv_SE']['LeftAndMain']['CHANGEDURL'] = 'URL ändrad till \'%s\'';
$lang['sv_SE']['LeftAndMain']['HELP'] = 'Hjälp';
$lang['sv_SE']['LeftAndMain']['PAGETYPE'] = 'Sidtyp';
$lang['sv_SE']['LeftAndMain']['PERMAGAIN'] = 'Du har blivit utloggad. Du kan ange användarnamn och lösenord för att logga in igen';
$lang['sv_SE']['LeftAndMain']['PERMALREADY'] = 'Tyvärr så har du inte tillträde till den delen av CMSet. Om du vill logga in med en annan användare kan du göra det nedan';
$lang['sv_SE']['LeftAndMain']['PERMDEFAULT'] = 'Var god välj en inloggningsmetod och fyll i dina uppgifter för att logga in i CMSet.';
$lang['sv_SE']['LeftAndMain']['PLEASESAVE'] = 'Var god spara sidan. Den här sidan kan inte uppdateras för den har inte sparats än.';
$lang['sv_SE']['LeftAndMain']['REQUESTERROR'] = 'Fel i begäran';
$lang['sv_SE']['LeftAndMain']['SAVED'] = 'sparad';
$lang['sv_SE']['LeftAndMain']['SAVEDUP'] = 'Sparad';
$lang['sv_SE']['LeftAndMain']['SITECONTENTLEFT'] = 'Sajt-innehåll';
$lang['sv_SE']['LeftAndMain.ss']['APPVERSIONTEXT1'] = 'Det här är';
$lang['sv_SE']['LeftAndMain.ss']['APPVERSIONTEXT2'] = 'versionen du kör just nu, tekniskt sätt är det CVS-grenen';
$lang['sv_SE']['LeftAndMain.ss']['ARCHS'] = 'Arkiverad sajt';
$lang['sv_SE']['LeftAndMain.ss']['DRAFTS'] = 'Utkast-sajt';
$lang['sv_SE']['LeftAndMain.ss']['EDIT'] = 'Redigera';
$lang['sv_SE']['LeftAndMain.ss']['EDITPROFILE'] = 'Profil';
$lang['sv_SE']['LeftAndMain.ss']['LOADING'] = 'Laddar...';
$lang['sv_SE']['LeftAndMain.ss']['LOGGEDINAS'] = 'Inloggad som';
$lang['sv_SE']['LeftAndMain.ss']['LOGOUT'] = 'Logga ut ';
$lang['sv_SE']['LeftAndMain.ss']['PUBLIS'] = 'Publicerad sajt';
$lang['sv_SE']['LeftAndMain.ss']['REQUIREJS'] = 'JavaScript måste vara aktiverat.';
$lang['sv_SE']['LeftAndMain.ss']['SSWEB'] = 'Silverstripes websajt';
$lang['sv_SE']['LeftAndMain.ss']['VIEWPAGEIN'] = 'Sidvy:';
$lang['sv_SE']['LeftAndMain']['STATUSTO'] = 'Status ändrad till \'%s\'';
$lang['sv_SE']['LeftAndMain']['TREESITECONTENT'] = 'Sajt-innehåll';
$lang['sv_SE']['MemberList']['ADD'] = 'Lägg till';
$lang['sv_SE']['MemberList']['ASC'] = 'Stigande';
$lang['sv_SE']['MemberList']['DESC'] = 'Fallande';
$lang['sv_SE']['MemberList']['EMAIL'] = 'E-post';
$lang['sv_SE']['MemberList']['FILTERBYG'] = 'Filtrera per grupp';
$lang['sv_SE']['MemberList']['FN'] = 'Förnamn';
$lang['sv_SE']['MemberList']['ORDERBY'] = 'Ordna efter';
$lang['sv_SE']['MemberList']['PASSWD'] = 'Lösenord';
$lang['sv_SE']['MemberList']['SEARCH'] = 'Sök';
$lang['sv_SE']['MemberList']['SN'] = 'Efternamn';
$lang['sv_SE']['MemberList.ss']['FILTER'] = 'Filter';
$lang['sv_SE']['MemberList_Table.ss']['EMAIL'] = 'E-postadress';
$lang['sv_SE']['MemberList_Table.ss']['FN'] = 'Förnamn';
$lang['sv_SE']['MemberList_Table.ss']['PASSWD'] = 'Lösenord';
$lang['sv_SE']['MemberList_Table.ss']['SN'] = 'Efternamn';
$lang['sv_SE']['MemberTableField']['ADD'] = 'Lägg till';
$lang['sv_SE']['MemberTableField']['ADDEDTOGROUP'] = 'La till medlem till grupp';
$lang['sv_SE']['MemberTableField']['ASC'] = 'Stigande';
$lang['sv_SE']['MemberTableField']['DESC'] = 'Fallande';
$lang['sv_SE']['MemberTableField']['EMAIL'] = 'E-post';
$lang['sv_SE']['MemberTableField']['FILTER'] = 'Filtrera';
$lang['sv_SE']['MemberTableField']['FIRSTNAME'] = 'Förnamn';
$lang['sv_SE']['MemberTableField']['ORDERBY'] = 'Ordna efter';
$lang['sv_SE']['MemberTableField']['SEARCH'] = 'Sök';
$lang['sv_SE']['MemberTableField.ss']['ADDNEW'] = 'Ny';
$lang['sv_SE']['MemberTableField.ss']['DELETEMEMBER'] = 'Radera medlem';
$lang['sv_SE']['MemberTableField.ss']['EDITMEMBER'] = 'Redigera medlem';
$lang['sv_SE']['MemberTableField.ss']['SHOWMEMBER'] = 'Visa medlem';
$lang['sv_SE']['MemberTableField']['SURNAME'] = 'Efternamn';
$lang['sv_SE']['ModelAdmin']['ADDBUTTON'] = 'Lägg till';
$lang['sv_SE']['ModelAdmin']['CLASSTYPE'] = 'Typ';
$lang['sv_SE']['ModelAdmin']['CLEAR_SEARCH'] = 'Rensa sökning';
$lang['sv_SE']['ModelAdmin']['DELETE'] = 'Ta bort';
$lang['sv_SE']['ModelAdmin']['GOBACK'] = 'Tillbaka';
$lang['sv_SE']['ModelAdmin']['NOIMPORT'] = 'Inget att importera';
$lang['sv_SE']['ModelAdmin']['SAVE'] = 'Spara';
$lang['sv_SE']['ModelAdmin']['SEARCHRESULTS'] = 'Sökresultat';
$lang['sv_SE']['ModelAdmin']['SELECTALL'] = 'välj alla';
$lang['sv_SE']['ModelAdmin']['SELECTNONE'] = 'välj ingen';
$lang['sv_SE']['ModelAdmin_ImportSpec.ss']['IMPORTSPECFIELDS'] = 'Databas-kolumner';
$lang['sv_SE']['ModelAdmin_ImportSpec.ss']['IMPORTSPECLINK'] = 'Visa specifikationer för %s';
$lang['sv_SE']['ModelAdmin_ImportSpec.ss']['IMPORTSPECRELATIONS'] = 'Relationer';
$lang['sv_SE']['ModelAdmin_ImportSpec.ss']['IMPORTSPECTITLE'] = 'Specifikationer för %s';
$lang['sv_SE']['ModelAdmin_left.ss']['ADD_TAB_HEADER'] = 'Lägg till';
$lang['sv_SE']['ModelAdmin_left.ss']['IMPORT_TAB_HEADER'] = 'Importera';
$lang['sv_SE']['PageComment']['COMMENTBY'] = 'Kommenterad av \'%s\' på %s';
$lang['sv_SE']['PageCommentInterface']['SPAMQUESTION'] = 'Spam-skyddsfråga: %s';
$lang['sv_SE']['PageCommentInterface.ss']['COMMENTS'] = 'Kommentarer';
$lang['sv_SE']['PageCommentInterface.ss']['NEXT'] = 'nästa';
$lang['sv_SE']['PageCommentInterface.ss']['NOCOMMENTSYET'] = 'Ingen har kommenterat ännu';
$lang['sv_SE']['PageCommentInterface.ss']['POSTCOM'] = 'Skicka din kommentar';
$lang['sv_SE']['PageCommentInterface.ss']['PREV'] = 'föregående';
$lang['sv_SE']['PageCommentInterface']['YOURCOMMENT'] = 'Kommentarer';
$lang['sv_SE']['PageCommentInterface']['YOURNAME'] = 'Ditt namn';
$lang['sv_SE']['PageCommentInterface_Controller']['SPAMQUESTION'] = 'Spam-skyddsfråga: %s';
$lang['sv_SE']['PageCommentInterface_Form']['AWAITINGMODERATION'] = 'Din kommentar har tagits emot och väntar på att granskas.';
$lang['sv_SE']['PageCommentInterface_Form']['MSGYOUPOSTED'] = 'Meddelandet du skickade var:';
$lang['sv_SE']['PageCommentInterface_Form']['SPAMDETECTED'] = 'Spam upptäckt!!';
$lang['sv_SE']['PageCommentInterface_singlecomment.ss']['APPROVE'] = 'godkänn kommentar';
$lang['sv_SE']['PageCommentInterface_singlecomment.ss']['ISNTSPAM'] = 'det här är inte skräp';
$lang['sv_SE']['PageCommentInterface_singlecomment.ss']['ISSPAM'] = 'det här är skräp';
$lang['sv_SE']['PageCommentInterface_singlecomment.ss']['PBY'] = 'Skrivet av';
$lang['sv_SE']['PageCommentInterface_singlecomment.ss']['REMCOM'] = 'ta bort den här kommentaren';
$lang['sv_SE']['ReportAdmin_left.ss']['REPORTS'] = 'Rapporter';
$lang['sv_SE']['ReportAdmin_right.ss']['WELCOME1'] = 'Välkommen till';
$lang['sv_SE']['ReportAdmin_right.ss']['WELCOME2'] = 'rapport-avdelning. Var god välj en rapport till vänster.';
$lang['sv_SE']['ReportAdmin_SiteTree.ss']['REPORTS'] = 'Rapporter';
$lang['sv_SE']['SecurityAdmin']['ADDMEMBER'] = 'Lägg till medlem';
$lang['sv_SE']['SecurityAdmin']['MENUTITLE'] = 'Säkerhet';
$lang['sv_SE']['SecurityAdmin']['NEWGROUP'] = 'Ny grupp';
$lang['sv_SE']['SecurityAdmin']['SAVE'] = 'Spara';
$lang['sv_SE']['SecurityAdmin']['SGROUPS'] = 'Säkerhetsgrupp';
$lang['sv_SE']['SecurityAdmin_left.ss']['CREATE'] = 'Skapa';
$lang['sv_SE']['SecurityAdmin_left.ss']['DEL'] = 'Radera';
$lang['sv_SE']['SecurityAdmin_left.ss']['DELGROUPS'] = 'Radera de markerade grupperna';
$lang['sv_SE']['SecurityAdmin_left.ss']['ENABLEDRAGGING'] = 'Tillåt sortering genom att dra och släppa.';
$lang['sv_SE']['SecurityAdmin_left.ss']['GO'] = 'Kör';
$lang['sv_SE']['SecurityAdmin_left.ss']['SECGROUPS'] = 'Säkerhetsgrupper';
$lang['sv_SE']['SecurityAdmin_left.ss']['SELECT'] = 'Markera de sidor du vill radera och klicka på knappen nedan';
$lang['sv_SE']['SecurityAdmin_left.ss']['TOREORG'] = 'För att omorganisera din sajt är det bara att dra runt sidorna som du önskar.';
$lang['sv_SE']['SecurityAdmin_right.ss']['WELCOME1'] = 'Välkommen till';
$lang['sv_SE']['SecurityAdmin_right.ss']['WELCOME2'] = 'säkerhetssektion. Var god och välj en grupp till vänster.';
$lang['sv_SE']['SideReport']['EMPTYPAGES'] = 'Tomma sidor';
$lang['sv_SE']['SideReport']['LAST2WEEKS'] = 'Sidor som har redigerats de senaste 2 veckorna';
$lang['sv_SE']['SideReport']['REPEMPTY'] = '%s-rapporten är tom.';
$lang['sv_SE']['SideReport']['TODO'] = 'Att göra';
$lang['sv_SE']['StaticExporter']['BASEURL'] = 'Bas-URL';
$lang['sv_SE']['StaticExporter']['EXPORTTO'] = 'Exportera till den mappen';
$lang['sv_SE']['StaticExporter']['FOLDEREXPORT'] = 'Mapp att exportera till';
$lang['sv_SE']['StaticExporter']['ONETHATEXISTS'] = 'Var god och ange ett mappnamn som existerar';
$lang['sv_SE']['TaskList.ss']['BY'] = 'av';
$lang['sv_SE']['ThumbnailStripField']['NOIMAGESFOUND'] = 'Inga bilder hittades i';
$lang['sv_SE']['ThumbnailStripField']['NOTAFOLDER'] = 'Det är ingen mapp';
$lang['sv_SE']['ThumbnailStripField.ss']['CHOOSEFOLDER'] = '(Välj en mapp ovan)';
$lang['sv_SE']['ViewArchivedEmail.ss']['CANACCESS'] = 'Du kan komma åt den arkiverade sajten på den här länken:';
$lang['sv_SE']['ViewArchivedEmail.ss']['HAVEASKED'] = 'Du har frågat efter att få se innehållet på vår sajt från';
$lang['sv_SE']['WaitingOn.ss']['ATO'] = 'tilldelad till';
$lang['sv_SE']['WidgetAreaEditor.ss']['TOADD'] = 'För att lägga till widgets, dra dem hit från fältet till vänster.';
$lang['sv_SE']['WidgetEditor.ss']['DELETE'] = 'Ta bort';

?>