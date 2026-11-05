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

}