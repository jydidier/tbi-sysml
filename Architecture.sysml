package tbi {
    public import tbi::parts::*;

    part tab : TableauBlancInteractif {

        in port boutonMenu : BoutonMateriel;
        part carteMere : CarteMere {
            part microControleur : MicroControleur;
            part controleurVideo : ControleurVideo;
            in port entreeVideo: EntreeVideo;
            out port sortieVideo: SortieVideo;
            part uniteCommunicationSansFil : UniteCommunicationSansFil;
            part controleurUSB : ControleurUSB ;
            inout port portUSB : PortUSB;
            in port alimentation ;

            connect entreeVideo to controleurVideo;
            connect sortieVideo to controleurVideo;
            connect microControleur to controleurVideo;
            connect microControleur to uniteCommunicationSansFil;
            connect microControleur to controleurUSB;
            connect controleurUSB to portUSB;
        }

        part suiveurStylet : SuiveurStylet;
        part suiveurDoigt : SuiveurDoigt;
        part uniteAlimentationElectrique : UniteAlimentationElectrique {
            out port basseTension;
            in port hauteTension;
        }


        inout port portUSB : PortUSB;
        in port hauteTension;
        in port entreeVideo;
        out port sortieVideo;

        connect boutonMenu to carteMere;
        connect carteMere.portUSB to portUSB;
        connect suiveurStylet to carteMere;
        connect suiveurDoigt to carteMere;
        connect hauteTension to uniteAlimentationElectrique.hauteTension;
        connect entreeVideo to carteMere.entreeVideo;
        connect sortieVideo to carteMere.sortieVideo;
        connect uniteAlimentationElectrique.basseTension to carteMere.alimentation;
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

    part smartPhone:SmartPhone;

    allocate appSmartphone to smartPhone;
    allocate logicielResident to tab;

}