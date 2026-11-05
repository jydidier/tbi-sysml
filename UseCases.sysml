package tbi {
    package useCases {
        private import tbi::parts::*;

        actor utilisateur:Utilisateur;
        actor enseignant:Enseignant ::> utilisateur;

        use case sauvegarderInformations {
            ref actor utilisateur;
        }
        use case dupliquerAffichage {
            ref actor utilisateur;        
        }

        use case ecrireADistance {
            ref actor utilisateur;
        }

        use case administrerTableau {
            ref actor enseignant;
        }

        use case transformerSurfacePlane {
            ref actor enseignant;
        }
    }
}