namespace com.isp;

using {managed} from '@sap/cds/common';

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
        Invalidnost          : Integer;
        InvalidnostOd        : String(255);
        SamohraniRoditelj    : Integer;
        SifVerskiPraznik     : Integer;
    key Company              : String(255);
    key Operation_type       : String(255);
        sent                 : String(1);
    key    Start_Date_SF        : Date;
}

entity TabZaposlenje { //Tabella informazioni sull'impiego
        SifRadnik           : Integer;
        DatumOd             : String(11);
        SifRadnoMesto       : Integer;
        SifOrganizacioniDeo : Integer;
        SifPozicija         : Integer;
        SifOsnovRada        : Integer;
        SifStatusZaposlenja : String(255cf l);
        DatumDo             : String(11);
        Dan                 : Integer;
        Mes                 : Integer;
        God                 : Integer;
        StartEnd            : String(1);
    key Company             : String(255);
    key Operation_type      : String(255);
        AKtivanStatus       : Integer;
        DokumentZaposlenje  : String(100);
        Start_Date_SF       : Date;
        sent                : String(1);
    key SifZaposlen         : UUID;


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
    key Operation_type         : String(255);
        sent                   : String(1);
    key    Start_Date_SF        : Date;
}

entity TabUgovor { //Tabella informazioni sull'impiego dei lavoratori esterni
        SifAngazovaniPoUgovoru : Integer;
        NacinSklapanja         : String(400);
        VrstaUgovora           : String(400);
        DatumOd                : String(11);
        DatumDo                : String(11);
        OpisPoslova            : String(400);
        DatumUpisa             : String(11);
        SifOrganizacioniDeo    : Integer;
        NazivUgovora           : String(400);
        BrojUgovora            : String(255);
        UgovorBan              : String(255);
    key Company                : String(255);
    key Operation_type         : String(255);
        Aktivan                : Integer;
        Start_Date_SF          : Date;
        sent                   : String(1);
    key SifUgovor              : UUID;
}

entity TabIstorijaStaza {
        SifRadnik        : Integer;
        DatumOd          : String(11);
        DatumDo          : String(11);
        Firma            : String(255);
        Sediste          : String(255);
        Godina           : Integer;
        Meseci           : Integer;
        Dana             : Integer;
    key Company          : String(255);
    key Operation_type   : String(255);
        Start_Date_SF    : Date;
        sent             : String(1);
    key SifIstorijaStaza : UUID;
}

entity TabRazniDogadjaji {
        SifRadnik         : Integer;
        SifVrstaDogadjaja : Integer;
        DatumOd           : String(11);
        DatumIzvrsenja    : String(11);
        DatumIzricanja    : String(11);
        Vrsta             : String(255);
        OpisDogadjaja     : String(400);
        DatumDo           : String(11);
    key Company           : String(255);
    key Operation_type    : String(255);
        Start_Date_SF     : Date;
        sent              : String(1);
    key SifRazniDogadjaji : UUID;
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
    key Operation_type     : String(255);
        Datum              : String(11);
        sent               : String(1);
     key    Start_Date_SF        : Date;

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
    key Operation_type : String(255);
        sent           : String(1);
         key    Start_Date_SF        : Date;

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
    key Operation_type         : String(255);
    key Start_Date_SF          : Date;
        sent                   : String(1);

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
    key Operation_type      : String(255);
        VaziOD              : String(11); //forse van tolte
        VaziDO              : String(11);
        SifraSektor         : String(255);
        SifraOdeljenje      : String(255);
        SifraSluzba         : String(255);
        SifraOdsek          : String(255);
    key Start_Date_SF       : Date;
        sent                : String(1);

}

entity TabPozicija {
    key SifPozicija         : Integer;
        SifOrganizacioniDeo : Integer;
        SifRadnoMesto       : String(255);
        VaziOd              : String(11); //forse van tolte
        VaziDo              : String(11); //forse van tolte
    key Company             : String(255);
    key Operation_type      : String(255);
    key Start_Date_SF       : Date;
        sent                : String(1);

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
    key Operation_type   : String(255);
    key Start_Date_SF    : Date;
        sent             : String(1);

}

entity TabVezaLokacijaOD {
        SifLokacija         : Integer;
        SifOrganizacioniDeo : Integer;
        VaziOd              : String(11);
        VaziDo              : String(11);
    key Company             : String(255);
    key Operation_type      : String(255);
    key Start_Date_SF       : Date;
        sent                : String(1);
    key SifVezaLokacijaOd   : UUID;

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


entity TabRadnik_ARCH { //Tabella PerPersonal
    key uuid                 : String(256);
        creationDate         : Date;
        SifRadnik            : Integer;
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
        Invalidnost          : Integer;
        InvalidnostOd        : String(11);
        SamohraniRoditelj    : Integer;
        SifVerskiPraznik     : Integer;
    key Company              : String(5);
        Operation_type       : String(3);
        Start_Date_SF        : Date;
}

entity TabZaposlenje_ARCH { //Tabella informazioni sull'impiego
    key uuid                : String(256);
        creationDate        : Date;
        SifRadnik           : Integer;
        DatumOd             : String(11);
        SifZaposlen         : String(256);
        SifRadnoMesto       : Integer;
        SifOrganizacioniDeo : Integer;
        SifPozicija         : Integer;
        SifOsnovRada        : Integer;
        SifStatusZaposlenja : String(255);
        DatumDo             : String(11);
        Dan                 : Integer;
        Mes                 : Integer;
        God                 : Integer;
        StartEnd            : String(1);
        Company             : String(255);
        Operation_type      : String(255);
        AKtivanStatus       : Integer;
        DokumentZaposlenje  : String(100);
        Start_Date_SF       : Date;
}

entity TabAngazovaniPoUgovoru_ARCH { //TABELLA PER LAVORATORI ESTERNI
    key uuid                   : String(256);
        creationDate           : Date;
        SifAngazovaniPoUgovoru : Integer;
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
        Company                : String(5);
        Operation_type         : String(3);
        Start_Date_SF          : Date;
}

entity TabUgovor_ARCH { //Tabella informazioni sull'impiego dei lavoratori esterni
    key uuid                   : String(256);
        creationDate           : Date;
        SifAngazovaniPoUgovoru : Integer;
        NacinSklapanja         : String(400);
        VrstaUgovora           : String(400);
        DatumOd                : String(11);
        DatumDo                : String(11);
        OpisPoslova            : String(400);
        DatumUpisa             : String(11);
        SifOrganizacioniDeo    : Integer;
        NazivUgovora           : String(400);
        BrojUgovora            : String(100);
        UgovorBan              : String(100);
        Company                : String(5);
        Operation_type         : String(3);
        SifUgovor              : String(256);
        Aktivan                : Integer;
        Start_Date_SF          : Date;
}

entity TabIstorijaStaza_ARCH {
    key uuid             : String(256);
        creationDate     : Date;
        SifRadnik        : Integer;
        DatumOd          : String(11);
        DatumDo          : String(11);
        Firma            : String(80);
        Sediste          : String(200);
        Godina           : Integer;
        Meseci           : Integer;
        Dana             : Integer;
        Company          : String(5);
        Operation_type   : String(3);
        SifIstorijaStaza : String(256);
        Start_Date_SF    : Date;
}

entity TabRazniDogadjaji_ARCH {
    key uuid              : String(256);
        creationDate      : Date;
        SifRadnik         : Integer;
        SifVrstaDogadjaja : Integer;
        DatumOd           : String(11);
        DatumIzvrsenja    : String(11);
        DatumIzricanja    : String(11);
        Vrsta             : String(40);
        OpisDogadjaja     : String(400);
        DatumDo           : String(11);
        Company           : String(5);
        Operation_type    : String(3);
        SifRazniDogadjaji : String(256);
        Start_Date_SF     : Date;
}

entity TabBrojDokumenta_ARCH {
    key uuid               : String(256);
        creationDate       : Date;
        SifBrojDokumenta   : Integer;
        SifRadnik          : Integer;
        //key Datum              : String(11);
        SifTabela          : Integer;
        Tabela             : String(50);
        BrojDokumenta      : String(200);
        SifDokument        : Integer;
        DokumentZaposlenje : String(100);
        //SifVrstaDokumenta  : String(100);
        //NazivDokumenta     : String(100); nome del documento
        Company            : String(5);
        Operation_type     : String(3);
        Start_Date_SF      : Date;
}

entity tabRodbina_ARCH {
    key uuid           : String(256);
        creationDate   : Date;
        SifRodbina     : Integer;
        SifRadnik      : Integer;
        Ime            : String(30);
        Prezime        : String(30);
        Pol            : String(1);
        SifSrodstvo    : Integer;
        DatumRodjenja  : String(11);
        JMBGRodbina    : String(13);
        Company        : String(5);
        Operation_type : String(3);
        Start_Date_SF  : Date;
}

entity tabRadnoMesto_ARCH {
    key uuid                   : String(256);
        creationDate           : Date;
        SifRadnoMesto          : Integer;
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
        Company                : String(5);
        Operation_type         : String(3);
        Start_Date_SF          : Date;


}

entity TabOrganizacioniDeo_ARCH {
    key uuid                : String(256);
        creationDate        : Date;
        SifOrganizacioniDeo : Integer;
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
        Company             : String(5);
        Operation_type      : String(3);
        VaziOD              : String(11); //forse van tolte
        VaziDO              : String(11);
        SifraSektor         : String(11);
        SifraOdeljenje      : String(11);
        SifraSluzba         : String(11);
        SifraOdsek          : String(11);
        Start_Date_SF       : Date;

}

entity TabPozicija_ARCH {
    key uuid                : String(256);
        creationDate        : Date;
        SifPozicija         : Integer;
        SifOrganizacioniDeo : Integer;
        SifRadnoMesto       : String(20);
        VaziOd              : String(11); //forse van tolte
        VaziDo              : String(11); //forse van tolte
        Company             : String(5);
        Operation_type      : String(3);
        Start_Date_SF       : Date;

}

entity TabLokacija_ARCH {
    key uuid             : String(256);
        creationDate     : Date;
        SifLokacija      : Integer;
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
        Company          : String(5);
        Operation_type   : String(3);
        Start_Date_SF    : Date;
}

entity TabVezaLokacijaOD_ACRH {
    key uuid                : String(256);
        creationDate        : Date;
        SifVezaLokacijaOd   : Integer;
        SifLokacija         : Integer;
        SifOrganizacioniDeo : Integer;
        VaziOd              : String(11);
        VaziDo              : String(11);
        Company             : String(5);
        Operation_type      : String(3);
        Start_Date_SF       : Date;

}
