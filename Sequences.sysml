package tbi {
    private import tbi::parts::*;

    package sequences {
        occurrence administrerTableau {
            part boutonMenu: BoutonMateriel;            
            part tbi : TableauBlancInteractif;
            part menu: Menu;
            part reglage: Reglage;
            part dialogueReglage: DialogueReglage;
            part messageEchecConnexion: Message;

            message administrerTableau from boutonMenu to tbi;
            message afficher from tbi to menu;
            message menuItem of Item from menu to tbi;
            message afficher of Item from tbi to dialogueReglage;
            message reglage of Reglage from dialogueReglage to tbi;
            message appliquer from tbi to reglage;
            message from reglage to tbi;
            message from tbi to boutonMenu;
        }
    
  
        occurrence ecrireADistanceS1 {
            part smartPhone: SmartPhone;
            part appTBI: AppTBI;
            part dialogueTableaux: DialogueTableaux;
            part tableauActif : TableauActif;
            part messageEchecConnexion: Message;
            
            message ecrireADistance from smartPhone to appTBI;
            message lister from appTBI to dialogueTableaux;
            message tableauActif of TableauActif from dialogueTableaux to appTBI;
            message afficherContenu from appTBI to tableauActif;
            message evt of Evenement from tableauActif to appTBI;
            message afficher from appTBI to messageEchecConnexion;
            message from messageEchecConnexion to appTBI;
            message from appTBI to smartPhone;
        }

        occurrence ecrireADistanceS2 {
            part smartPhone: SmartPhone;
            part appTBI: AppTBI;
            part dialogueTableaux: DialogueTableaux;
            part tableauActif: TableauActif;
            part evt: Evenement;

            message ecrireADistance from smartPhone to appTBI;
            message lister from appTBI to dialogueTableaux;
            message tableauActif of TableauActif from dialogueTableaux to appTBI;
            message afficherContenu from appTBI to tableauActif;
            message evt of Evenement from tableauActif to appTBI;
            message envoyer from appTBI to evt;
            message from evt to appTBI;
            message from appTBI to smartPhone;
        }
    }
}
