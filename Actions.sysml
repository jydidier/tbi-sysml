package tbi {
    action administrerTableau {
        attribute boutonAppuye : Boolean;
        attribute annulation: Boolean;
        attribute autreItem : Boolean;
        attribute reglageSelectionne : Boolean;
        action afficherMenu;
        action afficherReglage;
        action appliquerReglage;
        merge merge0;
        decide decide0;

        first start;
        succession start if boutonAppuye then merge0;
        then afficherMenu;
        then decide decide0;
            if annulation then done;
            if autreItem
                then afficherReglage;
        succession afficherReglage if reglageSelectionne then appliquerReglage;
        then merge0;

    }


    action ecrireADistance {
        attribute applicationLancee : Boolean;
        attribute tableauChoisi: Boolean;
        attribute autreEvenement: Boolean;
        attribute accesInterdit: Boolean;


        action listerTableaux;
        action afficherMessageEchecConnexion;
        action envoyerEvenement;
        action afficherContenuTableau;
        decide decide0;
        merge merge0;


        first start;
        succession start if applicationLancee then listerTableaux;
        succession listerTableaux if tableauChoisi then merge0;
        then afficherContenuTableau;
        then decide0;
        if accesInterdit then afficherMessageEchecConnexion;
        if autreEvenement then envoyerEvenement;
        succession afficherMessageEchecConnexion then done;
        succession envoyerEvenement then merge0;

    }
        
}
