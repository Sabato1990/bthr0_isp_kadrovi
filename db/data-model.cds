namespace com.isp;

entity TabZaposlenJe_INPUT {
    key SifZaposlen : Integer;
    key SifRadnik   : Integer;
        DatumOd     : String(11);
        DatumDo     : String(11);
}

entity TabUgovor_INPUT {
    key SifUgovor              : Integer;
    key SifAngazovaniPoUgovoru : Integer;
        DatumOd                : String(11);
        DatumDo                : String(11);
}

entity TabIstorijaStaza_INPUT {
    key SifIstorijaStaza : Integer;
    key SifRadnik        : Integer;
        DatumOd          : String(11);
        DatumDo          : String(11);
}

entity TabRazniDogadjaji_INPUT {
    key SifRazniDogadjaji : Integer;
    key SifRadnik         : Integer;
        SifVrstaDogadjaja : Integer;
        DatumOd           : String(11);
        DatumDo           : String(11);
}

entity TabVezaLokacijaOD_INPUT {
    key SifVezaLokacijaOd   : Integer;
        SifLokacija         : Integer;
        SifOrganizacioniDeo : Integer;
        VaziOd              : String(11);
        VaziDo              : String(11);
}

entity TabPozicija_INPUT {
    key SifPozicija         : Integer;
        SifOrganizacioniDeo : Integer;
        SifRadnoMesto       : Integer;
        VaziOD              : String(11);
        VaziDO              : String(11);
}

entity TabRadnik { //Tabella PerPersonal
    key SifRadnik            : Integer;
        SifOpstinaRodjenja   : String(255);
        SifNacionalnost      : Integer;
        SifDrzavljanstvo     : Integer;
        Ime                  : String(255);
        Prezime              : String(255);
        ImeRoditelja         : String(255);
        Pol                  : String(1);
        JMBG                 : String(255);
        Mesto                : String(255);
        UlicaIBroj           : String(255);
        PostBroj             : String(255);
        DatumRodjenja        : String(255);
        MestoRodjenja        : String(255);
        SifDrzavaRodjenja    : Integer;
        DatumUpisa           : String(255);
        DevojackoPrezime     : String(255);
        BracniStatus         : Integer;
        Veroispovest         : Integer;
        LKBroj               : String(255);
        LKMesto              : String(255);
        PasosBroj            : String(255);
        PasosMesto           : String(255);
        Vozacka              : String(1);
        TelKucni             : String(255);
        TelMobilni           : String(255);
        TelPosao             : String(255);
        MobilniPriv          : String(255);
        MailLicni1           : String(255);
        MailLicni2           : String(255);
        MailPoslovni         : String(255);
        ZSSIF                : Integer;
        NKSIF                : Integer;
        ZSIF                 : String(255);
        MaticniBroj          : Integer;
        PasosDo              : String(255);
        SifOpstinaStanovanja : Integer;
        SifPosta             : Integer;
        Invalidnost          : Integer;
        InvalidnostOd        : String(255);
        SamohraniRoditelj    : Integer;
        SifVerskiPraznik     : Integer;
    key Company              : String(255);
        Operation_type       : String(255);
}

entity TabZaposlenje { //Tabella informazioni sull'impiego
    key SifRadnik           : Integer;
    key DatumOd             : String(11);
        //key SifZaposlen         : Integer;
        SifRadnoMesto       : Integer;
        SifOrganizacioniDeo : Integer;
        SifPozicija         : Integer;
        SifOsnovRada        : Integer;
        SifStatusZaposlenja : Integer;
        DatumDo             : String(11);
        Dan                 : Integer;
        Mes                 : Integer;
        God                 : Integer;
        StartEnd            : String(1);
    key Company             : String(255);
        Operation_type      : String(255);
}

entity TabAngazovaniPoUgovoru { //TABELLA PER LAVORATORI ESTERNI
    key SifAngazovaniPoUgovoru : Integer;
        SifOpstinaStanovanja   : Integer;
        Ime                    : String(255);
        Prezime                : String(255);
        Pol                    : String(1);
        JMBG                   : String(255);
        UlicaIBroj             : String(255);
        PostBroj               : String(255);
        Mesto                  : String(255);
        DatumRodjenja          : String(11);
        TelKucni               : String(255);
        MobilniPriv            : String(255);
        TelMobilni             : String(255);
        TelPosao               : String(255);
        MailLicni1             : String(255);
        MailLicni2             : String(255);
        LKBroj                 : String(255);
        WINUSER                : String(255);
        Napomena               : String(400);
        StatusAngazovanog      : String(255);
        SifPosta               : Integer;
        DatumUpisa             : String(11);
    key Company                : String(255);
        Operation_type         : String(255);
}

entity TabUgovor { //Tabella informazioni sull'impiego dei lavoratori esterni
    key SifAngazovaniPoUgovoru : Integer;
        NacinSklapanja         : String(400);
        VrstaUgovora           : String(400);
    key DatumOd                : String(11);
        DatumDo                : String(11);
        OpisPoslova            : String(400);
        DatumUpisa             : String(11);
        SifOrganizacioniDeo    : Integer;
        NazivUgovora           : String(400);
        BrojUgovora            : String(255);
        UgovorBan              : String(255);
    key Company                : String(255);
        Operation_type         : String(255);
}

entity TabIstorijaStaza {
    key SifRadnik      : Integer;
    key DatumOd        : String(11);
        DatumDo        : String(11);
        Firma          : String(255);
        Sediste        : String(255);
        Godina         : Integer;
        Meseci         : Integer;
        Dana           : Integer;
    key Company        : String(255);
        Operation_type : String(255);
}

entity TabRazniDogadjaji {
    key SifRadnik         : Integer;
    key SifVrstaDogadjaja : Integer;
    key DatumOd           : String(11);
        DatumIzvrsenja    : String(11);
        DatumIzricanja    : String(11);
        Vrsta             : String(255);
        OpisDogadjaja     : String(400);
        DatumDo           : String(11);
    key Company           : String(255);
        Operation_type    : String(255);
}

entity TabBrojDokumenta {
    key SifBrojDokumenta   : Integer;
        SifRadnik          : Integer;
        //key Datum              : String(11);
        SifTabela          : Integer;
        Tabela             : String(255);
        BrojDokumenta      : String(255);
        SifDokument        : Integer;
        DokumentZaposlenje : String(255);
        //SifVrstaDokumenta  : String(100);
        //NazivDokumenta     : String(100); nome del documento
    key Company            : String(255);
        Operation_type     : String(255);
}

entity tabRodbina {
    key SifRodbina     : Integer;
        SifRadnik      : Integer;
        Ime            : String(255);
        Prezime        : String(255);
        Pol            : String(1);
        SifSrodstvo    : Integer;
        DatumRodjenja  : String(11);
        JMBGRodbina    : String(255);
    key Company        : String(255);
        Operation_type : String(255);
}

entity tabRadnoMesto {
    key SifRadnoMesto          : Integer;
        Naziv                  : String(255);
        NazivEngleski          : String(255);
        SifraRadnogMesta       : String(255);
        StrucnaSprema          : String(255);
        RadnoIskustvo          : String(255);
        PosebniUslovi          : String(255);
        OpisPoslova            : String(255);
        PosebneDuznosti        : String(255);
        VaziOD                 : String(11); //forse van tolte
        VaziDO                 : String(11);
        Aktivno                : String(1);
        SifStepenStrucnaSprema : Integer;
        SifraPodgrupa          : Integer;
        RadUSmenama            : String(1); //String(1);
    key Company                : String(255);
        SifNivoRukovodjenja    : String(255); 
        Operation_type         : String(255);
        key Start_Date_SF          : Date;
}

entity TabOrganizacioniDeo {
    key SifOrganizacioniDeo : Integer;
        SifraPravilnik      : String(255);
        SifraOJ             : String(255);
        Oznaka              : String(255);
        Naziv               : String(300); //aggiungi in analisi
        NazivEngleski       : String(255);
        Napomena            : String(400);
        Aktivan             : Boolean; //aggiungi in analisi
        NadredjeniOD        : Integer;
        Poreklo             : String(255); //aggiungi in analisi
        RadUSmenama         : Boolean;
        SifRadnoMesto       : Integer; //aggiungi in analisi
        SifPozicija         : Integer; //aggiungi in analisi
    key Company             : String(255);
        Operation_type      : String(255);
        VaziOD              : String(11); //forse van tolte
        VaziDO              : String(11);
        SifraSektor         : String(255);
        SifraOdeljenje      : String(255);
        SifraSluzba         : String(255);
        SifraOdsek          : String(255);
    key Start_Date_SF       : Date;
}

entity TabPozicija {
    key SifPozicija         : Integer;
        SifOrganizacioniDeo : Integer;
        SifRadnoMesto       : String(255);
        VaziOd              : String(11); //forse van tolte
        VaziDo              : String(11); //forse van tolte
    key Company             : String(255);
        Operation_type      : String(255);
    key Start_Date_SF       : Date;
}

entity TabLokacija {
    key SifLokacija      : Integer;
        //key SifOrganizacioniDeo : Integer;
        VaziOD           : String(11);
        VaziDO           : String(11);
        NazivObjekta     : String(255);
        Mesto            : String(255);
        Opstina          : String(255);
        Adresa           : String(300);
        PTT              : String(255);
        TipNekretnine    : String(255);
        PodtipNekretnine : String(255);
    key Company          : String(255);
        Operation_type   : String(255);
    key Start_Date_SF    : Date;
}

entity TabVezaLokacijaOD {
    key SifVezaLokacijaOd   : Integer;
        SifLokacija         : Integer;
        SifOrganizacioniDeo : Integer;
        VaziOd              : String(11);
        VaziDo              : String(11);
    key Company             : String(255);
        Operation_type      : String(255);
    key Start_Date_SF       : Date;
}

entity TabMapping { // tabella per la mappatura delle chiavi di EC con quelle di Kadrovi
    key EC_Key_value1           : String(50);
    key EC_Key_value2           : String(50);
    key EC_Key_value3           : String(50);
    key Kadrovi_key_value       : Integer;
        Kadrovi_key_description : String(256);
        Source_generator        : String(1);
//Operation_type          : String(3);
}

entity Kadrovi_keys_Sequence {
    key KadroviKey      : String(256);
    key legalEntity     : String(256);
        lastAvailableID : Integer;
}
