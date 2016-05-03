-- bhima test database

-- set variables
SET names 'utf8';
SET character_set_database = 'utf8';
SET collation_database = 'utf8_unicode_ci';

-- units
INSERT INTO unit VALUES
  (0,   'Root','TREE.ROOT','The unseen root node',NULL,'/partials/index.html','/root'),
  (1,   'Admin','TREE.ADMIN','The Administration Super-Category',0,'/partials/admin/index.html','/admin'),
  (2,   'Enterprise', 'TREE.ENTERPRISE', 'Manage the registered enterprises from here', 1, '/partials/enterprise/', '/enterprises'),
  (4,   'Users & Permissions','TREE.USERS','Manage user privileges and permissions',1,'/partials/user_permission/','/permissions'),
  (5,   'Finance','TREE.FINANCE','The Finance Super-Category',0,'/partials/finance/','/finance'),
  (6,   'Account','TREE.ACCOUNT','Chart of Accounts management',30,'/partials/accounts/','/accounts'),
  (12,  'Hospital','TREE.HOSPITAL','The Hospital Super-Category',0,'/partials/hospital/index.html','/hospital'),
  (14,  'Patient Registration','TREE.PATIENT_REGISTRATION','Register patients',12,'/partials/patient/register/','/patients/register'),
  (16,  'Patient Invoice','TREE.PATIENT_INVOICE','Create an invoice for a patient',5,'/partials/patient_invoice/','/invoices/patient'),
  (18,  'Cash Window','TREE.CASH_WINDOW','Cash payments against past or future invoices',5,'/partials/cash/','/cash'),
  (19,  'Register Supplier','TREE.REGISTER_SUPPLIER','',1,'/partials/creditors/','/creditors'),
  (21,  'Price List','TREE.PRICE_LIST','Configure price lists!',1,'/partials/price_list/','/prices'),
  (22,  'Exchange Rate','TREE.EXCHANGE','Set todays exchange rate!',1,'/partials/exchange_rate/','/exchange'),
  (26,  'Location Manager','TREE.LOCATION','',1,'/partials/locations/locations.html','/locations'),
  (29,  'Patient Group','TREE.PATIENT_GRP','',1,'/partials/patient/group/','/patients/groups/'),
  (30,  'Accounting','TREE.ACCOUNTING','',0,'/partials/accounting/index.html','/accounting/'),
  (42,  'Project','TREE.PROJECT','',1,'/partials/projects/','/projects'),
  (48,  'Service Management','TREE.SERVICE','',1,'partials/services/','/services'),
  (57,  'Payroll','TREE.PAYROLL','',0,'partials/payroll/','/payroll/'),
  (61,  'Employee','TREE.EMPLOYEE','Employees management',57,'partials/employees/','/employees'),
  (80,  'Patient Update','TREE.EDIT_PATIENT','',12,'/partials/patient_edit/','/patients/edit'),
  (82,  'Subsidies','TREE.SUBSIDY','Handles the subsidy situation',1,'/partials/subsidies/','/subsidies'),
  (105, 'Cashbox Management','TREE.CASHBOX_MANAGEMENT','',1,'/partials/cash/cashbox/','/cashboxes'),
  (106, 'Depot Management', 'TREE.DEPOTS_MANAGEMENT', 'Depot Management module', 1, '/partials/depots_management/', '/depots_management'),
  (107, 'Debtor Groups Management', 'TREE.DEBTOR_GRP', 'Debtor Groups Management module', 1, '/partials/debtor_groups/', '/debtor_groups'),
  (108, 'Donors Management', 'TREE.DONOR_MANAGEMENT', 'Donors Management module', 1, '/partials/donors/', '/donors'),
  (109, 'Section du bilan','TREE.SECTION_BILAN','',30,'/partials/section_bilan/','/section_bilan/'),
  (110, 'Section resultat','TREE.SECTION_RESULTAT','',30,'/partials/section_resultat/','/section_resultat/'),
  (111, 'reference_group','TREE.REFERENCE_GROUP','Reference Group',30,'/partials/references/groups','/references/groups'),
  (112, 'Reference','TREE.REFERENCE','References',30,'/partials/references','/references'),
  (134, 'Simple Journal Vouchers', 'TREE.SIMPLE_VOUCHER', 'Creates a simple transfer slip between two accounts', 30, '/partials/vouchers/simple', '/vouchers/simple'),
  (135, 'Billing Services', 'TREE.BILLING_SERVICES', 'Configures billing services for bhima', 1, '/partials/billing_services', '/admin/billing_services'),
  (136, 'complex Journal Vouchers', 'TREE.COMPLEX_JOURNAL_VOUCHER', 'Complex Journal vouchers module', 30, '/partials/vouchers/complex', '/vouchers/complex');

INSERT INTO `account_type` VALUES (1,'income/expense'),(2,'balance');
INSERT INTO `language` VALUES (1,'Francais','fr', 'fr-be'), (2,'English','en', 'en-us'), (3,'Lingala','lg', 'fr-cd');
INSERT INTO `currency` (`id`, `name`, `format_key`, `symbol`, `note`, `min_monentary_unit`) VALUES (1,'Congolese Francs','fc','Fc',NULL,50.00),(2,'United States Dollars','usd','$',NULL,0.01);

-- locations
INSERT INTO `country` VALUES (HUID('00d5dd74-3cc4-4e16-a902-54fcd053cb4c'),'Monaco'),(HUID('0152ea79-55ed-46bc-8bee-4fac55bb2b8e'),'Saint-Siège (état de la Cité du Vatican)'),(HUID('0273f5ca-d34c-481c-8e66-f93d13959ceb'),'Pakistan'),(HUID('03d398fa-c25f-46b0-a1ec-2d058a259bb3'),'Croatie'),(HUID('04ff7801-5712-47a0-898b-2d8dfa808485'),'Suisse'),(HUID('05c3fee7-eea3-4737-b35e-827bc2e71b82'),'République Dominicaine'),(HUID('065f75dc-4ff7-4e92-b0b4-7cff9e4d98cf'),'Bulgarie'),(HUID('067a7001-a141-43a8-9232-19d332a61746'),'Bermudes'),(HUID('087a019c-ff83-4bda-a6f4-e2523e4a08b0'),'Serbie-et-Monténégro'),(HUID('08ab4e85-572a-46c7-9274-bca1e4d0d7b6'),'Éthiopie'),(HUID('08e57692-cdbf-473b-b7f3-672e05a09536'),'Angola'),(HUID('0976a952-7f78-447e-bf34-a99c4a5fb58a'),'Swaziland'),(HUID('0b925681-e102-4208-8575-046141c46d72'),'Équateur'),(HUID('0ca6ff57-7481-4602-966e-8746b575a108'),'Turkménistan'),(HUID('0f26f13b-0a82-4c09-8ac8-34a85b1123d9'),'Botswana'),(HUID('0f96b788-abe9-478b-b6f6-5a1f7b5f7995'),'Île Christmas'),(HUID('1200c07e-cc78-4838-bde6-5375a42d55b1'),'Dominique'),(HUID('1291646b-a032-4fe9-a54e-0a6f581ff381'),'Finlande'),(HUID('138857e4-17af-4ec7-bd06-94f24115091c'),'Tchad'),(HUID('13fecf7f-939f-4a9b-ab20-98456dcd56dd'),'Guinée Équatoriale'),(HUID('1517bb9c-6255-4e5d-8590-be3c9ff5b65c'),'Ukraine'),(HUID('153a9be1-fbdf-4f88-b4d9-a5843325c876'),'Îles Marshall'),(HUID('1655b4bb-790f-48eb-a0a8-23de46355810'),'Sainte-Hélène'),(HUID('16c79f30-ed50-4cf7-a409-93d0b75f4b47'),'Haïti'),(HUID('16f69616-cc0a-41f5-8b69-880fb129d814'),'Nicaragua'),(HUID('172a722a-10da-49e6-88c8-c84ba0b2092e'),'Île Norfolk'),(HUID('1aaa5406-64d5-454c-90cf-95d0436323f8'),'Suède'),(HUID('1b0b5e6e-0e64-42cd-afbf-1ec1d6c29669'),'Gibraltar'),(HUID('1b685444-0ae4-4acf-8b49-fd2e3cb7f464'),'Bhoutan'),(HUID('1c8c2928-34fa-4a27-baf2-2eac8d28b1e8'),'Taïwan'),(HUID('1d381f66-d8fc-4322-95ff-b4cc6520eb0c'),'Bénin'),(HUID('1d76b765-3770-4394-b5f7-7290f3c5ab1c'),'États Fédérés de Micronésie'),(HUID('1f05a349-177f-4596-b842-0bdc0509710e'),'Îles Mineures Éloignées des États-Unis'),(HUID('1f27819c-8e85-47f5-8ad1-8c55c5a9c0ca'),'Royaume-Uni'),(HUID('1fdcf8e0-a1b8-44c6-81b8-5fb741fceb23'),'Namibie'),(HUID('1fe68f97-4140-4334-a33b-fe396f9cd524'),'Venezuela'),(HUID('1ff78bb2-f1dd-4891-b3a8-801800903f95'),'Zambie'),(HUID('20a61c07-3d99-423c-a04a-5d2b49f6d024'),'Bahreïn'),(HUID('213d1268-3651-48d3-b9ac-f2bdd3177aef'),'Islande'),(HUID('21d4ae6c-ada5-4279-b59e-39ad5987eab5'),'Tadjikistan'),(HUID('25e3c78b-e673-43ab-82e9-90854434191e'),'Territoire Palestinien Occupé'),(HUID('26680317-68d3-4fce-94f7-8ddf9b0acf7f'),'country-Bas'),(HUID('26aa989d-4671-4191-9abe-eb3dca007172'),'Chypre'),(HUID('26bab041-6567-4b88-bdc1-61b8074fbde8'),'Martinique'),(HUID('2722971a-25d7-4894-85f9-93aa1883b076'),'Cameroun'),(HUID('2826f270-0f20-4d50-b944-239cfaf53800'),'Burundi'),(HUID('2af3372e-1fb4-4dbb-a6bd-55ec249597ea'),'République Arabe Syrienne'),(HUID('2af917aa-8b4b-46d8-93f8-9aaa34716b3c'),'Maldives'),(HUID('2c287c6d-956b-481e-a1f8-3e828e526f8b'),'Espagne'),(HUID('2c838008-9081-4150-b280-5c6d206f7608'),'Zimbabwe'),(HUID('2c90f3c8-4eb1-46d3-9a5c-da180d1430a5'),'Afghanistan'),(HUID('2ce78d86-bb57-4dd9-a159-9583df10447c'),'Émirats Arabes Unis'),(HUID('2daf4de0-77b4-4d7b-a8c3-bc48bde10d35'),'Antigua-et-Barbuda'),(HUID('2ee6885e-d5ab-4a60-af36-af8805eaab32'),'Fédération de Russie'),(HUID('2f050307-8397-4878-bcdf-c349dc463cfc'),'Saint-Vincent-et-les Grenadines'),(HUID('2f18b1dc-00c2-4e23-a73c-48b06e01df4b'),'Rwanda'),(HUID('31c81b02-665f-4eaa-a571-05f4d929a897'),'Irlande'),(HUID('323d16ae-6a98-487d-9a0c-8b4e6623c1c1'),'Saint-Marin'),(HUID('327460a0-e62a-4d91-a421-b2f83fa33855'),'Brésil'),(HUID('333bf5d5-7f55-4279-a88e-8c54ae787b77'),'Maroc'),(HUID('33c4487c-928e-4101-80f2-59def08d9589'),'Guam'),(HUID('3a7bd6f9-855a-4f0d-a2d7-2afd737fba9b'),'Territoire Britannique de l\'Océan Indien'),(HUID('3a84530a-e8d8-48d5-9ab8-660579295d66'),'Malaisie'),(HUID('3d228194-3a87-40ff-aeb1-0fe36c7a09b2'),'Guadeloupe'),(HUID('3d2ecc46-c76a-4b11-b35c-e719193a5f36'),'Singapour'),(HUID('3e975cef-ecd4-4326-badd-d5668de60957'),'Soudan'),(HUID('408b06c6-d2f2-452e-86a1-7acb54bf328f'),'Mali'),(HUID('4313363b-a86e-4e3f-b4fd-c9efb184dfae'),'Samoa Américaines'),(HUID('447be4ae-9ac4-4b1d-94f0-5eeec4f546d0'),'Wallis et Futuna'),(HUID('44f76a56-dc51-447a-8dab-3cabc1e3ca9d'),'Îles Salomon'),(HUID('45062b2c-407b-43fc-a7a0-e60aba93badf'),'Andorre'),(HUID('47248724-a47d-4c1c-8b5e-7ff6da69e62a'),'Liban'),(HUID('4779b9cf-db83-4d19-a016-5e5764015f24'),'Djibouti'),(HUID('47f2b634-9a56-4e43-99b9-30e635bf43d0'),'Ghana'),(HUID('487a36a2-203e-410d-b888-5003fe50cbb8'),'Îles Heard et Mcdonald'),(HUID('496430dd-69e3-4a3b-9e28-315d792cfeb9'),'Aruba'),(HUID('49e874a3-210e-4ffb-a408-4e26d19e75a9'),'Allemagne'),(HUID('4a6ae68a-c741-4613-9cd1-77417683c555'),'Danemark'),(HUID('4c36c5ef-2ebf-4d68-9cc0-33469e465603'),'Algérie'),(HUID('4c678b13-f7bf-4bad-8a6c-82bd1ab82738'),'Bosnie-Herzégovine'),(HUID('4e2907de-0c7e-49f2-8109-284b63a16e37'),'Saint-Kitts-et-Nevis'),(HUID('4f3a2f45-4858-4156-bdc1-e95a7f2e7a8a'),'Niger'),(HUID('4f4a4049-789d-498e-bf7c-6ad55081769b'),'Barbade'),(HUID('4fdad4fe-f5f5-420f-b5d3-d9bb63f5f6ab'),'Tunisie'),(HUID('50adc72b-27db-4863-8a68-0e2ec8494a9f'),'Îles Turks et Caïques'),(HUID('50ae28f1-42c4-4113-8258-13549f19e0ff'),'Sainte-Lucie'),(HUID('50dab7a2-d4da-449b-b651-0a35f15d857e'),'Grenade'),(HUID('52955883-7afc-45e5-906a-0581bd27f3b1'),'Lituanie'),(HUID('57dff794-dca5-46d4-b757-de58c6d56d30'),'Qatar'),(HUID('59950343-acaa-4bc1-b8d1-e3b5375f68c2'),'Lettonie'),(HUID('5da76516-8860-452b-91f6-54270ff5484d'),'Iraq'),(HUID('5ebb1601-67ae-4600-bc82-b7dc5b89eb17'),'Guinée'),(HUID('615efc71-92c8-4ceb-8214-af148e78ba5a'),'Oman'),(HUID('6358a5ac-7e40-4281-bb6f-5bf4ca3dcaf7'),'Île Bouvet'),(HUID('6381d19b-61eb-4559-b69d-183f182da319'),'Nigéria'),(HUID('6381ed7c-81d3-400c-bf11-6f564f031241'),'Palaos'),(HUID('67513318-87d8-4b7d-8a9c-3dc5966b47e9'),'République Centrafricaine'),(HUID('67cd2b12-99ea-4058-8a90-0ad6da8f7d4c'),'Argentine'),(HUID('67e90179-575c-4529-bf98-81812010df94'),'Japon'),(HUID('68b9b1a5-4b52-43d1-9408-aeeb6a77f561'),'Pologne'),(HUID('69a63146-92fb-4b56-b7ed-61de5432901e'),'Île de Man'),(HUID('6a68174f-b3a5-4356-8ccb-1268e34ceecc'),'Érythrée'),(HUID('6a87ccf9-bd02-42ef-b202-440480137f61'),'Guyana'),(HUID('6aee7bdd-05c3-4385-8ba0-a2172b3218a8'),'Égypte'),(HUID('6bcb9513-717c-4aa8-9079-683fb7b03541'),'Kirghizistan'),(HUID('6e2dcdca-748d-41b8-830f-6ba3c4c48ebe'),'Togo'),(HUID('70731745-5f9e-4835-8c79-6850f824253e'),'Bélarus'),(HUID('71777537-b696-4a57-998f-1d528c2a00ae'),'Albanie'),(HUID('71a17e06-862f-4f24-891d-fe1c241bed14'),'Ouganda'),(HUID('71f80040-6ace-4896-832d-1495a7fac93a'),'Nouvelle-Calédonie'),(HUID('7271cdc3-6e0d-4124-87f8-2a0d73f9f5c4'),'Saint-Pierre-et-Miquelon'),(HUID('73b3b4b5-5510-441b-a166-f00d42ba4a33'),'Groenland'),(HUID('742a9c9f-0628-423f-8a2f-ce7b6c5a9773'),'Népal'),(HUID('75a80e1f-7f4a-479b-962c-a85ce06eb938'),'Italie'),(HUID('7a50bcec-6e83-426f-9301-97663dba66ae'),'Gambie'),(HUID('7b640e10-aad4-4a28-a9e4-e4e6f3db6c74'),'Chili'),(HUID('7bb64d6f-40f6-490a-8c43-fa47ac141790'),'Liechtenstein'),(HUID('7eae3e04-7bac-4b6a-be50-b792d6966f53'),'Mexique'),(HUID('7f1199aa-1516-421c-8272-f9dffabf0d72'),'Jamaïque'),(HUID('808c750a-7ab7-4e39-8d2e-7216b5dc8d23'),'Sierra Leone'),(HUID('818f65d6-24d6-4991-9b35-2c65e1b830a8'),'République de Corée'),(HUID('81b80bb8-841e-44c9-80dc-1171af0eebaa'),'Îles Caïmanes'),(HUID('8314ed4b-92d2-4f0d-a391-29674a18afd9'),'Macao'),(HUID('84693aef-78ee-42a8-ba5d-9fad7ce158fa'),'Trinité-et-Tobago'),(HUID('84d63ef8-c929-4b49-a56c-4caffb73cb7e'),'Bahamas'),(HUID('84df3ef4-d1fc-4052-ae33-93c21bc3e84c'),'Libéria'),(HUID('85067179-98fe-4100-b56f-90645f281560'),'Îles Cook'),(HUID('872167ac-a93b-4ab4-95a9-ad396038fa15'),'Mongolie'),(HUID('888b9b7e-0c94-49e5-9c04-b82694f0e8c2'),'Sao Tomé-et-Principe'),(HUID('8961c80f-9e7a-47dd-8c26-df720e725ae9'),'Comores'),(HUID('89811eac-9f69-43ae-b540-e2918a5884da'),'Samoa'),(HUID('8a3940d7-257f-4d28-9e88-c22a3f5039f2'),'Géorgie'),(HUID('8b8e3d18-2076-49e6-9c60-c72f908cb91d'),'Vanuatu'),(HUID('8d6b3fdd-2e29-4ef9-8637-186205288274'),'Guyane Française'),(HUID('8e241563-a800-4a3b-bc2b-3c36919df644'),'Norvège'),(HUID('8ec65736-81f0-47e8-acc5-3540c70beb8f'),'Lesotho'),(HUID('8f2f864a-0fe9-4a4a-bb6e-4ab5cff18e16'),'Honduras'),(HUID('8fbc369f-aaf8-475c-964c-6b9eaceb17ff'),'Uruguay'),(HUID('92a30449-36fe-43ab-9a88-e8ea426af58f'),'Koweït'),(HUID('92a7cb27-cf23-41a9-bc51-aa5b4de0eacb'),'République Islamique d\'Iran'),(HUID('939122be-4d1d-478f-a6da-817511c6107c'),'Gabon'),(HUID('94f83d46-84fb-4043-84cb-244c8faa9470'),'Cap-vert'),(HUID('955ffafc-f3e0-4445-8090-999a2874c64f'),'Îles (malvinas) Falkland'),(HUID('9588691a-fcfd-4290-b9c7-bffa330dbf76'),'Estonie'),(HUID('95a34e3e-de74-4749-9d9e-eada7c480a28'),'Suriname'),(HUID('993aaf05-0981-4108-a1b2-28df36043a3f'),'Bolivie'),(HUID('9a5be8c5-080b-4ac0-94e6-da9872df6b47'),'France'),(HUID('9ab05b15-5fb7-483e-a76f-a60facedff9b'),'Kazakhstan'),(HUID('9c47bee6-4e31-4b75-b7db-2621ee0510ba'),'République de Moldova'),(HUID('9c50d86f-1f7d-425a-8ee9-6df3d93b9a06'),'Malawi'),(HUID('9c7519c1-29ec-409d-af50-23a69ca23f0a'),'Yémen'),(HUID('9f2c20c3-ac01-4e2a-83b5-ee9a3dc0e5e3'),'Mayotte'),(HUID('a18f943a-ead1-446c-849f-6ef97dcbe634'),'Niué'),(HUID('a4b52a4b-b240-4ab6-932a-fb0aa5f7dd68'),'Îles Vierges Britanniques'),(HUID('a4b57bf7-072e-41b8-a078-5400478f0708'),'Panama'),(HUID('a5e84834-20ba-4b9a-a5fb-42ca248d6e41'),'Viet Nam'),(HUID('a610f780-5af8-447c-965a-88d6204034e6'),'Ouzbékistan'),(HUID('a7d8cf15-0a55-441a-82ea-069e7a4ac7a0'),'Myanmar'),(HUID('a8dc730f-069d-4731-b66e-1ad7aba36006'),'Colombie'),(HUID('a8f2c8db-11c8-4e9f-a6fd-675c297a67ec'),'Arabie Saoudite'),(HUID('a9adee77-365f-47a4-9436-510a06136e4b'),'Antilles Néerlandaises'),(HUID('aa0010db-1dd1-42ab-b09d-e256f98e5edd'),'Montserrat'),(HUID('acc41565-450c-4664-9643-719391be8cac'),'Jamahiriya Arabe Libyenne'),(HUID('ad09486d-697d-4e81-b479-2d0463301ecc'),'Grèce'),(HUID('adce1ea6-910f-4f56-994b-d4842290a9d0'),'Azerbaïdjan'),(HUID('ae5fd469-6ea8-4e37-850b-06fe8d6c4028'),'République du Congo'),(HUID('b0079dd8-bd73-442a-bbe6-1969431bf8b4'),'Papouasie-Nouvelle-Guinée'),(HUID('b0385034-e408-4cad-90aa-5b8e74cf0050'),'Portugal'),(HUID('b6431c90-44d1-4203-87b2-bfde91788569'),'République Tchèque'),(HUID('b69fc6eb-25e8-42f2-b718-92f0effdb09c'),'Roumanie'),(HUID('b8c547c8-193f-4fba-8799-238809b0abb7'),'Fidji'),(HUID('b9ab0fe0-7c32-4c70-8fc2-a4c0ab7fc8b3'),'Indonésie'),(HUID('bac5c332-3e18-4714-b4ad-a4e54ce5ae18'),'Îles Cocos (Keeling)'),(HUID('bbd6e104-27a0-44a6-8139-ecf259e84cee'),'Îles Vierges des États-Unis'),(HUID('bd8e14d7-3b2a-4bd1-8b65-574314469aaa'),'Chine'),(HUID('bf8bfe0c-f4fc-4e99-8f6e-b5497333839c'),'Mauritanie'),(HUID('c11ee3bd-792e-40cc-ad5e-1c5bb78ccf01'),'Sahara Occidental'),(HUID('c1fb84e8-fb7d-40b1-bd65-c9279559761a'),'Kiribati'),(HUID('c22d25e0-b898-4175-bdd7-3ab62187fb44'),'Kenya'),(HUID('c48df392-7efd-435c-a284-5ff1eb793102'),'Arménie'),(HUID('c48f1359-2d45-4ae9-9326-27e4dac64b08'),'Îles Mariannes du Nord'),(HUID('c653cac3-85fb-4a10-b0a3-aec6f2d4fa9b'),'Madagascar'),(HUID('c6ae56ea-c67e-4778-bc2d-b77e8af60342'),'Luxembourg'),(HUID('c6d53bc9-efd5-4d8a-a291-55c2a91faa96'),'El Salvador'),(HUID('c6df29cf-9420-48af-a4d1-fe128ef873f8'),'Inde'),(HUID('c8039893-4636-4b76-9dcc-2ca8e5218d5c'),'Îles Féroé'),(HUID('c82af63e-362a-4ccd-a492-3592b9bf20d1'),'Hongrie'),(HUID('c85352b2-085d-4665-9f7c-5659674d5454'),'Autriche'),(HUID('c87d16d4-a3fa-4854-8276-49d12ca740a8'),'Costa Rica'),(HUID('c9dc0d39-43d3-4b38-b386-6f3183a60440'),'Polynésie Française'),(HUID('c9ef746d-32bf-4284-94ad-e2788d86f523'),'Tonga'),(HUID('ca05a0b9-35e6-4141-90b3-6404ae211972'),'Guinée-Bissau'),(HUID('ca85360f-8a4e-4c9e-8c71-886d3ffe5d1b'),'Antarctique'),(HUID('cafe3ac2-5145-48cd-8cfa-60446eac73de'),'Seychelles'),(HUID('cb108c71-39b7-47d4-82c5-5ca7868a8b81'),'États-Unis'),(HUID('cb8d9fab-58b7-4d14-992a-19086e93956c'),'Philippines'),(HUID('cc9ac3f1-6f81-42b1-bb71-7711739a07d8'),'Nauru'),(HUID('ccf2d499-a5ea-45b1-a5a4-dbde2d49134e'),'Terres Australes Françaises'),(HUID('cd436150-15ff-47e4-8cf1-b7d94ff23d48'),'Jordanie'),(HUID('ce98d857-519a-45a6-b538-b06cf30614b1'),'Svalbard etÎle Jan Mayen'),(HUID('d36ad7a5-31e0-4f88-b85b-c2122b6fe7df'),'Afrique du Sud'),(HUID('d40b8c36-9fc3-435b-877d-9f8e837f0feb'),'Slovénie'),(HUID('d55d91dc-be7c-4e5c-92d7-6f2fb64a288d'),'Belgique'),(HUID('d7b069b4-1fee-4b4c-8ecc-dca26704a891'),'Tokelau'),(HUID('d7c6c8bb-abc5-4825-93ac-a7fb89ff318e'),'Réunion'),(HUID('d959fc3d-71eb-4557-a3da-b94ced008b7b'),'Belize'),(HUID('d96ec0f2-f88a-40d9-b50f-7b6065ccd86b'),'Burkina Faso'),(HUID('d9866c64-9a15-4af9-b170-7af85af27803'),'République Populaire Démocratique de Corée'),(HUID('dbb07160-861b-434d-bcda-de3851556a38'),'Bangladesh'),(HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f'),'République Démocratique du Congo'),(HUID('dc0c70d6-6d84-4b56-9a64-552cc21cbd64'),'Maurice'),(HUID('defa570e-d974-4bc7-998b-3da7c24ef8a3'),'Cambodge'),(HUID('dfac333b-fd0a-4455-bd3c-2064c261947d'),'Pitcairn'),(HUID('e1bc4216-e3d6-4def-b381-f513a0ba4b64'),'Pérou'),(HUID('e1c264a2-fe0a-456a-a577-5d406d536f90'),'Somalie'),(HUID('e20c4c28-b219-43f6-ae21-df3f42f5a5a3'),'Îles Åland'),(HUID('e238dbfa-a484-428a-a329-0216be8aa454'),'République Démocratique Populaire Lao'),(HUID('e34fe31f-1a32-4678-86ac-770cb0ce83cd'),'Malte'),(HUID('e38d917b-01be-4def-8cee-010e5b8aae4d'),'Tuvalu'),(HUID('e6fb0216-1cef-4025-b660-a525eaba14f5'),'Brunéi Darussalam'),(HUID('e751c871-1ca1-4592-be57-292c1a075841'),'Hong-Kong'),(HUID('e836a8e3-46e3-4e22-80c6-3cb34dbd0d0b'),'Guatemala'),(HUID('e8a94d3a-db30-4d45-ba00-0515a524fb0d'),'L\'ex-République Yougoslave de Macédoine'),(HUID('ea0e9437-a94f-4517-b4ce-00cda4d34a42'),'Géorgie du Sud et les Îles Sandwich du Sud'),(HUID('eb0932d5-c0a0-4060-bbe1-2b9146b45faf'),'Anguilla'),(HUID('ec317737-e0ab-445f-b03c-d6d62970e4b9'),'Slovaquie'),(HUID('ecded130-80e6-442e-bfb8-60b64406e3e2'),'Sénégal'),(HUID('ed2c6fa7-b014-4da9-9451-3e9e3253339c'),'Nouvelle-Zélande'),(HUID('ef454785-a7a6-422c-91a8-fe228fe915bf'),'Thaïlande'),(HUID('f1180efe-a32b-4a0a-bfb5-f169e5128208'),'République-Unie de Tanzanie'),(HUID('f16822a5-edfe-4290-bf44-d2280e40c54c'),'Turquie'),(HUID('f2ef00e1-5c79-42be-a925-654b891fbdf3'),'Canada'),(HUID('f3e37592-3082-48ef-b271-4e6925f32f38'),'Porto Rico'),(HUID('f49db537-33d8-4f22-ae5b-e842db478665'),'Côte d\'Ivoire'),(HUID('f5c2fa99-8720-4d99-be71-5a0feb8311b9'),'Paraguay'),(HUID('f6fc2934-9b0d-4506-afbd-8d29eeb58b39'),'Cuba'),(HUID('f8bfd7db-0b45-4189-beb1-98880277af0f'),'Timor-Leste'),(HUID('f906468a-dbf5-4d9f-8873-b37e5838b33c'),'Australie'),(HUID('fad6d1a4-a7d1-4d30-ab89-8216957ea00e'),'Sri Lanka'),(HUID('fb9026ed-8c1c-4652-ae2e-284d91d54980'),'Israël'),(HUID('fb93c48c-6966-45fc-832d-4f831295dcb5'),'Mozambique');
INSERT INTO `province` VALUES (HUID('08d9469a-e29e-4af6-9493-842021c593a7'),'Kinshasa',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('2feea5a1-b738-45de-95b6-947e35e11f79'),'BANDUNDU',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('47927e29-2da0-4566-b6e5-a74a9670c4c5'),'Bandundu',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('4abb1125-06fc-4214-b4b4-2eab12282a14'),'Nord Kivu',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('525ecb4f-ae8d-40e1-9f86-913c5fe9b5a7'),'KASAI ORIENTAL',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('5891deb5-e725-48b2-a720-cbfcb95da36b'),'Kasai Oriental',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195'),'Kasai Occidental',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('63666f8a-08ca-4123-80a9-ba3d334d8529'),'Sud Kivu',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('78aab064-6e10-4d88-b223-472bfe2eddc4'),'Province Oriental',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('8593d394-5603-4a7e-9774-2ead4b6c3ddd'),'Maniema',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('aedbaf79-a0a2-4e76-bdc7-451c4191b876'),'Equateur',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('c659e154-51f5-46c6-8891-ebefb9d3ac5f'),'Katanga',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f')),(HUID('f6fc7469-7e58-45cb-b87c-f08af93edade'),'Bas Congo',HUID('dbe330b6-5cde-4830-8c30-dc00eccd1a5f'));
INSERT INTO `sector` VALUES (HUID('00161162-76b3-404d-8988-a65296c6ab89'),'Kamiji',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('0043f393-cc5f-461e-b6b6-265b321b6cb1'),'Nyunzu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('00712a73-694f-463e-b111-995871395bc1'),'Lukonga',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('02ef7587-5daf-4681-845b-91df342f2b3e'),'Lubero',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('0404e9ea-ebd6-4f20-b1f8-6dc9f9313450'),'Tshikapa',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('046303c6-64b2-4e80-9604-0cd0cb662a32'),'Seke-Banza',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('06122185-4090-483b-b5fe-ea49066fd9a2'),'Rungu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('08515b5c-b75b-4fd9-9351-253530b8a89a'),'Kanshi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('0a74dabe-4b6e-433a-b823-6f28450d8b97'),'Ingende',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('0c4c8408-5d19-45d3-9d92-2fca121883fc'),'Bikoro',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('0f5bc1cc-43ee-4ed3-a619-27959e693c36'),'Dekese',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('0fc58c0a-fb13-4041-84cf-fb7ba9c2a9af'),'Katanda',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('0fdbe200-1f0f-4e36-9dae-399b802a7676'),'Lukemi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('10433633-77b5-4793-a5f8-c08123babe2f'),'Ango',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('129b3cfc-dd5d-40d7-9e17-e15f3ebc44c2'),'Mushie',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('1411eadd-7141-4d33-a8a2-828a857975b8'),'Kasongo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('15b4c660-ee2c-460e-ac76-4e18dce1cf11'),'Ilebo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('163d97fd-ad7d-4ee5-8c09-6a797f418ef5'),'Mwene-Ditu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('1660f5b7-7de1-42d9-b9ff-b04383776fa6'),'Yahuma',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('16e6bb51-fcb8-4664-96de-bcc3473d1951'),'Mobayi-Mbongo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('18333c2c-f7f1-45a4-ae28-0e863e010ff0'),'Monkoto',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('18abe019-f0b4-4baa-a90d-2ca2155bcdd3'),'Lemba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('18d9e23c-c724-4cd4-8d21-bc599aba6cf9'),'Irumu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('1af03ec7-2b26-4683-a2bf-37bb407f78d2'),'Kaniama',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('1b689279-3387-4403-885c-0d1f87fc8ffa'),'Mahagi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('1ee1b4ab-0adf-48e5-98c7-b006d2e9e0e9'),'Ngaba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('1fdd8974-140a-4da2-a912-43bcc923d3db'),'Aketi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('21c9c8f3-8487-4c9e-8adb-cd1d2527c73e'),'Ngandajika',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('23da4785-acac-4f82-a5b1-c95f6c170fbb'),'Nzadi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('23f5bd5b-79d2-4d08-ad3e-39bfbe544a66'),'Kisangani',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('242e0a53-dbb6-4ffc-821f-1bf3622ea2a2'),'Kasongo Lunda',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('26127b70-9730-4c24-8a99-56eec91258ce'),'Maluku',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('26575a6d-965a-44c8-90f4-855a626c6549'),'Zongo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('28117ca2-a30b-4d70-8fa6-f6ac17ba90c1'),'Mont-Ngafula',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('28a41072-0613-4f31-a55c-6abc3210cdc0'),'Bongandanga',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('28e3b62a-5fe5-4dd7-a147-7e9c712f1a6c'),'Boende',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('297686fb-c81e-4d39-9309-06974a821e5d'),'Matadi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('2a0d4b64-f26e-4c5f-864f-9efec0fe1722'),'Djugu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('2a40b008-2bcd-4bf6-af9a-fc0d86ecd121'),'Muya',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('2b8caccb-fe82-458a-8372-79eb2e658238'),'Walungu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('2bdcbad7-6a58-4a7b-8cee-65709d301a97'),'Lukolela',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('2c8c86da-463d-450d-9545-1b4036fe8230'),'Dilolo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('2d62908e-7df4-450e-ac44-5552c317b389'),'Sandoa',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('32fac9d5-843a-4503-b142-21a3396c6f50'),'TSHIKAPA',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('33ee6500-8d01-4216-8d96-90814e1ea929'),'Dibindi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('34621292-a72b-40ee-a9ae-c9e84103ebb9'),'Pweto',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('35920a53-42b8-4a4d-92f7-9bb6955f6272'),'Kalemie',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('36b1b4b2-5115-4aeb-8f9d-2476d203e7bb'),'Kasa-Vubu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('37923dae-6efd-4b0d-9c89-61f5841f3a0f'),'Bomongo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('37e69026-9e4c-4ddb-9d61-a3e966fca7b7'),'Moba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('3a68a0a2-4744-47d5-bb81-613209ec9c17'),'Masisi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('3aa6a5c9-2239-4555-a131-3f1d726ddef3'),'Madimba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('3c385f85-a734-4ec3-bb5a-4490bdb93130'),'Masi-Manimba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('3c8005f6-2e45-4414-be91-a85c83f1a5e4'),'Bagata',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('3dc6f4d5-7a0c-4a61-bdc3-31fd99921674'),'Likasi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('3f5f74d9-9c20-4426-9fab-911f2b0d25bd'),'Bambesa',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('3fa742ce-e47d-41f0-8f23-4c0c733d831e'),'Songololo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('43b9e360-3760-49b8-899b-7a85b54e792c'),'Disasi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('449f5802-f33c-4455-b90a-aedb993e3c63'),'Katoka',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('45e59132-dcd6-4966-9ebe-099c80d5022d'),'Kiri',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('45f509a7-789d-43f2-b629-fc538862d12b'),'Lomela',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('48f66fc1-909d-49a7-be89-733791568be4'),'Kabalo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('4a6c03d9-389e-4e58-84f5-dce7b6d4ff30'),'Yakoma',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807'),'LUEBO',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('4d745d18-4211-45f3-b559-704c0b36fa27'),'Businga',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('50553c00-f754-4d97-ae03-8a8e91f537df'),'Kahemba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('5557cf30-1546-496e-9433-5f7d106d31dc'),'Matete',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('571f50ad-76c5-413f-b2bb-04d2c30bc020'),'Lupatapata',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('576341c1-c9a2-4f98-9406-67bc2c9f3903'),'Demba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('5aecf8b7-d37e-4c42-83c4-0a77ae43f751'),'Tshilenge',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('5d7ccadc-ddf6-41eb-93f7-a505e3280558'),'Nganza',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('5f9a403b-8a51-44fa-b71a-84f716ed1a09'),'Kindu.Kailo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('5fc11422-272b-4a76-abff-b67428b9efc0'),'Dimbelenge',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('613de3d0-cd59-454a-8dbc-6ca28435b237'),'Mankanza',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('61414179-25e1-494a-895b-90d44138491c'),'Dibaya',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('614b693e-722f-46a7-8df2-d6a945058fc9'),'Libenge',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('61b9f9ed-8c6c-4c29-90a5-ff1873c52ae8'),'Niangara',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('63e7114d-ad97-42ce-becc-d6470df4c65f'),'Poko',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('666cb4cf-dea7-441f-a171-0ed278e5b5f7'),'Lubudi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('66f4ea8a-4fc0-4b96-b38e-da14cec82888'),'Budjala',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('66f6a8be-55f6-48e1-93ce-3f04e7a168e5'),'Kipushi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('673b2ac0-e37b-4c0d-b7d9-67bf437899a6'),'Lusambo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16'),'KAZUMBA',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('69b61f9d-a133-4b41-931c-a0ffb41eacf9'),'Kisenso',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('6a3273a7-2a28-4ea7-97c2-379b64dd453c'),'Ubundu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('6ae5212b-7264-45ed-98e4-924da5e13e2c'),'Wangata',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('6e1182b4-e6db-41ca-a171-4b7082e73f91'),'Kabare',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('7011a027-78f3-41e0-9d81-8889974d9981'),'Luozi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('709d8171-e321-4030-9b96-cc2854734b21'),'Gemena',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('70bcfa7d-192b-478b-abff-cc72b76c9771'),'Popokabaka',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('721d1770-a459-41cf-bb47-96c28f855fd1'),'Lingwala',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('739712ca-18aa-41ac-80b0-eefae0538e9d'),'Bukavu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('74359b01-4dde-41a6-a1b1-dd0976bd135c'),'Bipemba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('75f6181f-a221-4db5-bb44-f4a546813a9a'),'Kabongo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('7657209c-fb01-4e1a-b353-9ae6451b6217'),'Isangi-Yanonge',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('7792b6e5-8489-4df2-9c6a-01645e8500ed'),'Pangi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('779a7701-2e5d-4ffb-94a1-04dbc92e598f'),'Makala',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('77fbf335-901d-4ed9-ac61-3babea00c053'),'Oshwe',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('78d8a71f-bbc4-4582-b01d-a86eaa886af5'),'Kasangulu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('7b1edc56-2b89-4e74-876e-45d03c824b90'),'Lodja',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('7b43db48-6f46-4132-ae8c-ccbaf3d515d8'),'Kamboye',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('7d2740c1-aac9-40dc-8469-b1f74916afee'),'LUKONGA',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('7e340b5d-7805-4ed5-975a-af3146c89f79'),'Lukula',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('809277d2-907d-42e6-97d9-bbc65296db2b'),'Bolobo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('81d6c5cd-0790-4f23-95ae-d788a40a1751'),'Kazamba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('847eb823-8304-4b75-a2eb-5398580aea13'),'Limete',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('87055ace-2f6f-4a8f-9c07-1743079f01e9'),'Dibaya',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('884dc747-3d22-4532-a791-4bbfe6dc6264'),'Mwenga',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('88d42b25-fa0c-4b3d-b9e5-3695a4e2b578'),'Mambasa',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('8a3dfa11-ffa5-47df-96c6-3a146c66810d'),'Djolu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('8a75a37f-9015-4be8-ac86-48876491e556'),'Kutu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('8c4df7cc-69a3-4406-a9d6-9a9d6909cdcf'),'Miabi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('8df99c2b-7071-4619-9f79-80996c972f30'),'Diulu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('8e2a40f8-842a-4e28-be7c-d51c38c638ab'),'Manono',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('9085be70-c133-4357-881c-310a1dfd8e20'),'Kitambo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('92a450df-89d7-42b8-9206-70eb43c3cfed'),'Kamina',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('92b527f0-5138-4879-9449-b92101563ec1'),'Kinshasa',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('937f6daf-3f04-44ee-a95a-2809e67286f5'),'Lubefu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('942b5043-b5ed-42b4-ad08-3956d007438f'),'Gombe',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('958e84c3-47b4-4b74-a83e-c0d36756f877'),'Bandalungwa',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('969d5e21-4355-4d35-b0e0-6c50180cfd43'),'Bondo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('96f1ac9f-619e-43eb-a460-63dcf249ee71'),'Mitwaba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('98c2a269-565d-4d4f-830d-7068ce954ada'),'Bukama',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('99666af5-bea4-447b-b520-eb8b2207b9bd'),'Lisala',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('9ab1a069-be59-419a-842c-2a3ad8c71e0d'),'Kazumba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('9b2d2af3-29ad-4d63-bcbc-644cd792a849'),'Walikale',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('9c62cb16-a676-4e22-a7a0-44fcfede1f61'),'Uvira',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('9cf5a7f2-4199-4a87-905b-709c7a0df73f'),'Luebo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('9f1d4551-2cc8-4093-a7db-c6f8466c5781'),'Libao',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('9fff0dda-7823-410b-9a6e-301de4abe5ca'),'Mbadaka',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('a12a6bb9-ea8b-4f04-89c2-2b935916272a'),'Tshela',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('a2911772-aa8a-4193-943e-f7e35b296935'),'Bumbu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('a3005df8-eb72-4b7c-b6e8-e9ef13aac73b'),'Aru',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('a3b5109b-3b9e-439e-8af0-732ecdc5d904'),'LUIZA',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('a4c99d8f-8735-4430-b74f-0f1bfc4f6488'),'Dungu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('a5387cd3-8ed2-4bbb-a675-db71681bf38a'),'Watsa',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('a5f957b8-b3f2-415d-b999-f8c0f288ce0b'),'Bagira',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('a65247ea-4dfe-4bdc-8e52-a0400d908b65'),'Sakania',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('a9cdd178-0a20-42cd-b271-e65d21f7b926'),'Kongolo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('aa447d25-0e37-44a9-90d1-55f5f305e661'),'Mbanza-Ngungu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('aa879d9c-f878-49d8-a32b-a09fdfc1760d'),'Kabambare',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('ab508f7c-7f3f-4b92-9923-b7ed443ec2f5'),'Banalia',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('ac313d70-1ae1-4c7d-ba97-b50770d7b7a3'),'Kalamu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('afdf9174-e455-4f80-947b-a3b57a7a7d91'),'Basoko',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('b0d0cdd8-9ef7-4aff-b241-0efb040c59f2'),'Feshi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('b28cfc07-f565-4537-9f74-7b82343722a4'),'Kwamouth',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('b2e279ac-a673-450d-b261-edff5f5bbc8b'),'Kabeya-Kamwanga',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('b58e49c6-e55f-4087-9e70-c39b4c63a5cb'),'Kole',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('b61e94b8-0574-43ab-be68-d33e8acb5852'),'Idjwi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('b8884f4d-94bf-4af2-9464-f41fba6d1914'),'Mutshatsha',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('b9195720-9e74-45d4-b756-f6b32257a95d'),'Boso-Bolo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('b942e785-cbfd-4133-8de0-9a0dbafe2406'),'Masina',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('b96b35b0-729b-4a3a-8406-cfd699445d4e'),'Fizi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('bb0adda2-556a-4bb8-9fda-a85de7db8624'),'Kasenga',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('bb6fdcf1-c886-4262-b5de-e000ab09212d'),'Mvuzi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('bcf866bc-adbd-4fdb-841c-e01c4526f1c0'),'Ikela',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c04a403e-cca4-48c6-9cd4-38f188528199'),'Nzinda',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c1548205-3004-4095-a94e-f9e7779ee1f6'),'Gbadolite',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c209dd6a-31d0-47be-8fed-28450176e91e'),'Mweka',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c23b1c57-4664-4f07-a8be-205fc02b2f19'),'Nsele',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c2d209d6-2491-465c-a486-bb5099815629'),'Kimvula',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c2eab5cb-bcf3-4c9c-a8ad-20edf6f9e254'),'Kindu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c30c0542-bf5e-4d13-b749-c2768597552d'),'Yumbi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c352def1-2a7e-4a2c-b51a-010668be53e6'),'Goma',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c3fcf969-e86b-4cc4-b57d-a37294bd9a26'),'Rutshuru',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c43d8e55-7a42-4fee-9378-a830c0f42b43'),'Ndesha',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c5eda8b8-f7ff-487d-ae93-b6437e85a40f'),'Basankusu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c615b887-146f-4914-8235-cb9bdf3ae7e3'),'Musadi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c77d9a87-ea70-45d1-9077-4308ba1b0c85'),'Punia',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c77fc24f-b801-4776-88e1-3fe72b6be356'),'Idiofa',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c80afc8b-3355-4607-8efd-daceeac312fd'),'Gungu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c84c818a-cbb9-4bb5-b096-c5ec490bf476'),'Barumbu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c8cdc166-3800-4b3a-9094-362c76ec6565'),'Ndjili',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('c95a7655-f4fb-4350-9dae-aed223ec2f82'),'Katako-Kombe',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('ca0bfc4a-8978-4a83-8e6b-bcc6098f4673'),'Kalehe',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('cc1f6302-8c1f-4766-80ee-87bf872bbd45'),'Bokungu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('ce0c76bf-5437-4c91-b4c2-4e1d434a31ce'),'Mayoyo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('ce567d8c-ecab-4366-b537-af3371dfaf3a'),'Bafwasende',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('cf1d4fe6-1553-4732-b0ec-e4d7cf1c8edf'),'Selembao',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('d097365d-16a2-4825-a97f-313a65ecf4b8'),'Inongo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('d33f546b-b1e6-4b56-99b9-512fa71f9db8'),'Lubumbashi',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('d6ba6a6e-0e72-4d16-87e1-798823694092'),'Beni',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('d892cb89-4249-4c69-a63e-099503689461'),'Ngiri-Ngiri',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('d96f7e9a-1917-493b-bce7-c55b601e98aa'),'NDESHA',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('da863c56-2545-4295-a47b-6e5ea872233a'),'Wamba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('dd248048-b687-4fb6-a97c-81e73f95cb49'),'Luiza',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('df79532e-7beb-427e-be03-b6b3e6006674'),'Kungu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('e2016756-76be-4ac9-a842-e39db81f251c'),'Nganza',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('e27ebffd-899b-4dd9-bfec-24bcd08f8ca9'),'Kabondo',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('e399eb67-2ac9-436f-882e-7062509309b6'),'Bumba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('e3ce0933-988c-484d-ad8e-599ea421cdfc'),'Bulungu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('e6fb5edb-3c4c-4d66-8c90-e27035f91492'),'Ibanda',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('eb36e83e-616a-494b-af9a-1c2244048cd1'),'Kimbaseke',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('ec5bd448-7e52-46e4-831f-d5df4cebb349'),'Kenge',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('ec71f274-6b6f-4e89-9f38-f7469c09b8e8'),'Ngaliema',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53'),'Kananga',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('eda46e79-d875-4a9f-954b-e26eb13203b1'),'Nkoko',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('ee483534-e56c-4411-8329-1005f98d2e1d'),'Kadutu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('efcf78a0-8906-4a2c-8367-6925e4443c3d'),'Malemba-Nkulu',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('efd892ac-cc41-48d7-84bb-59984c655586'),'Kabinda',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('f17c2f58-a772-4e62-877e-d6175b2a879a'),'Opala',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('f57908bd-5338-44a3-ae2e-29a70f4ee988'),'Moanda',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('f751c676-2846-4f5c-85a4-2145f8ad03b4'),'Shabunda',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('f84c8975-3281-44c8-a5d2-bb89b61fd482'),'Nzanza',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('f8fdb306-e4ac-4472-ac1d-46815bb797aa'),'Befale',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('f9608a66-b425-4e90-878d-458174e392e1'),'KATOKA',HUID('5cf83463-2718-4a65-abdd-f9ad2fe4e195')),(HUID('fae6275b-3062-47dd-8d2f-1a27d76c30d7'),'Buta',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade')),(HUID('ffe045bf-0200-4a5d-95cc-fd008de45809'),'Bolomba',HUID('f6fc7469-7e58-45cb-b87c-f08af93edade'));
INSERT INTO `village` VALUES (HUID('03a329b2-03fe-4f73-b40f-56a2870cc7e6'),'MUBUABUA',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('03b44338-a38b-4450-b12d-3acc4f3d3465'),'CAMP  BOBOZO',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('04839a78-55ae-404c-8d19-91c40c2665a1'),'LUEBO CITE',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('07d1793f-599c-46b2-af09-6358b50877c2'),'ABATOIR',HUID('7d2740c1-aac9-40dc-8469-b1f74916afee')),(HUID('0b8a9dde-55b9-49f7-8687-bfd06c10d6f9'),'katoka epro',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('0e28cfc2-ed02-4751-84d9-edf12945ea61'),'LUEBOCITE',HUID('9cf5a7f2-4199-4a87-905b-709c7a0df73f')),(HUID('0eae809f-65ce-4c62-9251-5fca464a9654'),'LUSAMBO',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('0f2d5a1b-9db7-49d3-9e83-9e26366c1871'),'MIABI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('1071074c-d2ed-4cb1-82db-a8aa373cd7d5'),'route kanyuka',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('10937a06-c533-475f-8575-8774120da254'),'MANKAZA',HUID('a3b5109b-3b9e-439e-8af0-732ecdc5d904')),(HUID('10fc547b-57d5-4482-8dfa-1f39ee26026e'),'Q HOPITAL',HUID('dd248048-b687-4fb6-a97c-81e73f95cb49')),(HUID('11375ae7-efe6-4c81-b4b1-96399b8371bb'),'CENTRE VILLE',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('11d8148e-7b20-4daf-a44d-44be109cbb53'),'MANKANZA',HUID('dd248048-b687-4fb6-a97c-81e73f95cb49')),(HUID('128f26ad-4d22-4919-ad17-8690e4d13062'),'TSHIBEMBA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('13eacd33-7051-473d-a672-c6d2119a38a6'),'NGANZA  SUD',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('147a9142-8fac-4bc1-a9b1-800c241a4a49'),'MUT',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('14885f2e-9b3e-46db-bcb9-48682d0b7ced'),'BAINCKY',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('15bc7df9-aa1e-4dd3-849c-750b579498a1'),'CAMP  SNCC',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('15de2c57-dbd4-412f-a658-722d65d18277'),'KATALAYI',HUID('32fac9d5-843a-4503-b142-21a3396c6f50')),(HUID('1696a457-bb9e-4bdf-bd84-124dcfe60258'),'BIANCKY',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('16b2f52f-a8eb-4029-9761-d5477be1b7d4'),'KALUEBO',HUID('32fac9d5-843a-4503-b142-21a3396c6f50')),(HUID('17e3d0a1-96a5-4d58-9faa-e21ce6b9343f'),'BANDUNDU',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('199d0513-a651-4774-9588-418e074864a6'),'MUTANDA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('1c059a01-1365-4dc2-a4ed-7d5ed5a9c2a7'),'Vanga',HUID('10433633-77b5-4793-a5f8-c08123babe2f')),(HUID('1c0a9b88-a680-4199-b7fc-a19b74a3e366'),'TU',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('1e2bebc8-5770-4361-8c0d-6deea10dd8b4'),'KANANGA2',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('1e87572e-8828-42de-87a1-649dd485bc3e'),'NSELE',HUID('5d7ccadc-ddf6-41eb-93f7-a505e3280558')),(HUID('1f162a10-9f67-4788-9eff-c1fea42fcc9b'),'KELE',HUID('0404e9ea-ebd6-4f20-b1f8-6dc9f9313450')),(HUID('20e2d69b-a0cc-4c36-9f72-729af7ea2c23'),'NGAZA NORD',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('2125cde9-ed24-45db-88fd-1df75019d9b0'),'KANANGA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('22e1a7de-e663-40ad-9cc8-1983422a6b51'),'KANDIBU',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('25805de2-f4e6-4f5c-86b6-d00e5de5b026'),'KANAANGA2',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('25caee44-be63-4e98-928f-5b2c82eefc53'),'YANGALA',HUID('a3b5109b-3b9e-439e-8af0-732ecdc5d904')),(HUID('25dc35b3-1596-4756-9a58-6642b6a16abe'),'LUBUWA',HUID('d96f7e9a-1917-493b-bce7-c55b601e98aa')),(HUID('265d92fd-15b6-4939-a93b-89fffcc30e21'),'BILOMBA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('26caa7e9-c27e-4815-8b99-dce7d1c5b102'),'KANANGA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('29b373a8-7830-4a8a-9cbd-617919c6153c'),'KAPANDA',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('303b11d4-7069-44f3-a355-76248560e900'),'MUT',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('316cfb84-728f-410f-b9d1-e8edc65565b8'),'NTAMBUE SAINT B',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('352ae887-ea97-4f09-9761-72fca27e594a'),'NKONKO TSHIELA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('381d6217-4061-4bcb-ab46-f5240349f8bf'),'INDISTRIEL',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('38a3ee76-caf7-42f2-801c-54478c517214'),'NGAZA NORD',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('3a38480f-7c28-4903-aedd-106177513133'),'MFUAMBA',HUID('87055ace-2f6f-4a8f-9c07-1743079f01e9')),(HUID('3abd1c96-8e19-47c4-80b0-29e56e9b9cda'),'TSHIBANDABANDA',HUID('d96f7e9a-1917-493b-bce7-c55b601e98aa')),(HUID('3db7615b-140f-4d24-aa77-d96a9e2be6c1'),'MUTANDA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('4087594a-fb0f-4954-a28e-e83008652ff7'),'MATAMBA',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('42f22085-a5eb-4a08-9449-b2ac5ef2e50a'),'FOND',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('4478b5ea-85f6-4b55-81dc-6a3b7f249508'),'Tshikapa',HUID('0404e9ea-ebd6-4f20-b1f8-6dc9f9313450')),(HUID('4690478f-f386-4871-9cc4-37bc3bf8f8bb'),'KATUMBA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('47899301-8525-41ea-86a5-19bef0ecfba6'),'TSHIALUPEMBA',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('47bdd878-34a8-4929-995c-2007319d2d65'),'mutanda',HUID('5d7ccadc-ddf6-41eb-93f7-a505e3280558')),(HUID('47db851e-852a-47a7-83f0-cbdf4bbf6d47'),'kasangidi',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('489683d3-1109-479d-aff8-284a1361b7d6'),'BULUNGU MISSION',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('49089ea1-4d54-4439-a63f-c68c4fccca0d'),'telecom',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('494273e1-88e5-47d9-8e17-044d79f23b1e'),'LUNYEKA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('49b14b78-e9a6-483b-a206-b0b1c2842a21'),'TSHIBALA',HUID('a3b5109b-3b9e-439e-8af0-732ecdc5d904')),(HUID('4e59f47c-4ba6-4852-af4b-ca32b269d1e2'),'KABEYAKAMUANGA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('4f4b9827-6f62-4f50-a2ee-066f0b872df7'),'QUARTIE MOBUTU',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('50ff9ee8-03b4-4470-9136-a8f4993fae31'),'KELEKELE',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('517bce41-2369-4099-9e61-9b27adc49ba5'),'KANANGA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('54ac54ea-e3e6-4005-b650-38d84970671a'),'KANKULU',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('558c6817-4aaf-49a4-858f-c131ad4afde3'),'BENA KASHIYA',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('56eb4448-f59b-4ce4-925a-b5f15d72e9f6'),'KELE',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('57cc5310-e1d0-4642-bfc6-82d5c25a23b9'),'KAKUMBA',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('580547fd-64aa-411b-82d3-56f344c8ba28'),'Katoka I',HUID('449f5802-f33c-4455-b90a-aedb993e3c63')),(HUID('581e78e3-b0fa-497c-a6e5-9839b115482d'),'NOUVELLE VILLE',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('58eb5624-1bba-4fe2-89d5-fc409adff9b1'),'TSHIBATA',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('598bfcb4-d82e-45da-8cc0-c5af988a2023'),'BIANCKY',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('59b36693-8988-4d00-ba8b-fd0cf864c8cd'),'MANKANZA',HUID('dd248048-b687-4fb6-a97c-81e73f95cb49')),(HUID('5a06f690-8ed5-4a67-98a4-6c991aad2404'),'KAKUANGA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('5c13e648-d5b1-4e2f-8c88-316ee0670015'),'MUTANDA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('5c1eea01-c3d4-4e8c-b998-85561f21360c'),'TSHISAMBI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('5d376356-875e-48af-b010-c749ffa8944b'),'KABAMBAYI',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('5dbd6628-4058-4eb0-8d13-bfa4e2d93693'),'MBUMBA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('5f3563a5-12a4-472a-8149-6da3d78a7f85'),'TSHIKAJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('606009f9-ba9e-4a2f-87f7-f430f1c5a194'),'KABEMBA',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('60602145-f09b-4aa1-9769-10d79b0aaad6'),'BITANDA',HUID('87055ace-2f6f-4a8f-9c07-1743079f01e9')),(HUID('615a2e8c-09a1-48ff-869b-01ca41320872'),'KELE KELE',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('63267121-3ab4-4080-8532-f70a777312bb'),'KATOKA III',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('633e3fe8-c5dd-4055-a707-3517e50496f2'),'KONGOLOMOJI',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('64ff00ba-8e8d-4fba-b792-2087a65d5d90'),'KAMUESHA',HUID('32fac9d5-843a-4503-b142-21a3396c6f50')),(HUID('6533a26e-223d-48e6-818b-bd5a74b9e833'),'MBUNKONDE',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('67227b5c-42ae-4bca-a06f-59598cf2500e'),'KAMAYI PRISON',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('67698835-f986-43bc-bcdf-44ac177810ed'),'BIANCKY',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('676d5164-93d5-44ba-9d29-ed6ccca49f72'),'SNELi',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('67879a36-119c-4347-8d08-459e7f9aa5b4'),'TUKOMBE',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('6bd7b8d5-dbeb-4a16-9f87-d7adc5d2bb3c'),'kabanza',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('6c5b6b00-1e11-4522-b553-7047fe7723fa'),'OASIS',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('6ca88ab3-d819-408b-b576-8f6da9a4876a'),'KANANGA2',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('6d31cf67-d13c-405a-8304-38c8cfd46bb5'),'biancky',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('6e268675-bd9a-4704-9f05-115e376fee1f'),'Songo',HUID('1fdd8974-140a-4da2-a912-43bcc923d3db')),(HUID('6f5c78cc-8d44-44e5-8f6d-ee55f1f072a8'),'KANANGA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('707aca50-3b72-4bd0-9b58-728fd42b58ed'),'YANGALA',HUID('dd248048-b687-4fb6-a97c-81e73f95cb49')),(HUID('73d45b61-8b04-4867-a467-5454258dde13'),'MALANDJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('761c8a60-48ea-461f-b2fb-41312b4eacc1'),'TSHIBANDABANDA',HUID('c43d8e55-7a42-4fee-9378-a830c0f42b43')),(HUID('7b702c52-45bf-4294-b850-58fbbbd55fd4'),'MUA KASANGISHA',HUID('0404e9ea-ebd6-4f20-b1f8-6dc9f9313450')),(HUID('7bc6adfe-8bd9-418a-b698-ac70b8cc67b8'),'BILOMBAA',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('7d8e0e97-9f14-4b38-8ec5-a0c72e157264'),'kalumentumba',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('7e2c9522-8c7c-4545-b713-289d8316f0fe'),'KONYI',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('7fb433a1-814a-4de5-aaec-a553015bd2c4'),'TSHIKAPA KELE',HUID('32fac9d5-843a-4503-b142-21a3396c6f50')),(HUID('82694d61-072c-42a3-ac22-f3d9dce79c50'),'TSHIKAJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('827082bb-7e3a-4966-8717-1cc5342548fd'),'BINCKY',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('8385afe4-d58b-426f-9599-006b3bb6c3bb'),'KANYINGANYINGA',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('86f2ffea-c6ea-4280-87e8-0efaaf0654a5'),'TULUME',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('87e93e4c-b2ee-4ec5-944b-758a45153c81'),'BENALEKA',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('88328086-e9b1-462b-849f-4dbea280a2a8'),'NDJOKO MPUDA',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('8990c790-60d5-4765-9cea-46620f5d9843'),'KAKULU',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('8abe271a-54e7-4a9a-b4a3-10b177625bea'),'TU',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('8be33326-23dc-4efb-9b9a-fc1290d25517'),'NKONGOLO MONJI',HUID('9ab1a069-be59-419a-842c-2a3ad8c71e0d')),(HUID('8cd2059b-b6db-42fb-8506-7893a09493af'),'NDESHA',HUID('d96f7e9a-1917-493b-bce7-c55b601e98aa')),(HUID('8dd1ea6c-b30d-49b6-be49-33d5a965f4c0'),'TSHIKAJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('8f6cf551-b76e-43e5-add5-59997437baad'),'MUKANYA',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('9058c080-1e35-4f57-ae45-7889a6b9424e'),'Appolo',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('90cd5e3e-de9a-479d-a53e-42ac78a817e1'),'DIWELE',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('92247f35-570e-4d34-8387-5a701bdff900'),'SALONGO MUIMBA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('95ced117-87de-4db5-85f2-29c92a38d490'),'SNEL',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('96c737b4-8777-46ac-8954-ec91cb93320b'),'Appolo',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('978b7601-55d3-42cc-8f91-2e4ad32bc6ee'),'MPOKOLO',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('97db06e3-b4bf-4699-85c1-b75a051827c0'),'NKONKO',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('980171ca-aac9-4712-82e7-e08dfc7e3ff7'),'KANANGA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('99b5f4cf-1121-4af8-861f-ec3e18ad24a0'),'MUAMBA MBUYI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('9b73afa8-6dc1-4733-8cc4-c5c3db9b73ed'),'kamenga',HUID('c43d8e55-7a42-4fee-9378-a830c0f42b43')),(HUID('9ccfbb47-1e77-4245-a28d-721a0b3b7d85'),'T',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('9cd116cc-695d-4fc6-811a-8fa8793d2183'),'MAYOMBO',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('a02e17dd-f55d-481d-9d66-ea27bf1a2dfc'),'CE',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('a0a8998d-af22-4a73-9071-bd43a23f77e3'),'BULUNGU',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('a10b95aa-e448-4e19-a8e5-e3796e06f50e'),'MALANDI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('a1193c79-1ca4-4a5e-9d16-9e83d2ee8b6d'),'20 MAINS',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('a34a724c-348f-4df3-8db5-2e9785c7a198'),'MALANDJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('a65b96e4-e618-4a85-be32-fe173cfd6c27'),'MPOKOLO',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('a965629b-f883-4626-9189-0294188a5d1f'),'PLATEAU',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('a997bfb3-a1d4-4a67-a13b-1f7c2bb847f4'),'DEMBA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('ac6904ef-a283-4ded-aa51-39fd6022c389'),'KAMULUMBA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('ad8bb59d-7766-4133-b107-fb1167695127'),'MUAKELA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('aea7b09d-82c4-4b77-b38a-278d2cc41fad'),'BUNKONDE',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('aeee239a-524f-4e6c-9303-21f900d4f853'),'KAMILABI',HUID('d96f7e9a-1917-493b-bce7-c55b601e98aa')),(HUID('b1834bee-917c-4f25-a417-3323a26c84e7'),'MALANDJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('b2c1ebae-d02a-4564-b055-708bf452cb4a'),'KALONDA',HUID('32fac9d5-843a-4503-b142-21a3396c6f50')),(HUID('b469f945-b547-437b-bb91-e9e0cf65d924'),'MPOKOLO',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('b5ea7bb3-5c01-44be-a895-ca84a58e3348'),'AZDA TSHINSAMBI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('b6ba0675-fefd-4b5a-8917-ce4f5ef4f1a4'),'TSHIALABENYI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('bb96a5e5-d045-4e89-b705-37a11dcf6a9c'),'MPOKOLO',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('bc9abce4-eaf6-4f9a-98e8-19ada2f182d8'),'MALANDJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('bda70b4b-8143-47cf-a683-e4ea7ddd4cff'),'Tshikaji',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('bfd8563e-72db-4698-af0f-55bd7849369e'),'18 KM',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('c02de658-bbd2-47b2-821a-f6d78f3fe37c'),'TSHITUNTA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('c088e84c-96d0-4579-8e12-9598d1d51f13'),'MALANDJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('c145ad7c-8ed1-48f2-a347-08b5689912fd'),'DIBUMBA',HUID('32fac9d5-843a-4503-b142-21a3396c6f50')),(HUID('c1851465-fae8-4abf-81b4-2210d9a81ae8'),'MALANDJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('c1a2587a-17c2-4fad-9913-173f88cead0a'),'MUIMBA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('c1ff0a49-4a6a-4835-9601-ad6185a6c905'),'BENA MUKANGALA',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('c3e22d68-c5f1-46ba-a5f1-b67ecebc5dc5'),'KATUMBA',HUID('d96f7e9a-1917-493b-bce7-c55b601e98aa')),(HUID('c4caabef-c76d-468f-a4ce-9df4f406a726'),'MUT',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('c4cec408-fb01-46d5-a96c-63b8b16f5c75'),'LUBI AMPATA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('c77c3cb2-6c88-45af-bc12-29a23974360d'),'KATOKA',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('c7c2e99b-a5e6-4e46-9c5f-4d0aca89b408'),'PLATAUX',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('c8b5a6e0-cdbb-46ff-8874-7e69b872bb80'),'kabundi',HUID('5d7ccadc-ddf6-41eb-93f7-a505e3280558')),(HUID('c8df3920-79c8-4278-a69d-44e3c102993f'),'KANANGA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('cb2a535a-6a68-4d10-b665-c0f2fee62625'),'KAMBUDI',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('ce2b9b75-6bf4-44c7-9f53-77550040c5ec'),'MALANDJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('cf3664e3-0929-4852-93da-2ce77de84817'),'DIBANDA',HUID('87055ace-2f6f-4a8f-9c07-1743079f01e9')),(HUID('cfaec5b8-55a8-4adc-9eba-87ef1fd477a9'),'MBUMBA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('d0ae1271-224d-4bca-84ef-5a7afce551d5'),'KAMAYI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('d1497bf9-ebbd-47c4-9270-79705ccb5d97'),'LUIZA',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('d329ebac-d176-468d-b6aa-a7c3376177bb'),'KAZUMBA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('d4e00ec6-66bf-4bc6-97fd-46a628028c42'),'KATOKA  II',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('d77cc12c-9c12-49da-9fae-16c0c432c73b'),'TSHIMBULU',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('d9106570-80a2-4676-92aa-f496f2d4a841'),'BUMBA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('d9a23fb8-f61a-4ef8-a283-9a3347e45656'),'KANANGA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('d9f64f17-f4c7-4a13-ba82-1e4294a8b3f6'),'MUTONJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('db0f0b0e-ce9a-4cca-9dd3-72d3831669e1'),'DIBANDISHA',HUID('87055ace-2f6f-4a8f-9c07-1743079f01e9')),(HUID('db62ac4a-801c-48ac-9a9e-5f11fd531df8'),'PLATAEU',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('dd199231-441a-4400-8943-e059157fedf9'),'MBAYI KAMONJI',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('dd5eca0c-d5e4-4d56-bf14-5a53f988d3d1'),'quartie  hopital',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('df4b97bd-076f-447e-b2f3-45e6d3ef4dcf'),'KAMENGA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('dfcbd7cc-8a11-4c1a-9c12-d891f1453a8f'),'KOLE',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('e1f0bd41-d864-4e15-a6c8-086df92ecb2f'),'YANGALA',HUID('dd248048-b687-4fb6-a97c-81e73f95cb49')),(HUID('e4c5bbf4-761d-4a13-887d-fc43b0124969'),'DIBAYA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('e80f127a-2eba-46a5-93fa-fcf373fe5a9f'),'20MAI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('e89cf9d8-2ebd-40d4-a80d-92d7b230104f'),'Lusekele',HUID('1fdd8974-140a-4da2-a912-43bcc923d3db')),(HUID('e9ebdd35-9962-4a1f-9a27-9b88abcf14a6'),'MUKUNGA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('ea96b198-6c18-4069-a010-3b909d58bce0'),'KAMUANDU',HUID('d96f7e9a-1917-493b-bce7-c55b601e98aa')),(HUID('eb81ee19-7cc5-4d96-9900-4c0eb14889c1'),'epro',HUID('f9608a66-b425-4e90-878d-458174e392e1')),(HUID('ed54605b-82e9-4888-a06b-b96e505bfbd5'),'CAMP BOBOZO',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('edc5dea6-9312-4940-bc79-f2b341c19f4c'),'TshiKULA',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('eefd626c-00a1-4427-8109-86832bb007fb'),'nganza',HUID('eda46e79-d875-4a9f-954b-e26eb13203b1')),(HUID('f1357164-68f4-4ddf-a044-484225f878b4'),'NGANZA NORD',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('f2e9b1aa-bd52-42c5-94dc-3d27a63b58b6'),'Bulungu',HUID('10433633-77b5-4793-a5f8-c08123babe2f')),(HUID('f54f6dc3-b4b3-4c0b-92a8-2ec71b1bbc06'),'Kananga',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('f659d547-1b5e-412e-9b22-bd260123beff'),'NGAZA NORD',HUID('e2016756-76be-4ac9-a842-e39db81f251c')),(HUID('f9d555de-434d-47ac-86bb-b0fcfd3bc75f'),'PLATEAU',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('fc6f5cb5-fe72-4fff-bf8c-071c9ee43993'),'MABONDO',HUID('7d2740c1-aac9-40dc-8469-b1f74916afee')),(HUID('fd15ba29-b58f-4a53-9876-0b0993dc10ef'),'KAKUMBA',HUID('32fac9d5-843a-4503-b142-21a3396c6f50')),(HUID('fdd1bf3f-90ea-42f3-b837-45bb9512a43b'),'MATAMBA',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('fe80a34d-e090-4bcc-8cd8-3254b6436eda'),'LUEBO LULENGELA',HUID('4c9d1f3d-d5af-47ca-80fd-357c2f1fa807')),(HUID('fe8f842e-8c0c-4b71-ae67-58e5d55efc92'),'NDIOKOMPUNDA',HUID('9cf5a7f2-4199-4a87-905b-709c7a0df73f')),(HUID('ff0b4caa-9a0a-4dbe-9242-1e5d4d916ee0'),'TsBENELEKA',HUID('6912ae18-c57f-444b-a3f1-47cf539d2b16')),(HUID('ffa5d923-1c66-4bc7-9315-d5ec92779568'),'KANANGA',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('ffd0fa04-5fc9-4939-b7d9-368eda9278c6'),'MALANDJI',HUID('ecd22221-88ad-49e2-84b2-c8161ad39f53')),(HUID('ffe563ef-781c-4551-a080-7cec135351ff'),'KATOKA II',HUID('f9608a66-b425-4e90-878d-458174e392e1'));

INSERT INTO `enterprise` VALUES
  (1,'Test Enterprise','TE','243 81 504 0540','enterprise@test.org',HUID('a0a8998d-af22-4a73-9071-bd43a23f77e3'),NULL,2,103, NULL, NULL);

INSERT INTO `project` VALUES (1,'Test Project A','TPA',1,1,0),(2,'Test Project B','TPB',1,2,0),(3,'Test Project C','TPC',1,2,0);

INSERT INTO `account` VALUES
  (3626,2,1,1000,'Test Capital Account',0,0,NULL,NULL,'2015-11-04 13:25:12',1,NULL,NULL,NULL,1,1),
  (3627,2,1,1100,'Test Capital One',3626,0,NULL,NULL,'2015-11-04 13:26:13',1,1,NULL,0,NULL,0),
  (3628,2,1,1200,'Test Capital Two',3626,0,NULL,NULL,'2015-11-04 13:27:13',1,1,NULL,0,NULL,0),
  (3629,2,1,40000,'Test Balance Accounts',0,0,NULL,NULL,'2015-11-04 13:29:11',4,NULL,NULL,NULL,1,1),
  (3630,2,1,4100,'Test Debtor Accounts',3629,0,NULL,NULL,'2015-11-04 13:30:46',4,NULL,NULL,NULL,NULL,0),
  (3631,2,1,41000,'Test Debtor Accounts',3629,1,NULL,NULL,'2015-11-04 13:32:22',4,NULL,NULL,NULL,NULL,1),
  (3635,2,1,41000,'Test Debtor Accounts',3629,1,NULL,NULL,'2015-11-04 13:32:22',4,NULL,NULL,NULL,NULL,1),
  (3636,2,1,4600,'Test Inventory Accounts',3629,1,NULL,NULL,'2015-11-04 13:32:22',4,NULL,NULL,NULL,NULL,1),
  (3637,2,1,46001,'Test Item Account',3636,0,NULL,NULL,'2015-11-04 13:32:22',4,NULL,NULL,NULL,NULL,0),
  (3638,2,1,47001,'Test Debtor Group Account',3626,0,NULL,NULL,'2015-11-04 13:32:22',4,NULL,NULL,0,NULL,0),
  (3639,2,1,57000,'Test Income Accounts',0,1,NULL,NULL,'2015-11-04 13:32:22',4,NULL,NULL,0,NULL,0),
  (3640,2,1,57003,'Test Gain Account',3639,0,NULL,NULL,'2015-11-04 13:32:22',4,NULL,NULL,0,NULL,0),
  (3641,2,1,67000,'Test Expense Accounts',0,1,NULL,NULL,'2015-11-04 13:32:22',4,NULL,NULL,0,NULL,0),
  (3642,2,1,67003,'Test Loss Account',3641,0,NULL,NULL,'2015-11-04 13:32:22',4,NULL,NULL,0,NULL,0);

-- attach gain/loss accounts to the enterprise
UPDATE enterprise SET `gain_account_id` = 3640, `loss_account_id` = 3641;

-- testing financial transactions
INSERT INTO `fiscal_year` (`enterprise_id`, `number_of_months`, `label`, `start_date`, `previous_fiscal_year_id`) VALUES
  (1,12,'Test Fiscal Year 2015', DATE('2015-01-01'), NULL),
  (1,12,'Test Fiscal Year 2016', DATE('2016-01-01'), 1);

INSERT INTO `period` VALUES
  (1,2,1,'2016-01-01','2016-01-31',0),
  (2,2,2,'2016-02-01','2016-02-29',0),
  (3,2,3,'2016-03-01','2016-03-31',0),
  (4,2,4,'2016-04-01','2016-04-30',0),
  (5,2,5,'2016-05-01','2016-05-31',0),
  (6,2,6,'2016-06-01','2016-06-30',0),
  (7,2,7,'2016-07-01','2016-07-31',0),
  (8,2,8,'2016-08-01','2016-08-31',0),
  (9,2,9,'2016-09-01','2016-09-30',0),
  (10,2,0,'2016-10-01','2016-10-31',0),
  (11,2,1,'2016-11-01','2016-11-30',0),
  (12,2,2,'2016-12-01','2016-12-31',0);


-- create test users
INSERT INTO user (id, username, password, first, last, email) VALUES
  (1, 'superuser', PASSWORD('superuser'), 'Super', 'User', 'SuperUser@test.org'),
  (2, 'RegularUser', PASSWORD('RegularUser'), 'Regular', 'User', 'RegUser@test.org'),
  (3, 'NoUserPermissions', PASSWORD('NoUserPermissions'), 'No', 'Permissrepertoireions', 'Invalid@test.org'),
  (4, 'admin', PASSWORD('1'), 'Admin', 'User', 'admin@test.org');

-- Only modules updated and written to 2X standards should be registered in the application tree
INSERT INTO permission (unit_id, user_id) VALUES

-- [Folder] Administration
(1,1),

-- Enterprise Management
(2,1),

-- Users and permissions
(4,1),

-- [Folder] Finance
(5,1),

-- Account Management
(6,1),

-- [Folder] Hospital
(12,1),

-- Patient Registration
(14,1),

-- Patient Invoice
(16,1),

-- Cash Payments
(18,1),

-- Supplier Management
(19,1),

-- Price list Management
(21, 1),

-- Exchange Rate
(22, 1),

-- Location Management
(26,1),

-- [Folder] Accounting
(30, 1),

-- Projects
(42,1),

-- Service Management
(48, 1),

-- Payroll Management
(57, 1),

-- Employee Management
(61, 1),

-- Patient Update
(80, 1),

-- subsidie Management
(82, 1),

--  Cashbox Management
(105,1),

--  Depots Management
(106,1),

--  Debtor Groups Management
(107,1),

--  Donators Management
(108,1),

--  Bilan Section Management
(109,1),

--  Section Resultat Management
(110,1),

--  Reference Group Management
(111,1),

--  Reference Management
(112,1),

-- Simple Journal Vouchers
(134, 1),

-- Billing Services Module
(135, 1),

-- Patient Group Module
(29, 1),

-- complex Journal Vouchers
(136, 1);

-- give test permission to both projects
INSERT INTO `project_permission` VALUES (1,1,1),(2,1,2);

INSERT INTO `cash_box` (id, label, project_id, is_auxiliary) VALUES
  (1,'Test Primary Cashbox A',1,0),
  (2,'Test Aux Cashbox B',1,1);

INSERT INTO `cash_box_account_currency` VALUES
  (1,1,1,3626,3626),
  (2,2,1,3627,3627),
  (3,1,2,3627,3627),
  (4,2,2,3627,3627);

INSERT INTO `transaction_type` VALUES
  (1,'pcash_transfert'),
  (2,'sale'),
  (8,'pcash_convention');

INSERT INTO `inventory_group` VALUES
  (HUID('1410dfe0-b478-11e5-b297-023919d3d5b0'),'Test inventory group','INVGRP',3636,NULL,NULL,NULL);

INSERT INTO `inventory_type` VALUES (1,'Article'),(2,'Assembly'),(3,'Service');
INSERT INTO `inventory_unit` VALUES (1,'Act'),(2,'Pallet'),(3,'Pill'),(4,'Box'),(5,'Lot'),(6,'amp'),(7,'bags'),(8,'btl'),(9,'cap'),(10,'flc'),(11,'jar'),(12,'ltr'),(13,'pce'),(14,'sch'),(15,'tab'),(16,'tub'),(17,'vial');

INSERT INTO `inventory` VALUES
  (1, HUID('cf05da13-b477-11e5-b297-023919d3d5b0'), 'INV0', 'Test inventory item', 25.0, 10, HUID('1410dfe0-b478-11e5-b297-023919d3d5b0'), 2, 0, 0, 0, 0, 0, 1, 1, CURRENT_TIMESTAMP),
  (1, HUID('289cc0a1-b90f-11e5-8c73-159fdc73ab02'), 'INV1', 'Second Test inventory item', 10.0, 10, HUID('1410dfe0-b478-11e5-b297-023919d3d5b0'), 2, 0, 0, 0, 0, 0, 1, 1, CURRENT_TIMESTAMP),
  (1, HUID('c48a3c4b-c07d-4899-95af-411f7708e296'), 'INV2', 'Third Test Inventory Item', 105.0, 10, HUID('1410dfe0-b478-11e5-b297-023919d3d5b0'), 2, 0, 0, 0, 0, 0, 1, 1, CURRENT_TIMESTAMP);

INSERT INTO `debtor_group` VALUES
  (1,HUID('4de0fe47-177f-4d30-b95f-cff8166400b4'),'Test Debtor Group',3631, HUID('03a329b2-03fe-4f73-b40f-56a2870cc7e6'),NULL,NULL,NULL,0,10,0,NULL,1,1,1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (1,HUID('66f03607-bfbc-4b23-aa92-9321ca0ff586'),'Second Test Debtor Group',3631,HUID('03a329b2-03fe-4f73-b40f-56a2870cc7e6'),NULL,NULL,NULL,0,300,0,NULL,1,1,1, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `patient_group` VALUES
  (HUID('0b8fcc00-8640-479d-872a-31d36361fcfd'),1,NULL,'Test Patient Group 1','Test Patient Group 1 Note','2016-03-10 08:44:23'),
  (HUID('112a9fb5-847d-4c6a-9b20-710fa8b4da24'),1,NULL,'Test Patient Group 2','Test Patient Group 2 Note','2016-03-10 08:44:23'),
  (HUID('112a9fb5-847d-4c6a-9b20-710fa8b4da22'),1,NULL,'Test Patient Group 3','Test Patient Group 2 Note','2016-03-12 08:44:23');

INSERT INTO `debtor` VALUES
  (HUID('3be232f9-a4b9-4af6-984c-5d3f87d5c107'),HUID('4de0fe47-177f-4d30-b95f-cff8166400b4'),'Patient/2/Patient'),
  (HUID('a11e6b7f-fbbb-432e-ac2a-5312a66dccf4'),HUID('4de0fe47-177f-4d30-b95f-cff8166400b4'),'Patient/1/Patient'),
  (HUID('be0096dd-2929-41d2-912e-fb2259356fb5'),HUID('4de0fe47-177f-4d30-b95f-cff8166400b4'),'Employee/Test Debtor'),
  (HUID('1fa862d0-2d30-4550-8052-e9aa6dbc467e'),HUID('4de0fe47-177f-4d30-b95f-cff8166400b4'),'Anonymous/Test Debtor');


INSERT INTO `patient` VALUES
  (HUID('274c51ae-efcc-4238-98c6-f402bfb39866'),1,2,HUID('3be232f9-a4b9-4af6-984c-5d3f87d5c107'),'Test','2','1990-06-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,0,HUID('bda70b4b-8143-47cf-a683-e4ea7ddd4cff'),HUID('bda70b4b-8143-47cf-a683-e4ea7ddd4cff'),'2015-11-14 07:04:49',NULL,NULL,'Patient','110'),
  (HUID('81af634f-321a-40de-bc6f-ceb1167a9f65'),1,1,HUID('a11e6b7f-fbbb-432e-ac2a-5312a66dccf4'),'Test','1','1990-06-01 00:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'M',NULL,NULL,NULL,NULL,NULL,NULL,0,HUID('bda70b4b-8143-47cf-a683-e4ea7ddd4cff'),HUID('bda70b4b-8143-47cf-a683-e4ea7ddd4cff'),'2015-11-14 07:04:49',NULL,NULL,'Patient','100');

INSERT INTO `assignation_patient` VALUES
  (HUID('49b90fec-e69c-11e5-8606-843a4bc830ac'),HUID('112a9fb5-847d-4c6a-9b20-710fa8b4da24'),HUID('81af634f-321a-40de-bc6f-ceb1167a9f65'));

-- fonctions
INSERT INTO `fonction` VALUES
  (1,'Infirmier'),
  (2,'Medecin Directeur');

-- Creditor group
INSERT INTO `creditor_group` VALUES
  (1,HUID('8bedb6df-6b08-4dcf-97f7-0cfbb07cf9e2'),'Fournisseur [Creditor Group Test]',3630,0),
  (1,HUID('b0fa5ed2-04f9-4cb3-92f7-61d6404696e7'),'Personnel [Creditor Group Test]',3629,0);


-- Creditor
INSERT INTO `creditor` VALUES
  (HUID('42d3756a-7770-4bb8-a899-7953cd859892'),HUID('b0fa5ed2-04f9-4cb3-92f7-61d6404696e7'),'Personnel'),
  (HUID('7ac4e83c-65f2-45a1-8357-8b025003d794'),HUID('8bedb6df-6b08-4dcf-97f7-0cfbb07cf9e2'),'Fournisseur');

-- Grade
INSERT INTO `grade` VALUES
  (HUID('71e9f21c-d9b1-11e5-8ab7-78eb2f2a46e0'),'G1','grade 1',500.0000),
  (HUID('9ee06e4a-7b59-48e6-812c-c0f8a00cf7d3'),'A1','1.1',50.0000);

INSERT INTO `section_bilan` VALUES (1,'Section Bilan 1',1,1), (2, 'Section Bilan 2', 1, 1);
INSERT INTO `section_resultat` VALUES (1,'Section Resultat 1',1,1);

INSERT INTO `reference_group` VALUES (1,'AA','Reference Group 1',1,1);

INSERT INTO `reference` VALUES
  (1,0,'AB','Reference bilan 1',1,1,NULL),
  (3,0,'AC','Reference resultat 1',1,NULL,1),
  (4,0,'XX','Deletable reference 1',1,NULL,NULL);

INSERT INTO `cost_center` VALUES
  (1,1,'cost center 1','cost note',1),
  (1,2,'cost center 2','cost note 2',0);

INSERT INTO `profit_center` VALUES
  (1,1,'profit center 1','profit note'),(1,2,'profit center 2','profit note 2');

-- Services
INSERT INTO `service` VALUES
  (1, 1, 'Test Service', 1, 1),
  (2, 1, 'Administration', 1, 1),
  (3, 1, 'Medecine Interne', 1, 1);

-- billing service configuration

INSERT INTO `billing_service` VALUES
  (1, 3626, 'Test Billing Service', 'Example billing service', 20, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (2, 3626, 'Second Test Billing Service', 'Example billing service 2', 10, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `patient_group_billing_service` VALUES
  (1, HUID('112a9fb5-847d-4c6a-9b20-710fa8b4da24'), 1, CURRENT_TIMESTAMP);

INSERT INTO `debtor_group_billing_service` VALUES
  (1, HUID('4de0fe47-177f-4d30-b95f-cff8166400b4'), 2, CURRENT_TIMESTAMP);

-- subsidy configuration

INSERT INTO `subsidy` VALUES
  (1, 3626, 'Test Subsidy', 'Subsidy for test purposes', 50, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP),
  (2, 3626, 'Second Test Subsidy', 'Second subsidy for test purposes', 20, CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `patient_group_subsidy` VALUES
  (1, HUID('112a9fb5-847d-4c6a-9b20-710fa8b4da24'), 1, CURRENT_TIMESTAMP);

INSERT INTO `debtor_group_subsidy` VALUES
  (1, HUID('4de0fe47-177f-4d30-b95f-cff8166400b4'), 1, CURRENT_TIMESTAMP);

-- patient invoices
INSERT INTO sale (project_id, reference, uuid, cost, debtor_uuid, service_id, user_id, discount, date, description, timestamp, is_distributable) VALUES
  (1,2,HUID('957e4e79-a6bb-4b4d-a8f7-c42152b2c2f6'),75.0000,HUID('3be232f9-a4b9-4af6-984c-5d3f87d5c107'),1,1,0,'2016-01-07 14:35:55','TPA_VENTE/Thu Jan 07 2016 15:35:46 GMT+0100 (WAT)/Test 2 Patient','2016-01-07 14:35:55',1),
  (1,1,HUID('c44619e0-3a88-4754-a750-a414fc9567bf'),25.0000,HUID('3be232f9-a4b9-4af6-984c-5d3f87d5c107'),1,1,0,'2016-01-07 14:34:35','TPA_VENTE/Thu Jan 07 2016 15:30:59 GMT+0100 (WAT)/Test 2 Patient','2016-01-07 14:31:14',1);

INSERT INTO sale_item VALUES
  (HUID('957e4e79-a6bb-4b4d-a8f7-c42152b2c2f6'),HUID('2e1332a7-3e63-411e-827d-42ad585ff518'),HUID('cf05da13-b477-11e5-b297-023919d3d5b0'),3,25.0000,25.0000,0.0000,75.0000);

SET @pjid = HUID(UUID());

INSERT INTO `posting_journal` VALUES
  (HUID(UUID()),1,1,1,'HBB1','2016-01-09 14:35:55',@pjid,NULL,3631,75.0000,0.0000,75.0000,0.0000,2,HUID('3be232f9-a4b9-4af6-984c-5d3f87d5c107'),'D',NULL,NULL,1,2,1,NULL),
  (HUID(UUID()),1,1,1,'HBB1','2016-01-09 14:35:55',@pjid,NULL,3638,0.0000,75.0000,0.0000,75.0000,2,NULL,NULL,NULL,NULL,1,2,1,NULL);

-- zones des santes SNIS
INSERT INTO `mod_snis_zs` VALUES
  (1,'Zone Sante A','Territoire A','Province A'),
  (2,'Zone Sante B','Territoire B','Province B');

INSERT INTO `primary_cash_module` VALUES (1,'Transfert'),(3,'Convention');

-- exchange rate for the current date
INSERT INTO `exchange_rate` VALUES
  (1,1,1,930.0000, NOW());

INSERT INTO `employee` VALUES
  (1,'E1','Dedrick','Kitamuka','Mvuezolo','M','1980-02-01 00:00:00','2016-02-02 00:00:00',1,3,HUID('71e9f21c-d9b1-11e5-8ab7-78eb2f2a46e0'),500,NULL,NULL,'kinshasa','0896611111','my@email.com',1,3,HUID('bfd8563e-72db-4698-af0f-55bd7849369e'),HUID('42d3756a-7770-4bb8-a899-7953cd859892'),HUID('be0096dd-2929-41d2-912e-fb2259356fb5'),NULL);

INSERT INTO `price_list` VALUES
  (HUID('75e09694-dd5c-11e5-a8a2-6c29955775b0'), 1, 'Test Price List', 'Price list for test purposes', CURRENT_TIMESTAMP, CURRENT_TIMESTAMP);

INSERT INTO `price_list_item` VALUES
  (HUID(UUID()), HUID('cf05da13-b477-11e5-b297-023919d3d5b0'), HUID('75e09694-dd5c-11e5-a8a2-6c29955775b0'), '', 100, 1, CURRENT_TIMESTAMP),
  (HUID(UUID()), HUID('289cc0a1-b90f-11e5-8c73-159fdc73ab02'), HUID('75e09694-dd5c-11e5-a8a2-6c29955775b0'), '', 100, 1, CURRENT_TIMESTAMP);

UPDATE debtor_group SET price_list_uuid = HUID('75e09694-dd5c-11e5-a8a2-6c29955775b0') WHERE uuid = HUID('4de0fe47-177f-4d30-b95f-cff8166400b4');

-- 1.X Routes
-- ----------
-- (6,'Account','TREE.ACCOUNT','Chart of Accounts management',30,'/partials/accounts/create_account/','/create_account'),
-- (7,'Edit Account Budget','TREE.EDIT_BUDGET','',8,'/partials/budget/edit/','/budgeting/edit'),
-- (8,'Budgeting','TREE.BUDGETING','Plan your next move',0,'/partials/budget/index.html','/budget'),
-- (9,'Posting Journal','TREE.POSTING_JOURNAL','Daily Log',30,'/partials/journal/journal.html','/journal'),
-- (11,'Inventory','TREE.STOCK','The Inventory Super-Category',0,'/partials/inventory/','/inv'),
-- (13,'Fiscal Year','TREE.FISCAL_YEAR','Fiscal year configuration page',30,'/partials/fiscal/','/fiscal'),
-- (15,'Patient Search','TREE.PATIENT_SEARCH','Search for patient',12,'/partials/patient/search/','/patient/search/'),
-- (16,'Sales','TREE.SALES','Create an invoice for a sale',5,'/partials/sales/','/sales/'),
-- (17,'Sale Records','TREE.SALE_RECORDS','Search for a sale',5,'/partials/records/sales_records/','/sale_records/'),
-- (19,'Register Supplier','TREE.REGISTER_SUPPLIER','',1,'/partials/creditor/','/creditor'),
-- (20,'Donor management','TREE.DONOR_MANAGEMENT','',1,'/partials/donor_management/','/donor_management/'),
-- (21,'Price List','TREE.PRICE_LIST','Configure price lists!',1,'/partials/price_list/','/inventory/price_list'),
-- (23,'Creditor Groups','TREE.CREDITOR_GRP','',30,'/partials/creditor/group/','/creditors/creditor_group'),
-- (24,'Debtor Groups','TREE.DEBTOR_GRP','',30,'/partials/debtor/','/debtor/debtor_group'),
-- (25,'General Ledger','TREE.GENERAL_LEDGER','',30,'/partials/reports/ledger/','/reports/ledger/general_ledger'),
-- (26,'Location Manager','TREE.LOCATION','',1,'/partials/location/location.html','/location'),
-- (27,'Chart of Accounts','TREE.CHART_OF_ACCOUNTS','',129,'/partials/reports/chart_of_accounts/','/reports/chart_of_accounts/'),
-- (29,'Patient Group','TREE.PATIENT_GRP','',1,'/partials/patient/group/','/patient/groups/'),
-- (30,'Accounting','TREE.ACCOUNTING','',0,'/partials/accounting/index.html','/accounting/'),
-- (31,'Cost Center Management','TREE.COST_CENTER_MGMT','',30,'/partials/cost_center/','/cost_center/'),
-- (32,'Group Invoicing','TREE.GRP_INVOICING','',5,'/partials/group_invoice/','/group_invoice/'),
-- (34,'Auxillary cash records','TREE.AUXILLARY_CASH_RECORD','',5,'/partials/records/auxillary_cash_records/','/auxillary_cash_records/'),
-- (35,'Patient Registrations','TREE.PATIENT_REGISTRATION','',127,'/partials/reports/patient_registrations/','/reports/patient_registrations'),
-- (37,'Cash Payments','TREE.CASH_PAYMENTS','',128,'/partials/reports/cash_payments/','/reports/cash_payments'),
-- (38,'Transactions by Account','TREE.TRANSACTIONS_BY_ACCOUNT','',129,'/partials/reports/transactions/','/reports/transactions/account'),
-- (39,'Caution','TREE.CAUTION','',5,'/partials/caution/','/caution'),
-- (40,'Main Cash','TREE.MAIN_CASH','',5,'/partials/primary_cash/','/primary_cash'),
-- (41,'Journal Voucher','TREE.JOURNAL_VOUCHER','',30,'/partials/journal_voucher/','/journal_voucher'),
-- (43,'Patient Standing','TREE.PATIENT_STANDING','',128,'/partials/reports/patient_standing/','/reports/patient_standing'),
-- (44,'Employee Standing','TREE.EMPLOYEE_STANDING','',128,'/partials/reports/employee_standing/','/reports/employee_standing'),
-- (45,'Stock Management','TREE.STOCK_MANAGEMENT','',11,'partials/depots','/depots'),
-- (46,'Account Statement','TREE.ACCOUNT_STATEMENT','',129,'partials/reports/account_statement','/reports/account_statement'),
-- (48,'Service Management','TREE.SERVICE','',1,'partials/service/','/service'),\
-- (49,'Expiring Stock Report','TREE.EXPIRING','',125,'/partials/reports/expiring_stock','/reports/expiring'),
-- (50,'Inventory Management','TREE.INVENTORY_MANAGEMENT','',124,'partials/inventory/','/inventory/'),
-- (51,'Budget by Account','TREE.BUDGET_BY_ACCOUNT','Budgeting by account',8,'/partials/budget/','/budgeting/'),
-- (53,'Purchase Order Management','TREE.PURCHASE_ORDER_MANAGEMENT','',122,'partials/purchase_order/','/purchase_menu/'),
-- (54,'Profit center management','TREE.PROFIT_CENTER_MGMNT','',30,'partials/profit_center/','/profit_center/'),
-- (55,'Income Report','TREE.INCOME_REPORT','',128,'/partials/reports/primary_cash/income/','/reports/income_report/'),
-- (56,'Expense Report','TREE.EXPENSE_REPORT','',128,'/partials/reports/primary_cash/expense/','/reports/expense_report/'),
-- (57,'Payroll','TREE.PAYROLL','',0,'partials/payroll/','/payroll/'),
-- (58,'Payroll Multiple','TREE.MULTI_PAYROLL','',57,'partials/primary_cash/expense/','/primary_cash/expense/multi_payroll/'),
-- (59,'Grade Employers','TREE.GRADE_EMPLOYERS','',57,'/partials/grade_employers/','/grade_employers/'),
-- (60,'Fonction','TREE.FONCTION','Fonction management',57,'partials/fonction/','/fonction'),
-- (61,'Employee','TREE.EMPLOYEE','Employee management',57,'partials/employee/','/employee'),
-- (62,'Gestions des taxes','TREE.TAXE_MANAGEMENT','',57,'/partials/taxe/','/taxes_management/'),
-- (63,'Rubriques Management','TREE.RUBRIC_MANAGEMENT','',57,'/partials/rubric/','/rubric_management/'),
-- (64,'Gestions des jours ferries','TREE.OFFDAY_MANAGEMENT','',57,'/partials/offdays/','/offday_management/'),
-- (65,'Gestion des vacances','TREE.HOLLYDAY_MANAGEMENT','',57,'/partials/holidays/','/holiday_management/'),
-- (66,'Gestion des periodes','TREE.PAYMENT_PERIOD','',57,'/partials/payment_period/','/payment_period/'),
-- (67,'Cotisation management','TREE.COTISATION_MANAGEMENT','',57,'/partials/cotisation/cotisation_management.html/','/cotisations_management/'),
-- (68,'Configuration des comptes','TREE.CONFIG_ACCOUNTING','',57,'/partials/config_accounting/','/config_accounting/'),
-- (69,'Canevas SNIS','Canevas SNIS','',0,'partials/snis/','/canevas_snis/'),
-- (70,'Rapports SNIS','Rapports SNIS','',69,'partials/snis/index.html','/snis/'),
-- (71,'Confirm a purchase order','TREE.CONFIRM_PURCHASE_ORDER','',122,'partials/purchase/confirm/','/purchase/confirm/'),
-- (72,'Daily consumption','TREE.DAILY_CONSUMPTION','',125,'/partials/reports/daily_consumption','/reports/daily_consumption/'),
-- (73,'Paycheck','TREE.PAYROLL_REPORT','',57,'/partials/reports/payroll_report','/reports/payroll_report/'),
-- (74,'Stock Status','TREE.STOCK_STATUS','',125,'/partials/reports/stock_status','/reports/stock_status/'),
-- (75,'Operating account','TREE.OPERATING_ACCOUNT','',129,'/partials/reports/operating_account','/reports/operating_account/'),
-- (76,'Exploitation Service','TREE.SERVICE_EXPLOITATION','',128,'/partials/reports/service_exploitation/','/reports/service_exploitation/'),
-- (77,'Toutes transactions','TREE.GLOBAL_TRANSACTION','',129,'/partials/reports/global_transaction/','/reports/global_transaction/'),
-- (78,'Depot Management','TREE.DEPOT','',1,'/partials/inventory/depot/','inventory/depot'),
-- (79,'Balance Mensuelle','TREE.BALANCE_MENSUELLE','',129,'/partials/reports/balance_mensuelle/','/reports/balance_mensuelle'),
-- (81,'Stock Dashboard','TREE.STOCK_DASHBOARD','',11,'/stock/dashboard','/stock/dashboard'),
-- (82,'Sudsudy','TREE.SUBSIDY','Handles the subsidy situation',1,'/partials/subsidy/','/subsidy'),
-- (83,'Bilan','TREE.BILAN','Bilan report',129,'/partials/reports/bilan','/reports/bilan/'),
-- (87,'Balance Sheet','TREE.BALANCE_SHEET','Balance Sheet report',129,'/partials/reports/balance','/reports/balance/'),
-- (88,'Tableau formation resultat','TREE.TFR','TFR report',129,'/partials/reports/tfr','/reports/tfr/'),
-- (89,'Rapport Grand Livre','TREE.GRAND_LIVRE_REPORT','Grand livre report',129,'/partials/reports/grand_livre','/reports/grand_livre/'),
-- (93,'Prise en charge','TREE.SUPPORT','',5,'/partials/support','/support/'),
-- (97,'Report Donation','TREE.REPORT_DONATION','Report donation',125,'/partials/reports/donation','/reports/donation/'),
-- (98,'Validation Purchase Order','TREE.VALIDATE_PURCHASE','',122,'/partials/purchase/validate/','purchase/validate/'),
-- (99,'Autorization Purchase Order','TREE.AUTHORIZE_PURCHASE','',122,'/partials/purchase/authorization/','/purchase/authorization/'),
-- (100,'Purchase Order Confirmation','TREE.PURCHASE_CONFIRMATION','',123,'/partials/reports/purchase_order/','reports/purchase_order/'),
-- (101,'Donation Confirmation','TREE.DONATION_CONFIRMATION','',11,'/partials/stock/donation_management/','donation/confirm_donation/'),
-- (102,'Report Donation Confirmation','TREE.REPORT_DONATION_CONFIRM','',125,'/partials/reports/donation_confirmation/','reports/donation_confirmation/'),
-- (103,'Confirmation Stock Integration','TREE.CONFIRM_INTEGRATION','',11,'/partials/stock/integration/confirm_integration','/stock/integration_confirm/'),
-- (106,'Cashbox Account currency Manag','TREE.CASHBOX_ACCOUNT_MANAGEMENT','',30,'/partials/cash/cashbox_account_currency/','/cashbox_account_management/'),
-- (107,'Report Stock Movement','TREE.REPORT_STOCK_MOVEMENT','',125,'/partials/reports/stock_movement/','reports/stock_movement/'),
-- (108,'Extra ordinary payment','TREE.EXTRA_PAYMENT','',5,'/partials/cash/extra_payment/','/extra_payment/'),
-- (109,'Section du bilan','TREE.SECTION_BILAN','',30,'/partials/section_bilan/','/section_bilan/'),
-- (110,'Section resultat','TREE.SECTION_RESULTAT','',30,'/partials/section_resultat/','/section_resultat/'),
-- (111,'reference_group','TREE.REFERENCE_GROUP','Reference Group',30,'/partials/reference_group','/reference_group/'),
-- (112,'reference','TREE.REFERENCE','Reference',30,'/partials/reference','/reference/'),
-- (113,'Report Stock Integration','TREE.REPORT_STOCK_INTEGRATION','',125,'/partials/reports/stock_integration/','reports/stock_integration/'),
-- (114,'compte de resultat','TREE.COMPTE_RESULTAT','pour voir le rapport de compte de resultat',129,'/partials/reports/result_account','/reports/result_account/'),
-- (115,'Dashboards','TREE.DASHBOARD.TITLE','Dashboards',0,'/partials/dashboards/','/dashboards'),
-- (116,'Finance Dashboar','TREE.DASHBOARD.FINANCE','Finance Dashboard',115,'/partials/dashboards/finance/finance.html','/dashboards/finance'),
-- (117,'Budget Analysis','TREE.BUDGET_ANALYSIS','analyse du budget courant avec les precedants',8,'/partials/budget/analysis','/budgeting/analysis/'),
-- (118,'Report Taxes paiments','TREE.REPORT_TAXES','Report taxes paiements',57,'/partials/reports/taxes_payment/','/reports/taxes_payment/'),
-- (119,'Report Cotisation paiements','TREE.REPORT_COTISATION','Report Cotisation paiements',57,'/partials/reports/cotisation_payment/','/reports/cotisation_payment/'),
-- (120,'Rapport situation group debite','TREE.DEBTOR_GROUP_REPORT','pour voir le rapport pdf detaille de group de debiteur',128,'/partials/reports/debtor_group_report','/reports/debtor_group_report/'),
-- (122,'Purchase','TREE.PURCHASE_ORDER','Purchase management',0,'/','/'),
-- (123,'Purchase Report','TREE.REPORTS','Purchase Report',122,'/','/'),
-- (124,'Inventory','TREE.INVENTORY','Inventory management',0,'/','/'),
-- (125,'Stock Report','TREE.REPORTS','Stock report',11,'/','/'),
-- (126,'Payroll Report','TREE.REPORTS','Payroll report',57,'/','/'),
-- (127,'Hospital Report','TREE.REPORTS','Hospital report',12,'/','/'),
-- (128,'Finance Report','TREE.REPORTS','Finance report',5,'/','/'),
-- (129,'Accounting Report','TREE.REPORTS','Accounting report',30,'/','/'),
-- (130,'Stock Distributions By Depot','TREE.DEPOT_DISTRIBUTIONS','This report combines distributions to patients, losses, rummage, and services into a singe report',10,'/partials/reports/distributions','/reports/distributions/'),
-- (131,'Budget Management','TREE.BUDGET_MANAGEMENT','Budgets Management module',8,'/partials/budget/new','/budgeting/new/'),
-- (132,'Annual Debtor Group Report','TREE.DEBTOR_GROUP_ANNUAL_REPORT','provides the evolution of all debtor group debts to the enterprise',128,'partials/reports_proposed/debtorgroup/annual','/reports/debtorgroup/annual'),
-- (133,'compte exploitation','TREE.COMPTE_EXPLOITATION','pour voir evloution compte exploitation entre deux annees fiscales',129,'/partials/reports/variation_exploitation','/variation_exploitation');
