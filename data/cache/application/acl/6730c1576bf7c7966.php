<?php
return (object) [
  'scopes' => (object) [
    'Lead' => (object) [
      'read' => 'own',
      'stream' => 'own',
      'edit' => 'own',
      'delete' => 'no',
      'create' => 'yes'
    ],
    'Meeting' => (object) [
      'read' => 'own',
      'stream' => 'own',
      'edit' => 'own',
      'delete' => 'no',
      'create' => 'yes'
    ],
    'Opportunity' => (object) [
      'read' => 'own',
      'stream' => 'own',
      'edit' => 'own',
      'delete' => 'no',
      'create' => 'yes'
    ],
    'User' => (object) [
      'read' => 'own',
      'edit' => 'no'
    ],
    'Team' => (object) [
      'read' => 'team'
    ],
    'Import' => false,
    'Webhook' => false,
    'Currency' => false,
    'Email' => false,
    'EmailAccountScope' => false,
    'EmailTemplate' => false,
    'EmailTemplateCategory' => false,
    'ExternalAccount' => false,
    'GlobalStream' => false,
    'Template' => false,
    'WorkingTimeCalendar' => false,
    'Account' => false,
    'Activities' => false,
    'Calendar' => false,
    'Call' => false,
    'Campaign' => false,
    'Case' => false,
    'Contact' => false,
    'Document' => false,
    'DocumentFolder' => false,
    'KnowledgeBaseArticle' => false,
    'KnowledgeBaseCategory' => false,
    'TargetList' => false,
    'Task' => false,
    'CDrivingCourse' => false,
    'CFeePayment' => false,
    'CQuanLyGiaoVien' => false,
    'Target' => false,
    'Note' => (object) [
      'read' => 'own',
      'edit' => 'own',
      'delete' => 'own',
      'create' => 'yes'
    ],
    'Portal' => (object) [
      'read' => 'all',
      'edit' => 'no',
      'delete' => 'no',
      'create' => 'no'
    ],
    'Attachment' => (object) [
      'read' => 'own',
      'edit' => 'own',
      'delete' => 'own',
      'create' => 'yes'
    ],
    'EmailAccount' => (object) [
      'read' => 'own',
      'edit' => 'own',
      'delete' => 'own',
      'create' => 'yes'
    ],
    'EmailFilter' => (object) [
      'read' => 'own',
      'edit' => 'own',
      'delete' => 'own',
      'create' => 'yes'
    ],
    'EmailFolder' => (object) [
      'read' => 'own',
      'edit' => 'own',
      'delete' => 'own',
      'create' => 'yes'
    ],
    'GroupEmailFolder' => (object) [
      'read' => 'team',
      'edit' => 'no',
      'delete' => 'no',
      'create' => 'no'
    ],
    'Preferences' => (object) [
      'read' => 'own',
      'edit' => 'own',
      'delete' => 'no',
      'create' => 'no'
    ],
    'Notification' => (object) [
      'read' => 'own',
      'edit' => 'no',
      'delete' => 'own',
      'create' => 'no'
    ],
    'ActionHistoryRecord' => (object) [
      'read' => 'own'
    ],
    'Role' => false,
    'PortalRole' => false,
    'ImportError' => false,
    'ImportEml' => false,
    'WorkingTimeRange' => false,
    'Stream' => true,
    'MassEmail' => false,
    'CampaignLogRecord' => false,
    'CampaignTrackingUrl' => false,
    'EmailQueueItem' => false
  ],
  'fields' => (object) [
    'Email' => (object) [],
    'Team' => (object) [],
    'User' => (object) [
      'gender' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ],
      'avatarColor' => (object) [
        'read' => 'yes',
        'edit' => 'no'
      ],
      'dashboardTemplate' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ],
      'workingTimeCalendar' => (object) [
        'read' => 'yes',
        'edit' => 'no'
      ],
      'password' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ],
      'passwordConfirm' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ],
      'auth2FA' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ],
      'authMethod' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ],
      'apiKey' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ],
      'secretKey' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ],
      'token' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ]
    ],
    'Account' => (object) [],
    'Call' => (object) [],
    'Campaign' => (object) [],
    'Case' => (object) [],
    'Contact' => (object) [],
    'Document' => (object) [],
    'DocumentFolder' => (object) [],
    'KnowledgeBaseArticle' => (object) [],
    'KnowledgeBaseCategory' => (object) [],
    'Lead' => (object) [],
    'Meeting' => (object) [],
    'Opportunity' => (object) [],
    'TargetList' => (object) [],
    'Task' => (object) [],
    'ActionHistoryRecord' => (object) [
      'authToken' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ],
      'authLogRecord' => (object) [
        'read' => 'no',
        'edit' => 'no'
      ]
    ],
    'EmailAccount' => (object) [
      'assignedUser' => (object) [
        'read' => 'yes',
        'edit' => 'no'
      ]
    ],
    'EmailFolder' => (object) [
      'assignedUser' => (object) [
        'read' => 'yes',
        'edit' => 'no'
      ]
    ]
  ],
  'permissions' => (object) [
    'assignment' => 'all',
    'user' => 'all',
    'message' => 'all',
    'portal' => 'yes',
    'groupEmailAccount' => 'all',
    'export' => 'yes',
    'massUpdate' => 'yes',
    'followerManagement' => 'all',
    'dataPrivacy' => 'yes',
    'audit' => 'yes',
    'mention' => 'all'
  ]
];
