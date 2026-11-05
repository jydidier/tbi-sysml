package tbi {
    public import tbi::parts::*;

    part tab : TableauBlancInteractif {

        part boutonMenu : BoutonMateriel;
        part carteMere : CarteMere {
            part microControleur : MicroControleur;
            part controleurVideo : ControleurVideo;
            part entreeVideo: EntreeVideo;
            part sortieVideo: SortieVideo;
            part uniteCommunicationSansFil : UniteCommunicationSansFil;
            part controleurUSB : ControleurUSB ;
            part portUSB : PortUSB;
        }

        part suiveurStylet : SuiveurStylet;
        part suiveurDoigt : SuiveurDoigt;
        part uniteAlimentationElectrique : UniteAlimentationElectrique;
    }

    part logicielResident : LogicielResident {
        part menu : Menu;
        part dialogueReglage : DialogueReglage[1..*];
        part reglage : Reglage[0..*];
        part items : Item[0..*];
    }

    part appSmartphone : AppTBI {
        part dialogueTableaux: DialogueTableaux;
        part tableauActif : TableauActif;
        part messages : Message[0..*];
        part evenement : Evenement[0..*];
    }

}