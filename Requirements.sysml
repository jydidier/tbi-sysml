package tbi {    
    package requirements {

        /* exigences extraites des cas d'utilisation */
        requirement sauvegardeInformation specializes fonctions {
            doc /* l'utilisateur doit pouvoir sauvegarder le contenu du tableau blanc */
        }

        requirement ecritureADistance specializes fonctions {
            doc /* un utilisateur doit pouvoir écrire à distance */
        }

        requirement duplicationAffichage specializes fonctions {
            doc /* l'enseignant doit pouvoir dupliquer l'affichage sur son smartphone */
        }

        requirement administrationTableau specializes fonctions {
            doc /* l'enseignant doit pouvoir administrer le tableau blanc interactif */
        }

        requirement transformationSurface specializes fonctions {
            doc /* le produit doit pouvoir transformer une surface plane en surface de projection */
        }

        /* exigences extraites de la description du produit */
        requirement affichageEcran specializes interactionsMaterielles {
            doc /* le tableau doit pouvoir afficher l'écran d'un ordinateur */
        }

        requirement dispositifControle specializes interactionsMaterielles {
            doc /* le tableau doit pouvoir être contrôlé à l'aide d'un dispositif de pointage (souris, doigt ou stylet) */
        }

        requirement complementVideoProjecteur specializes interactionsMaterielles {
            doc /* le tableau blanc vient en complément d'un video projecteur */
        }

        requirement coutRevient specializes contraintes {
            doc /* le prix de revient doit être inférieur à 500€ */
        }

        requirement poidsTotal specializes contraintes {
            doc /* le poids total du produit doit être inférieur à 1kg */
        }

        requirement connexionSansFil specializes interactionsMaterielles {
            doc /* le dispositif doit être pourvu d'une connexion sans fil */
        }

        requirement pointAccesUnique specializes interactionsMaterielles {
            doc /* le dispositif doit fournir un point d'accès unique et sécurisé à l'interface d'administration du tableau */
        }

        requirement controleSmartPhone specializes interactionsMaterielles {
            doc /* le tableau doit pouvoir être contrôlé à partir d'un smartphone */
        }

        /* exigences extraites des interactions avec les éléments de contexte */
        requirement compatibiliteElectrique specializes interactionsMaterielles {
            doc /* le système est compatible avec le réseau électrique du pays de l'utilisateur */
        }


        /* exigences créées pour regrouper l'ensemble de manière hiérarchique */
        requirement  contraintes specializes specificationsTBI {
            doc /* le système doit respecter les contraintes ci-dessous */
        }

        requirement  fonctions specializes specificationsTBI {
            doc /* le système doit comprendre les fonctions listées ci-dessous */
        }

        requirement  interactionsMaterielles specializes specificationsTBI {
            doc /* le système doit pouvoir disposer des interactions matérielles listées */
        }

        requirement specificationsTBI {
            doc /* le système répond aux catégories d'exigences listées ci-dessous */
        }

    

    }
}