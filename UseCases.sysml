private import requirements::transformationSurface;
private import requirements::ecritureADistance;
package tbi {
    private import requirements::duplicationAffichage;
    package useCases {
        private import tbi::parts::*;
        private import tbi::requirements::*;

        actor utilisateur:Utilisateur;
        actor enseignant:Enseignant ::> utilisateur;

        use case sauvegarderInformations {
            ref actor utilisateur;
            require sauvegardeInformation;
        }
        use case dupliquerAffichage {
            ref actor utilisateur;
            require duplicationAffichage;        
        }

        use case ecrireADistance {
            ref actor utilisateur;
            require ecritureADistance;
        }

        use case administrerTableau {
            ref actor enseignant;
            require administrationTableau;
        }

        use case transformerSurfacePlane {
            ref actor enseignant;
            require transformationSurface;
        }
    }
}