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
        SifOpstinaRodjenja   : String(5);
        SifNacionalnost      : Integer;
        SifDrzavljanstvo     : Integer;
        Ime                  : String(20);
        Prezime              : String(50);
        ImeRoditelja         : String(20);
        Pol                  : String(1);
        JMBG                 : String(13);
        Mesto                : String(50);
        UlicaIBroj           : String(50);
        PostBroj             : String(6);
        DatumRodjenja        : String(11);
        MestoRodjenja        : String(50);
        SifDrzavaRodjenja    : Integer;
        DatumUpisa           : String(11);
        DevojackoPrezime     : String(50);
        BracniStatus         : Integer;
        Veroispovest         : Integer;
        LKBroj               : String(10);
        LKMesto              : String(50);
        PasosBroj            : String(10);
        PasosMesto           : String(50);
        Vozacka              : String(1);
        TelKucni             : String(80);
        TelMobilni           : String(80);
        TelPosao             : String(80);
        MobilniPriv          : String(80);
        MailLicni1           : String(100);
        MailLicni2           : String(100);
        MailPoslovni         : String(80);
        ZSSIF                : Integer;
        NKSIF                : Integer;
        ZSIF                 : String(30);
        MaticniBroj          : Integer;
        PasosDo              : String(11);
        SifOpstinaStanovanja : Integer;
        SifPosta             : Integer;
        Invalidnost          : Integer;
        InvalidnostOd        : String(11);
        SamohraniRoditelj    : Integer;
        SifVerskiPraznik     : Integer;
    key Company              : String(5);
        Operation_type       : String(3);
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
    key Company             : String(5);
        Operation_type      : String(3);
}

entity TabAngazovaniPoUgovoru { //TABELLA PER LAVORATORI ESTERNI
    key SifAngazovaniPoUgovoru : Integer;
        SifOpstinaStanovanja   : Integer;
        Ime                    : String(20);
        Prezime                : String(50);
        Pol                    : String(1);
        JMBG                   : String(13);
        UlicaIBroj             : String(50);
        PostBroj               : String(6);
        Mesto                  : String(50);
        DatumRodjenja          : String(11);
        TelKucni               : String(80);
        MobilniPriv            : String(80);
        TelMobilni             : String(80);
        TelPosao               : String(80);
        MailLicni1             : String(30);
        MailLicni2             : String(30);
        LKBroj                 : String(10);
        WINUSER                : String(30);
        Napomena               : String(400);
        StatusAngazovanog      : String(100);
        SifPosta               : Integer;
        DatumUpisa             : String(11);
    key Company                : String(5);
        Operation_type         : String(3);
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
        BrojUgovora            : String(100);
        UgovorBan              : String(100);
    key Company                : String(5);
        Operation_type         : String(3);
}

entity TabIstorijaStaza {
    key SifRadnik      : Integer;
    key DatumOd        : String(11);
        DatumDo        : String(11);
        Firma          : String(80);
        Sediste        : String(200);
        Godina         : Integer;
        Meseci         : Integer;
        Dana           : Integer;
    key Company        : String(5);
        Operation_type : String(3);
}

entity TabRazniDogadjaji {
    key SifRadnik         : Integer;
    key SifVrstaDogadjaja : Integer;
    key DatumOd           : String(11);
        DatumIzvrsenja    : String(11);
        DatumIzricanja    : String(11);
        Vrsta             : String(40);
        OpisDogadjaja     : String(400);
        DatumDo           : String(11);
    key Company           : String(5);
        Operation_type    : String(3);
}

entity TabBrojDokumenta {
    key SifBrojDokumenta   : Integer;
        SifRadnik          : Integer;
        //key Datum              : String(11);
        SifTabela          : Integer;
        Tabela             : String(50);
        BrojDokumenta      : String(200);
        SifDokument        : Integer;
        DokumentZaposlenje : String(100);
        //SifVrstaDokumenta  : String(100);
        //NazivDokumenta     : String(100); nome del documento
    key Company            : String(5);
        Operation_type     : String(3);
}

entity tabRodbina {
    key SifRodbina     : Integer;
        SifRadnik      : Integer;
        Ime            : String(30);
        Prezime        : String(30);
        Pol            : String(1);
        SifSrodstvo    : Integer;
        DatumRodjenja  : String(11);
        JMBGRodbina    : String(13);
    key Company        : String(5);
        Operation_type : String(3);
}

entity tabRadnoMesto {
    key SifRadnoMesto          : Integer;
        Naziv                  : String(255);
        NazivEngleski          : String(255);
        SifraRadnogMesta       : String(20);
        StrucnaSprema          : String(38);
        RadnoIskustvo          : String(38);
        PosebniUslovi          : String(16);
        OpisPoslova            : String(16);
        PosebneDuznosti        : String(38);
        VaziOD                 : String(11); //forse van tolte
        VaziDO                 : String(11);
        Aktivno                : String(1);
        SifStepenStrucnaSprema : Integer;
        SifraPodgrupa          : Integer;
        RadUSmenama            : String(1); //String(1);
    key Company                : String(5);
        Operation_type         : String(3);
    key Start_Date_SF          : Date;

}

entity TabOrganizacioniDeo {
    key SifOrganizacioniDeo : Integer;
        SifraPravilnik      : String(10);
        SifraOJ             : String(10);
        Oznaka              : String(12);
        Naziv               : String(300); //aggiungi in analisi
        NazivEngleski       : String(100);
        Napomena            : String(400);
        Aktivan             : Boolean; //aggiungi in analisi
        NadredjeniOD        : Integer;
        Poreklo             : String(3); //aggiungi in analisi
        RadUSmenama         : Boolean;
        SifRadnoMesto       : Integer; //aggiungi in analisi
        SifPozicija         : Integer; //aggiungi in analisi
    key Company             : String(5);
        Operation_type      : String(3);
        VaziOD              : String(11); //forse van tolte
        VaziDO              : String(11);
        SifraSektor         : String(11);
        SifraOdeljenje      : String(11);
        SifraSluzba         : String(11);
        SifraOdsek          : String(11);
    key Start_Date_SF       : Date;

}

entity TabPozicija {
    key SifPozicija         : Integer;
        SifOrganizacioniDeo : Integer;
        SifRadnoMesto       : String(20);
        VaziOd              : String(11); //forse van tolte
        VaziDo              : String(11); //forse van tolte
    key Company             : String(5);
        Operation_type      : String(3);
    key Start_Date_SF       : Date;

}

entity TabLokacija {
    key SifLokacija      : Integer;
        //key SifOrganizacioniDeo : Integer;
        VaziOD           : String(11);
        VaziDO           : String(11);
        NazivObjekta     : String(50);
        Mesto            : String(100);
        Opstina          : String(50);
        Adresa           : String(300);
        PTT              : String(20);
        TipNekretnine    : String(50);
        PodtipNekretnine : String(50);
    key Company          : String(5);
        Operation_type   : String(3);
    key Start_Date_SF    : Date;
}

entity TabVezaLokacijaOD {
    key SifVezaLokacijaOd   : Integer;
        SifLokacija         : Integer;
        SifOrganizacioniDeo : Integer;
        VaziOd              : String(11);
        VaziDo              : String(11);
    key Company             : String(5);
        Operation_type      : String(3);
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
