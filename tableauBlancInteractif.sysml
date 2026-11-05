package tbi {

    package parts {
        /* acteurs */
        part def Utilisateur;
        part def Enseignant :> Utilisateur;
        part def Etudiant;

        /* contexte */
        part def TableauBlancInteractif;
        part def VideoProjecteur;
        part def SmartPhone;
        part def Stylet;
        part def Souris;

        /* composants ajoutés lors de l'exploration des scénarios */
        part def BoutonMateriel;
        part def Menu;
        part def DialogueReglage;
        part def Reglage;
        part def Item;
        part def AppTBI;
        part def DialogueTableaux;
        part def TableauActif;
        part def Message;
        part def Evenement;

        /* composants ajoutés lors de l'examen des exigences */
        part def ControleurVideo;
        part def EntreeVideo;
        part def SortieVideo;
        part def UniteAlimentationElectrique;
        part def UniteCommunicationSansFil;
        part def LogicielResident;
        part def SuiveurStylet;
        part def SuiveurDoigt;
        part def ControleurUSB;
        part def PortUSB;
        
    }
}