package tbi {
    private import tbi::parts::*;
    part def Contexte {
        part enseignant:Enseignant;
        part etudiant: Etudiant[*];
        part tbi: TableauBlancInteractif;

        part reseauElectrique ;

        part videoProjecteur: VideoProjecteur;
        part smartPhone: SmartPhone[*];
        part stylet: Stylet;
        part doigt;
        part souris: Souris;
        part surfacePlane;


        flow utilise from enseignant to tbi;
        flow utilise from etudiant to tbi;
        flow alimente from reseauElectrique to tbi;
        flow utilise from tbi to videoProjecteur;
        flow affiche from smartPhone to tbi;
        flow controle from stylet to tbi;
        flow controle from doigt to tbi;
        flow controle from souris to tbi;
        flow transforme from tbi to surfacePlane;
        connect tbi to reseauElectrique;
    }
}
