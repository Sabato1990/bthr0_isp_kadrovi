using com.isp as my from '../db/data-model';

service CatalogService @(requires : [
    'authenticated-user',
    'system-user'
]) {

    entity TabZaposlenJe_INPUT @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabZaposlenJe_INPUT;

    entity TabUgovor_INPUT @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabUgovor_INPUT;

    entity TabIstorijaStaza_INPUT @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabIstorijaStaza_INPUT;

    entity TabRazniDogadjaji_INPUT @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabRazniDogadjaji_INPUT;

    entity TabVezaLokacijaOD_INPUT @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabVezaLokacijaOD_INPUT;

    entity TabPozicija_INPUT @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabPozicija_INPUT;

    entity TabRadnik @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabRadnik;

    entity TabZaposlenje @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabZaposlenje;

    entity TabAngazovaniPoUgovoru @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabAngazovaniPoUgovoru;

    entity TabUgovor @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabUgovor;

    entity TabIstorijaStaza @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabIstorijaStaza;

    entity TabRazniDogadjaji @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabRazniDogadjaji;

    /*entity TabBrojDokumenta @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabBrojDokumenta;*/

    entity tabRodbina @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.tabRodbina;

    entity tabRadnoMesto @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.tabRadnoMesto;

    entity TabOrganizacioniDeo @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabOrganizacioniDeo;

    entity TabPozicija @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabPozicija;

    entity TabLokacija @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabLokacija;

    entity TabMapping @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabMapping;

    entity TabVezaLokacijaOD @(Capabilities : {
        InsertRestrictions : {Insertable : true},
        UpdateRestrictions : {Updatable : true},
        DeleteRestrictions : {Deletable : true}
    }) as projection on my.TabVezaLokacijaOD;

}
