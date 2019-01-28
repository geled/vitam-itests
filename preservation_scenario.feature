# language: fr

@Griffins_referential
Fonctionnalité: Import du referentiel scénario de preservation

  Contexte: Avant de lancer cette suite de test, je vérifie que je suis bien sur le tenant d'administration
    Etant donné les tests effectués sur le tenant 0

  Scénario: import des scénario  a deux éléments
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/OK_scenario_liste.json
    Alors les metadonnées sont
      | Code | 201 |
    Et le statut final du journal des opérations est OK
    Et le champ 'outMessg' de l'évenement final est : Succès du processus d'import du référentiel des scenarios de preservation


  Scénario: import avec mise à jour intitulé
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/OK_scenario_maj_liste.json
    Et le statut final du journal des opérations est OK
    Et le champ 'outMessg' de l'évenement final est : Succès du processus d'import du référentiel des scenarios de preservation
    Quand je cherche le scénario de preservation nommé PSC-000001
    Alors les metadonnées sont
      | Name | Tranformation en PNG - BLABLA |

  Scénario: import avec mise à 1 seul scénario
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/OK_scenario_maj_1scenario.json
    Et le statut final du journal des opérations est OK
    Et le champ 'outMessg' de l'évenement final est : Succès du processus d'import du référentiel des scenarios de preservation
    Et le scénario de preservation nommé PSC-000005 n'existe pas
    Et le scénario de preservation nommé PSC-000003 n'existe pas

  Scénario: import avec mise à 4 scénarios
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/OK_scenario_maj_4scenarios.json
    Et le statut final du journal des opérations est OK
    Et le champ 'outMessg' de l'évenement final est : Succès du processus d'import du référentiel des scenarios de preservation
    Quand je cherche le scénario de preservation nommé PSC-000005
    Alors les metadonnées sont
      | Name | Tranformation en PNG |


  Scénario: Injection html
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_defaultGriffin_args.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_defaultGriffin_extension.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_defaultGriffin_griffinIdentifier.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_defaultGriffin_maxSize.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_defaultGriffin_timeout.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_defaultGriffin_type.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_description.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_formatList.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_griffinByFormat_args.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_griffinByFormat_debug.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_griffinByFormat_extension.json
    Alors les metadonnées sont
    | Code | 412 |
#    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_griffinByFormat_griffinIdentifier.json
#    Alors les metadonnées sont
#    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_griffinByFormat_maxSize.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_griffinByFormat_timeout.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_griffinByFormat_type.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_identifier.json
    Alors les metadonnées sont
    | Code | 412 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_html_injection_name.json
    Alors les metadonnées sont
      | Code | 412 |


  Scénario: Invalid  Json
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_invalid_json.json
    Alors les metadonnées sont
      | Code | 412 |

  Scénario: Identifiants doublons
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_same_identifier.json
    Alors les metadonnées sont
      | Code | 400 |

  Scénario: Mauvais format
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_format.pdf
    Alors les metadonnées sont
      | Code | 400 |

  Scénario: Champ inconnu
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_unknown_json_field.json
#    Alors les metadonnées sont
#      | Code | 412 |
    Et le statut final du journal des opérations est OK

  Scénario: Validation KO_scenario_absent_field_defaultGriffin_actionDetail
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_defaultGriffin_actionDetail.json.json
    Alors les metadonnées sont
      | Code | 400 |

  Scénario: Validation KO_scenario_absent_field_defaultGriffin_debug
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_defaultGriffin_debug.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Et le statut final du journal des opérations est KO
    #Et le champ 'evDetData' de l'évenement final est : Invalid scenario  for  : 'PSC-000001' : ['defaultGriffin.debug':ne peut pas \u00EAtre nul

  Scénario: Validation KO_scenario_absent_field_defaultGriffin_griffinIdentifier
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_defaultGriffin_griffinIdentifier.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Et le statut final du journal des opérations est KO
    #Et le champ 'evDetData' de l'évenement final est : Invalid scenario  for  : 'PSC-000001' : ['defaultGriffin.griffinIdentifier':ne peut pas \u00EAtre vide

  Scénario: Validation
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_defaultGriffin_maxSize.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_defaultGriffin_timeout.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_defaultGriffin_type.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_griffinByFormat.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_griffinByFormat_actionDetail.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_griffinByFormat_debug.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_griffinByFormat_formatList.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_griffinByFormat_griffinIdentifier.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_griffinByFormat_maxSize.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_griffinByFormat_timeout.json.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_griffinByFormat_type.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_identifier.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_field_name.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_actionList.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_defaultFormat_actionDetail.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_defaultFormat_debug.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_defaultFormat_griffinIdentifier.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_defaultFormat_maxSize.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_defaultFormat_timeout.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_defaultFormat_type.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_formatList.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_griffinByFormat_actionDetail.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_griffinByFormat_debug.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_griffinByFormat_griffinIdentifier.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_griffinByFormat_maxSize.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_griffinByFormat_timeout.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_griffinByFormat_type.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_identifier.json
    Alors les metadonnées sont
      | Code | 400 |
    Quand j'importe le preservation Scenario nommé data/preservationScenarios/KO_scenario_absent_value_name.json
  Alors les metadonnées sont
    | Code | 400 |
#    KO_scenario_false_type_creationDate.json
#  KO_scenario_false_type_debug.json
#  KO_scenario_false_type_maxSize.json
#  KO_scenario_false_type_timeout.json
#

#  KO_scenario_unknown_value_defaultGriffin_griffinIdentifier.json
#  KO_scenario_unknown_value_defaultGriffin_type.json
#  KO_scenario_unknown_value_formatList.json
#  KO_scenario_unknown_value_GriffinByFormat_griffinIdentifier.json
#  KO_scenario_unknown_value_GriffinByFormat_type.json

#
#  KO_scenario_unknown_value_defaultGriffin_griffinIdentifier.json
#  KO_scenario_unknown_value_defaultGriffin_type.json
#  KO_scenario_unknown_value_formatList.json
#  KO_scenario_unknown_value_GriffinByFormat_griffinIdentifier.json
#  KO_scenario_unknown_value_GriffinByFormat_type.json
#
