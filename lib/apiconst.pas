//////////////////////////////////////////////////////////////////////////////////////////////
// This file contains all API variables. The variables are grouped according to the GUI.    //
// These variables can be used either with the tool.exe command line tool or directly       //
// for API  programming.                                                                    //
//                                                                                          //
// Syntax:                                                                                  //
//                                                                                          //
// Variable name    Variable type       Description     Default value                       //
//                                                                                          //
// Description control codes                                                                //
// [R] - Read only value                                                                    //
// [D] - Display only value                                                                 //
//                                                                                          //
//////////////////////////////////////////////////////////////////////////////////////////////

Unit apiconst;

Interface

Const
// Function Result Codes
  S_OK = $00;

  E_FAILURE = -$01; // Function failure
  E_LICENSE = -$02; // Insufficient license
  E_PARAMS = -$03; // Size of parameters too short
  E_PATH = -$04; // Settings file does not exist
  E_CONFIG = -$05; // Configuration not found
  E_PASSWORD = -$06; // Password policy
  E_CONFLICT = -$07; // Item already exists
  E_INVALID = -$08; // Invalid mailbox / alias characters
  E_PASSWORDCHARS = -$09; // Invalid password characters
  E_MIGRATION_IN_PROGRESS = -$0A; // User migration in progress

  E_SMARTATTACH_NOERR   = -20;    // base error number for smartattachments errors
  E_SMARTATTACH_VIRUS   = -21;    // virus found in the message
  E_SMARTATTACH_GWERROR = -22;    // general groupware problem
  E_SMARTATTACH_WEBDAV  = -23;    // webdav disabled
  E_SMARTATTACH_SIGNED  = -24;    // message was signed
  E_SMARTATTACH_NOATTACHMENTS = -25;    // no attachments found in the message
  E_SMARTATTACH_NoATTACHMENTSSTRIPPED = -26;    // all found attachments are excluded from smart attaching
  E_SMARTATTACH_SIZEQUOTA = -27;    // size quota exceeded


/////////////
// Domains //
/////////////

    // Domain
    // GROUP_BEGIN Domain
    D_Description = $6A1;                                               // String ddar=r    Domain description
    D_Type = $01;                                                       // Enum ddar=r values=(0-Standard domain,1 - ETRN/ATRN queue,2 - Domain Alias,3 - Backup domain,4 - Distributed domain) Domain Type

    D_DomainValue = $03;                                                // String ddar=r    Domain Type To value
    D_VerifyType = $636;                                                // Enum values=(0 - Default, 1 - Issue RCPT, 2 - Issue VRFY, 3 - Minger) User verification mode

    D_Aliases = $6A8;                                                   // String           Aliases of the domain defined on the "Aliases" tab

    D_MingerPassword = $362;                                            // String           Minger Password for this domain
    D_PostMaster = $04;                                                 // String ddar=r    Default Administrator's alias
    D_AdminEmail = $05;                                                 // String ddar=w    Administrator's email
    D_UnknownUsersType = $06;                                           // Enum ddar=w values=(0 - Reject, 1 - Forward to address, 2 - Delete) Unknown users action

    D_UnknownForwardTo = $678;                                          // String ddar=w    Unknown users Forward to Address
    D_InfoToAdmin = $675;                                               // Bool             Send information to administrator

    // Options
    D_AccountNumber = $09;                                              // Int ddar=r       Domain Admin account limit
    D_DiskQuota = $671;                                                 // Int ddar=r       Domain disk quota (kB)
    D_DisableLogin = $65E;                                              // Bool ddar=r      Disable login to this domain
    D_UserMailbox = $66B;                                               // Int ddar=w       User Mailbox size (kB)
    D_UserMB = $667;                                                    // Int ddar=w       User send out data limit (MB/day)
    D_UserNumber = $663;                                                // Int ddar=w       User send out messages limit (#/day)
    D_UserLimitNotify = $6AC;                                           // Int ddar=w       Notify admin when user send out limit is exceed

    D_UserMsg = $65F;                                                   // Int ddar=w       User max message size (kb)
    D_Expires = $652;                                                   // Bool ddar=r      Enable domain expiration
    D_ExpiresOn = $64F;                                                 // Int ddar=r       Domain Expires On (Number of days from 1899/12/30)
    D_ExpiresOn_Date = $292;                                            // String ddar=r    Domain Expires On (Date in yyyy/mm/dd format)
    D_NotifyExpire = $64D;                                              // Bool ddar=w      Enable Notify before expiration
    D_NotifyBeforeExpires = $649;                                       // Int  ddar=w      Notify before expiration (Days)
    D_DeleteExpired = $645;                                             // Bool             Delete Expired domains
    D_NumberLimit = $62F;                                               // Int ddar=r       Limit of emails sent from domain per day
    D_VolumeLimit = $62D;                                               // Int ddar=r       Limit of data sent from domain per day
    D_LimitNotify = $6AB;                                               // Bool ddar=r      Notify admin when send out limit is exceed

    D_ASSupport = $283;                                                 // Bool ddar=r      Domain has AS support [R]
    D_QuarantineSupport = $284;                                         // Bool ddar=r      Domain has Quarantine support [R]
    D_AVSupport = $44A;                                                 // Bool ddar=r      Domain has AV support [R]
    D_IMSupport = $44B;                                                 // Bool ddar=r      Domain has IM support [R]
    D_SIPSupport = $44C;                                                // Bool ddar=r      Domain has SIP support [R]
    D_FTPSupport = $44D;                                                // Bool ddar=r      Domain has FTP support [R]
    D_SMSSupport = $44E;                                                // Bool ddar=r      Domain has SMS support [R]
    D_GWSupport = $44F;                                                 // Bool ddar=r      Domain has GW support [R]
    D_WebDAVSupport = $450;                                             // Bool ddar=r      Domain has WebDAV support [R]
    D_EASSupport = $451;                                                // Bool ddar=r      Domain has ActiveSync support [R]
    D_SyncMLSupport = $452;                                             // Bool ddar=r      Domain has SyncML support [R]
    D_ConnectorSupport = $453;                                          // Bool ddar=r      Domain has Connector support [R]
    D_DesktopSupport = $454;                                            // Bool ddar=r      Domain has DC support [R]
    D_ArchiveSupport = $455;                                            // Bool ddar=r      Domain has Archive support [R]
    D_MeetingSupport = $49C;                                            // Bool ddar=r      Domain has WebMeetings support [R]

    D_HeaderFile = $33A;                                                // String           Header file
    D_HeaderHTMLFile = $33B;                                            // String           Header HTML file
    D_FooterFile = $33C;                                                // String           Footer file
    D_FooterHTMLFile = $33D;                                            // String           Footer HTML fila
    D_TopTextFile =    $6A3;                                            // String           Top Reply  file
    D_TopTextHTMLFile = $6A4;                                           // String           Top Reply HTML fila

    D_HeaderFooterFlag = $33E;                                          // Int              Bit Mask
        // HF_L2L = $01;
        // HF_L2R = $02;
        // HF_R2L = $04;
        // HF_R2R = $08;

    //Miscellaneous
    D_Hostname = $23;                                                   // String           Hostname
    D_IPAddress = $632;                                                 // String           IP address here to bind the domain to
    D_Folderpath = $24;                                                 // String           Folder path
    D_BaseMailboxPath = $459;                                           // String           Full path to root of the domain storage, read only, equals to C_System_Storage_Dir_MailPath/Domain name
    D_AVScan = $0A;                                                     // Bool             Policy - AV
    D_AntiSpam = $65B;                                                  // Bool             Policy - Antispam
    D_ChallengeResponse = $14;                                          // Bool             Policy - Challenge Response
    D_IM = $654;                                                        // Bool             Policy - IM
    D_Calendar = $658;                                                  // Bool             Policy - GW
    D_SIP = $22;                                                        // Bool             Policy - SIP
    D_SyncML = $62B;                                                    // Bool             Policy - SyncML
    D_FTP = $62A;                                                       // Bool             Policy - FTP
    D_SMS = $627;                                                       // Bool             Policy - SMS
    D_ActiveSync = $626;                                                // Bool             Policy - ActiveSync
    D_WebDAV = $623;                                                    // Bool             Policy - WebDAV
    D_Archive = $466;                                                   // Bool             Policy - Archive
    D_Client_Connector = $31B;                                          // Bool             Policy - Outlook Sync
    D_Client_Desktop = $31C;                                            // Bool             Policy - Desktop Client

    D_Backup = $638;                                                    // Longstring       Structure backup [D]

    D_SMSContent = $432;                                                // Longstring       SMS file content [R]

    D_RulesContentXML = $630;                                           // Longstring       Domain rules file content in content filter format [D]
    D_SharedRoster = $336;                                              // Bool             Instant Messaging shared roster (Populate with all domain members)

    D_SMS_SentLastMonth =$360;                                          // Int  ddar=r      Number of SMS sent last month [R]
    D_SMS_SentThisMonth =$361;                                          // Int  ddar=r      Number of SMS sent this month [R]

    D_Meeting = $48E;                                                   // Bool             Domain Access mode for meeting
    D_DumpSMTPAccountCache = $4C8;                                      // String           Write only property. Seting a value causes SMTP service to write info about actual account cache into file in temp dirctory

    D_MailboxSize = $4D3;                                               // Int ddar=r       Domain mailbox size [R]

    D_DirectoryCache_RefreshNow = $4DA;                                 // Bool             Write only variable , if anything is written there, refresh of the directorycache of this domain is scheduled

    D_ABQStatus =   $4F1;                                               // String           One char only, status of ABQ

    D_SMS_DomainSettings = $509;                                        // Longstring       Domain level of SMS settings
    D_FTP_DomainSettings = $50A;                                        // Longstring       Domain level of FTP settings


    D_AS_OverrideThresholds = $531;                                     // Bool             Override global Anti-Spam thresholds with domain settings
    D_AS_SpamAssassinDelete = $532;                                     // Bool             Enable refusing message when score exceeds D_AS_DeleteScore
    D_AS_DeleteScore =$533;                                             // String           Refuse message threshold score
    D_AS_SpamAssassinScore = $534;                                      // Bool             Enable marking message as spam when score exceeds D_AS_SpamAssassinScoreValue
    D_AS_SpamAssassinScoreValue =$535;                                  // String           Spam threshold score
    D_AS_QuarantineScore = $536;                                        // String           Quarantine threshold score
    D_AS_SpamAssassinQuarantine = $537;                                 // Bool             Enable quarantining message when score exceeds D_AS_QuarantineScore


//////////////
// Accounts //
//////////////

Const
    // Accounts shared
    // GROUP_BEGIN User
    U_Type = $69E;                                                      // Enum values=(0 - User, 1 - Mailing list, 2 - Executable, 3 - Notification, 4 - Static Route, 5 - Catalog, 6 - List server, 7 - Group, 8 - Resource) Account type [A]

    U_Alias = $684;                                                     // String           Account's alias [A]
    U_AliasList = $487;                                                 // String           Read only list of all account e-mails (i.e. uses also knowledge about domain aliases)
    U_Name = $02;                                                       // String           Account's full name/description [A]
    U_Backup = $67A;                                                    // Longstring       Structure backup [D][A]
        
    U_GW_DailyAgenda = $447;                                            // Bool             Enable daily mail with daily agenda to user [A]
    U_GW_Reminders = $448;                                              // Bool             Enable email reminders [A]
    U_GW_AutoRevisionMode = $507;                                       // Bool             Enable automatic creating of revisions when editing documents [A]

    // Accounts

        // User
    U_EmailAlias = $609;                                                // String           Email alias
    U_PhoneAlias = $603;                                                // String           Phone alias

    U_Mailbox = $10;                                                    // String           Username
    U_Password = $637;                                                  // String           Password
    U_AuthMode   = $64A;                                                // Enum values=(0 - Standard, 1 - NT domain, 2 - Active Directory, 3 - Any password) Authentication mode

    U_Login =$430;                                                      // String           Read only - string which should be used for logging into API, respects c_accounts_policies_login_loginsettings
    U_AuthModeValue = $635;                                             // String           Authentication mode value
    U_Comment = $67D;                                                   // String           User comment
    U_AccountType = $646;                                               // Enum values=(0 - POP3, 1 - IMAP & POP3, 2 - IMAP) Mailbox protocol type

    U_Admin = $631;                                                     // Bool ddar=r      Administrator permission
    U_DomainAdmin = $634;                                               // Bool ddar=r      Domain admin permission
    U_GatewayAdmin = $342;                                              // Bool             Gateway admin permission
    U_AccountDisabled = $65C;                                           // Enum values=(0 - Enabled, 1 - Disabled (Login), 2 - Disabled (Login, Receive), 3 - Disabled (Tarpitting), 4 - Domain disabled (this value can not be set, it can be only returned in certain situations) Account state
   
    U_ForwardTo = $624;                                                 // String           Forward to address
    U_DoNotForwardSpam = $521;                                          // Bool             Do not forward messages marked as spam

    // Mailbox
    U_UseRemoteAddress = $625;                                          // Bool values=(0 - Local mailbox, 1 - Remote address) Mailbox local/remote

    U_MailBoxPath = $633;                                               // String           Mailbox path
    U_FullMailboxPath = $640;                                           // String           Full mailbox path [R]
    U_RemoteAddress = $37;                                              // String           Remote address
    U_MaxBox = $62E;                                                    // Bool             Enable mailbox size limit
    U_MaxBoxSize = $62C;                                                // Int              Mailbox size limit (kB)
    U_MegabyteSendLimit = $61A;                                         // Int              Send out data limit (MB/day)
    U_NumberSendLimit = $69F;                                           // Int              Send out messages limit (#/day)
    U_InboxCountLimit = $42C;                                           // Int              Maximum allowed number of items in inbox
    U_MaxMessageSize = $642;                                            // Int              User max message size (kB)
    U_DeleteOlder = $32;                                                // Bool             Enable Delete messages older than
    U_DeleteOlderDays = $61E;                                           // Int              Delete messages older than (Days)
    U_ForwardOlder = $61D;                                              // Bool             Enable Forward messages older than
    U_ForwardOlderDays = $61C;                                          // Int              Forward messages older than (Days)
    U_ForwardOlderTo = $61B;                                            // String           Forward messages older than x to address
    U_MailIn = $621;                                                    // String           Copy incoming email address
    U_MailInUseCF = $307;                                               // Bool             Apply CF on incoming mail being copied
    U_MailOut = $620;                                                   // String           Copy outgoing email address
    U_MailOutUseCF = $308;                                              // Bool             Apply CF on outgoing mail being copied
    U_AlternateEmail = $60B;                                            // String           Alternate email

    // Options
    U_NULL = $639;                                                      // Bool             Null account
    U_ETRN = $63D;                                                      // Bool             ETRN/ATRN account
    U_XEnvelopeTo = $618;                                               // Bool             Add X-Envelope-To header to all messages
    U_NoMailList = $619;                                                // Bool             No mailing lists
    U_ExcludeFromGAL = $4BF;                                            // Bool             Do not put this user into GAL, unless he is direct member of the group (i.e. his membership is not based on membership in another group )
    U_ExcludeFromSharedRoster = $4C0;                                   // Bool             Do not put this user into shared IM roster, unless he is directly specified (i.e. his membership is not based on membership in another group )
    U_ExcludeFromDirectoryServiceSync = $53C;                           // Bool             User will not be synchronized with Directory Service

    U_LocalDomain = $628;                                               // Bool             User can send to local domains only
    U_InactiveFor = $41;                                                // Int              Expires if inactive for (Days)
    U_AccountValid = $659;                                              // Bool             Enable Expires on
    U_AccountValidTill = $655;                                          // Int              Expires on (Number of days from 1899/12/30)
    U_AccountValidTill_Date = $293;                                     // String           Expires on (Date in yyyy/mm/dd format)
    U_ValidityReport = $650;                                            // Bool             Enable Notify before exiration
    U_ValidityReportDays = $64B;                                        // Int              Notify before expiration (Days)
    U_DeleteExpire = $63B;                                              // Bool             Delete account when expired
    U_ValidReport = $61F;                                               // String           Notification file

    // Miscellaneous
    U_SpamFolder = $614;                                                // Enum values=(0 - Default, 1 - Do not use Spam folder, 2 - Use Spam folder) Spam folder mode

    U_QuarantineReports = $43;                                          // Enum values=(0 - Disabled, 1 - Default, 2 - New Items only, 3 - All items) Spam reports mode
 
    U_SpamAdmin = $615;                                                 // Bool             Spam administrator
    U_SMTP = $613;                                                      // Bool             Policy - SMTP
    U_POP3IMAP = $46;                                                   // Bool             Policy - IMAP & POP3
    U_WebMail = $612;                                                   // Bool             Policy - WebClient
    U_AVScan = $681;                                                    // Bool             Policy - AV
    U_AS = $611;                                                        // Bool             Policy - AntiSpam
    U_CR = $610;                                                        // Bool             Obsolete
    U_Quarantine = $610;                                                // Bool             Policy - Challenge response
    U_IM = $60E;                                                        // Bool             Policy - IM
    U_GW = $60D;                                                        // Bool             Policy - Groupware
    U_SIP = $60A;                                                       // Bool             Policy - SIP
    U_SyncML = $602;                                                    // Bool             Policy - SyncML
    U_FTP = $58E;                                                       // Bool             Policy - FTP
    U_SMS = $225;                                                       // Bool             Policy - SMS
    U_ActiveSync = $226;                                                // Bool             Policy - ActiveSync
    U_WebDAV = $227;                                                    // Bool             Policy - WebDav
    U_Archive = $465;                                                   // Bool             Policy - Archive

    U_SIP_ONLINE = $45D;                                                // Bool             User is logged into local VOIP service , read only
    U_SIP_AVAILABLE = $45E;                                             // Bool             User is logged into local VOIP service and is not calling now , read only

    U_IM_ONLINE = $463;                                                 // Bool             User is logged into local IM service , read only
    U_IM_ROSTER_CONTENTS =$488;                                         // Longstring        Raw contents of user roster file

    U_GROUPS =  $46D;                                                   // String           List of groups where user is member of, read only, computed online
    U_GROUPSLIST =  $494;                                               // String           List of groups where user is member of, including all combinations of aliases/domain aliases, read only, computed online

    U_Blocked = $4C7;                                                   // Bool             User account blocked due to Login policy. Write 0 here to unblock.

    // Responder
    U_Respond = $629;                                                   // Enum values=(0 - Do not respond, 1 - Respond always, 2 - Respond once, 3 - Respond once in period) Autoresponder mode

    U_RespondPeriod = $42;                                              // Int              Responder period (Days)
    U_RespondWith = $622;                                               // String           Responder file
    U_ReplyFrom = $617;                                                 // String           Reply from
    U_RespondBetweenFrom = $44;                                         // String           Responder active from (Date)
    U_RespondBetweenTo = $60C;                                          // String           Responder active till (Date)
    U_RespondOnlyIfToMe = $616;                                         // Bool             Reply only if to me
    U_ResponderContent = $5B4;                                          // Longstring       Auto responder content
    U_NoRespondFor = $321;                                              // String           List of emails or domains where to not autorespond

    U_QuarantineSupport = $5B3;                                         // Bool             Read only variable to check if the user has quarantine enabled [R]
    U_ASSupport = $5B0;                                                 // Bool             Read only variable to check if the user has antispam enabled [R]
    U_SpamFolderSupport = $E3;                                          // Bool             Read only variable to check if the user has spam folder enabled [R]
    U_SIPSupport = $591;                                                // Bool             Read only variable to check if the user has SIP enabled [R]
    U_AVSupport = $220;                                                 // Bool             Read only variable to check if the user has antivirus enabled [R]
    U_IMSupport = $58F;                                                 // Bool             Read only variable to check if the user has instant messaging enabled [R]
    U_GWSupport = $222;                                                 // Bool             Read only variable to check if the user has groupware enabled [R]
    U_SharingAvailable = $349;                                          // Bool             Read only variable to check if the user can use sharing [R]

    U_SyncMLSupport = $223;                                             // Bool             Read only variable to check if the user has syncML enabled [R]
    U_FTPSupport = $228;                                                // Bool             Read only variable to check if the user has FTP enabled [R]
    U_SMSSupport = $229;                                                // Bool             Read only variable to check if the user has SMS enabled [R]
    U_ActiveSyncSupport = $22A;                                         // Bool             Read only variable to check if the user has ActiveSync enabled [R]
    U_WebDAVSupport = $22B;                                             // Bool             Read only variable to check if the user has WebDAV enabled [R]
    U_ArchiveSupport = $58C;                                            // Bool             Read only variable to check if the user has Archive enabled [R]
    U_MeetingSupport = $49A;                                            // Bool             Read only variable to check if the user has WebMeetings enabled [R]
    U_CiscoSupport = $501;                                              // Bool             Read only variable to check if the user has Cisco Integration enabled [R]

    U_SMSContent = $431;                                                // Longstring       SMS file content [R]

    U_QuarantineEditable = $479;                                        // Bool             Read only variable to check if the user has quarantine Editable [R]
    U_ASEditable = $47A;                                                // Bool             Read only variable to check if the user has antispam Editable [R]
    U_SIPEditable = $47B;                                               // Bool             Read only variable to check if the user has SIP Editable [R]
    U_AVEditable = $47C;                                                // Bool             Read only variable to check if the user has antivirus Editable [R]
    U_IMEditable = $47D;                                                // Bool             Read only variable to check if the user has instant messaging Editable [R]
    U_GWEditable = $47E;                                                // Bool             Read only variable to check if the user has groupware Editable [R]
    U_SyncMLEditable = $47F;                                            // Bool             Read only variable to check if the user has syncML Editable [R]
    U_FTPEditable = $480;                                               // Bool             Read only variable to check if the user has FTP Editable [R]
    U_SMSEditable = $481;                                               // Bool             Read only variable to check if the user has SMS Editable [R]
    U_ActiveSyncEditable = $482;                                        // Bool             Read only variable to check if the user has ActiveSync Editable [R]
    U_WebDAVEditable = $483;                                            // Bool             Read only variable to check if the user has WebDAV Editable [R]
    U_ArchiveEditable = $484;                                           // Bool             Read only variable to check if the user has Archive Editable [R]
    U_MeetingEditable = $49B;                                           // Bool             Read only variable to check if the user has WebMeetings editable [R]
    U_CiscoEditable = $595;                                             // Bool             Read only variable to check if the user has Cisco Integration editable [R]


    // Rules
    U_BlackWhiteFilter = $696;                                          // Bool             Use Rules
    U_RulesContentXML = $676;                                           // Longstring       Rules content xml [D]

    U_IMAPMailbox = $643;                                               // String           IMAP mailbox settings

    U_PasswordExpired = $594;                                           // Bool             Read - status of user password expiration, write - clear/set password expired
    U_MailboxQuota = $593;                                              // Int [R]          Read only, effective mailbox quota in kB
    U_MailboxSize = $592;                                               // Int [R]          Read only, current mailbox size in kB

    U_ActivationKey_OutConn = $316;                                     // Longstring [D]   Outlook Sync activation key
    U_ActivationKey_Desktop = $317;                                     // Longstring [D]   Desktop Client activation key
    U_Client_Connector = $318;                                          // Bool             Policy - Outlook Sync
    U_Client_Desktop = $319;                                            // Bool             Policy - Desktop Client
    U_SIP_CallTransfer = $343;                                          // Longstring       XML representation of VoIP call forwarding settings
    U_SIP_CallTransferActive = $519;                                    // Bool             VoIP call forwarding enabled
    U_SIP_CallTransferTarget = $51A;                                    // String           VoIP call forwarding target
    U_SIP_CallTransferTime = $51B;                                      // Int              VoIP call forwarding timeout (forward after) in seconds
    U_SMS_SentLastMonth =$35E;                                          // Int              Number of SMS sent last month [R]
    U_SMS_SentThisMonth =$35F;                                          // Int              Number of SMS sent this month [R]
    U_SMS_SendLimit =$45A;                                              // Int              Number of SMS allowed to send this month [R]
    U_SMS_GatewayId = $504;                                             // String           Gateway ID
    U_SMS_ExpireDate = $505;                                            // String           Expire Date
    U_Meeting =     $48F;                                               // Bool             User access mode for meeting
    U_Cisco =       $4FF;                                               // Bool             User access mode for cisco integration

    U_DirectoryCache_RefreshNow = $4D8;                                 // Bool             Write only variable , if anything is written there, refresh of the directorycache  of this account is scheduled
    U_ABQStatus =   $4F0;                                               // String           One char only, status of ABQ


    U_XMPP_SUPPORT_DATA  = $4E9;                                        // String           Special Readonly info for local WCS service - url encoded list, history_supported,filetransfer_supported
    U_XMPP_DATA  = $4EA;                                                // String           Special Readonly info for local WCS service - url encoded list - encryptedpassword,username,domain,host


    U_SIP_DATA  = $4F4;                                                 // String           Special Readonly info for SIP service - url encoded list - password,username,extension,host

    U_SMS_UserSettings = $506;                                          // Longstring       User level of SMS settings
    U_FTP_UserSettings = $508;                                          // Longstring       User level of FTP settings
    U_PASS_POLICY_Temporary_Disable =$542;                              // Bool             Temporary disable password policy for the current session

    // User Group
    // Group
    // GROUP_BEGIN Group
    G_ListFile = $5FB;                                                  // String           List file
    G_ListFile_Contents = $471;                                         // Longstring       Members file content

    G_Name = $68D;                                                      // String           Folder name
    G_Description = $67E;                                               // String           Description

    G_GroupwareShared = $5E5;                                           // Bool             Groupware shared
    G_GroupwareMembers = $597;                                          // Bool             Groupware members address book
    G_GroupwareMailDelivery = $596;                                     // Bool             Groupware mail delivery
    G_GroupwareDefaultRights = $5E3;                                    // String           Groupware default rights

    // Message
    G_Moderated = $5DF;                                                 // Enum values=(0 - None, 1 - Client moderated, 2 - Server moderated) Moderated mode

    G_ModeratedPassword = $5DD;                                         // String           Password
    G_ListBatch = $5F6;                                                 // Int              Max # of messages sent out in 1 minute

    G_AddRootAdmin = $334;                                              // String           Write only property, adds full ACL rights on root folder

    // Rules
    G_BlackWhiteFilter = $697;                                          // Bool             Use Rules

    // Miscellaneous
    G_SpamFolder = $49E;                                                // Enum values=(0 - Default, 1 - Do not use Spam folder, 2 - Use Spam folder) Spam folder mode

    G_AS = $4B6;                                                        // Bool             Access mode for Anti-Spam
    G_CR = $4B7;                                                        // Bool             Access mode for Quarantine

    G_GroupwareHAB = $4BA;                                              // Bool             Enables Hierarchic address book
    G_GroupwareHABFolder = $4BB;                                        // String           If this group is member of another group with enabled HAB, this string is used as the foldername in the HAB
    G_GroupwareDL = $4BC;                                               // Bool             Disables GAL distribution list creation
    G_GroupwareGalDontExpandMailingList = $6AA;                         // Bool             If this option is ON, members of mailing lists will not be considered as members of the group, and their contacts will not be auto-created in GAL, however, if "Create distribution list" option is ON, there will still be distribution lists autocreated in GAL for all mailing lists that are members of the group

    G_GroupwareAllowGALExport = $4C5;                                   // Bool             Allow export of GAL for other servers within distributed domain
    G_DeliverExternally = $5BA;                                         // Bool             Deliver externally
    G_CheckMailbox = $4D2;                                              // Bool             Do not deliver to members with exceeded quotas
    G_DirectoryCache_RefreshNow = $4D9;                                 // Bool             Write only variable , if anything is written there, refresh of the directorycache  of this account is scheduled


    // Mailing List Accounts

    // Mailing list
    // GROUP_BEGIN Mailinglist
    M_Alias = $685;                                                     // String           Alias
    M_Name = $68E;                                                      // String           Description
    M_OwnerAddress = $600;                                              // String           Owner address
    M_SendAllLists = $5ED;                                              // Enum values=(0 - List file, 1 - All current domain users, 2 - All system users, 3 - All domain administrators, 4 - All system administrators, 5 - Members from ODBC) Members source

    M_ListFile = $5FC;                                                  // String           Path to list file
    M_ListFile_Contents = $472;                                         // Longstring       List file contents

    M_GroupwareDefaultRights = $5E4;                                    // String           Groupware default rights

    M_ODBC = $5F2;                                                      // String           ODBC connection
    // DSN,user,pwd,server,type
    M_SQL = $5E6;                                                       // String           SQL statement

    // Message
    M_SetSender = $5CA;                                                 // Enum values=(0 - Off, 1 - Set From: to sender, 2 - Set Reply-To: to sender) Set From or Reply-to headers to sender

    M_SetValue = $5CE;                                                  // Enum values=(0 - Off, 1 - Set From: to value, 2 - Set Reply-To: to value) Set From or Reply-to headers to value

    M_ValueMode = $5BF;                                                 // Bool values=(0 - From: header set to value, 1 - Reply To: header set to value) Order of "header value" mode
 
    M_HeaderValue = $5CD;                                               // String           From or Reply-to headers value
        // FromValue|ReplyToValue
    M_SeparateTo = $5F9;                                                // Bool             Set Recipients to To: header
    M_AddToSubject = $85;                                               // String           Add to Subject value
    M_AddToHeader = $98;                                                // Longstring       Add headers value
    M_ListSender = $5AA;                                                // Enum values=(0 - Blank, 1 - Sender, 2 - Owner) Originator

    M_HeaderFile = $5EB;                                                // String           Header file
    M_FooterFile = $5EA;                                                // String           Footer file

    // Security
    M_MembersOnly = $5CB;                                               // Bool             Only members can post new messages
    M_Moderated = $6A2;                                                 // Enum values=(0 - None, 1 - Client moderated, 2 - Server moderated) Moderated mode

    M_ModeratedPassword = $5DE;                                         // String           Moderated password
    M_AllowSubscribers = $5F1;                                          // String           Allow subscribers file
    M_DefaultRights = $5E7;                                             // Int              Default rights
        // 0 - Receive & post
        // 3 bits - 1st (Receive), 2nd (Post), 3rd (Digest)
    M_MaxList = $6A4;                                                   // Bool             Enable Maximum message size
    M_MaxListSize = $5CF;                                               // Int              Maximim message size value (kB)
    M_DenyEXPNList = $5DB;                                              // Bool             Deny EXPN

    // Other
    M_SendToSender = $5EF;                                              // Bool             Send copy to Sender
    M_CopyToOwner = $5FF;                                               // Bool             Forward copy to owner
    M_DigestConfirmed = $5FE;                                           // Bool             Digest mailing list
    M_ListSubject = $5AC;                                               // Bool             Process mailing list variables
    M_Personalized = $5F4;                                              // Bool             Personalized mailing list
    M_RemoveDead = $5F7;                                                // Bool             Remove dead email addresses
    M_EditSentDate = $350;                                              // Bool             Edit date in message header in moment it goes into outgoing queue
    M_ListBatch = $5F5;                                                 // Int              Max # of messages sent out in 1 minute
    M_NotifyJoin = $5F8;                                                // Bool             Notify owner - Join
    M_NotifyLeave = $5E9;                                               // Bool             Notify owner - Leave
    M_SubListFile = $5EE;                                               // String           Join file
    M_LeaveFile = $5F0;                                                 // String           Leave file

    // Rulest
    M_BlackWhiteFilter = $698;                                          // Bool             Use Rules

    M_MaxMembers = $5E2;                                                // Int              Max members
    M_LDAPSync = $590;                                                  // Bool             LDAP sync
    M_CheckMailbox = $42F;                                              // Bool             Do not deliver to members with exceeded quotas

    M_AS = $4B8;                                                        // Bool             Access mode for Anti-Spam
    M_CR = $4B9;                                                        // Bool             Access mode for Anti-Spam


    // List server

    // List server
    // GROUP_BEGIN Listserver
    L_Alias = $686;                                                     // String           Alias
    L_Name = $68F;                                                      // String           Description
    L_OwnerAddress = $601;                                              // String           Owner address

    L_SendAllLists = $5EC;                                              // Enum values=(0 - List file, 1 - All domain mailing lists) Members source

    L_ListFile = $5FD;                                                  // String           Path to list file
    L_ListFile_Contents = $58B;                                         // Longstring       List file contents
    L_DigestConfirmed = $72;                                            // Enum values=(0 - No confirmation, 1 - User confirmation, 2 - Owner confirmation) Subscription

    L_ListSubject = $5AD;                                               // Bool             Commands in subject
    // GROUP_BEGIN Mailinglist
    M_JoinR = $86;                                                      // Bool             Join right
    M_LeaveR = $5BE;                                                    // Bool             Leave right
    M_ListsR = $5BB;                                                    // Bool             Lists right
    M_WhichR = $5AF;                                                    // Bool             Which right
    M_ReviewR = $8A;                                                    // Bool             Review right
    M_VacationR = $5E8;                                                 // Bool             Vacation right
    M_WLR = $5F3;                                                       // Bool             Whitelist right
    M_BLR = $94;                                                        // Bool             Blacklist right

    M_DeliverExternally = $5BC;                                         // Bool             Deliver externally

    // Options
    // GROUP_BEGIN Listserver
    L_Moderated = $7A;                                                  // Bool             Moderated list server
    L_ModeratedPassword = $5DC;                                         // String           Moderated password
    // GROUP_BEGIN Mailinglist
    M_HelpFile = $5CC;                                                  // String           List server help file
    // GROUP_BEGIN Listserver
    L_ListSender = $5AB;                                                // Enum values=(0 - Blank, 1 - Sender, 2 - Owner) Originator
  
    L_MaxList = $5DA;                                                   // Bool             Suppress command responses

    // Rules
    L_BlackWhiteFilter = $699;                                          // Bool             Use Rules

    // Other
    // GROUP_BEGIN Mailinglist
    M_ListServer = $5FA;                                                // Bool             List server vs mailing list

    // Executable Accounts

    // Executable
    E_Alias = $687;                                                     // String           Alias
    E_Name = $690;                                                      // String           Description
    E_Application = $608;                                               // String           Application
    E_ExecType = $605;                                                  // Enum values=(0 - Executable, 1 - StdCall library, 2 - Cdeecl library ,3 - URL) Application type

    E_Parameters = $607;                                                // String           Application parameters
    E_ExecPass = $604;                                                  // String           Password
    E_ExecForwardCopy = $606;                                           // String           Forward to address

    // Rules
    E_BlackWhiteFilter = $69A;                                          // Bool             Use Rules

    // Resources

    // GROUP_BEGIN Resource
    S_Type = $322;                                                      // Int              (rtRoom, rtEquipment,rtCar)
    S_Unavailable = $323;                                               // Bool             Resource temporarily unavailable
    S_Manager = $324;                                                   // String           Manager email
    S_AllowConflicts = $325;                                            // Bool             Allow requests overlapping
    S_OrganizersFile = $326;                                            // String           File with organizers
    S_OrganizersFile_Contents  = $473;                                  // Longstring       Organizers file contents
    S_NotificationToManager = $34F;                                     // Bool             Send notification to S_Manager

    // Remote Accounts

    //Remoteaccount
    // GROUP_BEGIN Remote
    RA_Enabled = $58D;                                                  // Bool             Enabled
    RA_Name = $5B5;                                                     // String           Name
    RA_Server = $5B1;                                                   // String           Server
    RA_IMAP = $59C;                                                     // Bool values=(0 - POP3, 1 - IMAP) Server type

    RA_UserName = $5A9;                                                 // String           Username
    RA_Password = $5A5;                                                 // String           Password
    RA_APOP = $59F;                                                     // Bool             Login using APOP
    RA_TLSSSL = $59B;                                                   // Enum values=(0 - Detect TLS/SSL, 1 - Direct TLS/SSL, 2 - Disable TLS/SSL) TLS/SSL

    RA_ForwardTo = $5B2;                                                // String           Forward to address
    RA_Schedule = $F6;                                                  // Schedule         Remote account schedule

    // Options
    RA_NotifyAdmin = $599;                                              // Bool             Notify administrator of session problems
    RA_Dedupe = $5A2;                                                   // Bool             Dedupe collected emails
    RA_LeaveMessagesOnServer = $59E;                                    // Bool             Leave messages on server
    RA_DeleteOlder = $5A1;                                              // Bool             Delete messages older than (Days)
    RA_DeleteCount = $5A0;                                              // Int              Delete if more than (Messages)
    RA_ExtraForward = $E5;                                              // String           Forward extra copy to address
    RA_ConvertDomains = $ED;                                            // Bool             Convert domain names
    RA_Routing = $EE;                                                   // Bool             Email address routing

    // Domain POP
    RA_DomainPOP = $5A8;                                                // Bool             Domain POP
    RA_NoReceived = $E7;                                                // Bool             Do not processed Received: header
    RA_ReceiveAll = $5A3;                                               // Bool             Stop parsing if Received: yields a local address
    RA_XEnvelopeTo = $E8;                                               // Bool             Parse these headers
    RA_NoNames = $5A6;                                                  // Bool             Real name address matching
    RA_MatchEmail = $5A7;                                               // String           If email:

    RA_DomainString = $5A4;                                             // String           Domain it belongs to
    RA_LeaveMessageFile = $59D;                                         // String           Path to file to keep uids
    RA_Backup = $59A;                                                   // Longstring       Structure backup
    RA_RulesContentXML = $598;                                          // Longstring       Rules xml

    // Static Route Accounts

    // Static route
    // GROUP_BEGIN Route
    R_Alias = $688;                                                     // String           Alias
    R_Name = $691;                                                      // String           Description
    R_Activity = $5C9;                                                  // Enum values=(0 - Forward to address, 1 - Forward to domain, 2 - Forward to host, 3 - Delete, 4 - Deliver to this domain) Action

    R_ExternalDomain = $5C4;                                            // Bool             Forward
    R_ActivityValue = $5C8;                                             // String           Value
    R_SaveTo = $5C3;                                                    // String           Forward to address
    R_ExternalFilter = $5C6;                                            // Enum values=(0 - Filter, 1 - External, 2 - All) Filter

    R_FilterFile = $5C7;                                                // String           Filter file
    R_ExternalFilterFile = $5C5;                                        // String           External filter file
    R_ExternalFilterType = $5C2;                                        // Enum values=(0 - StdCall library, 1 - Cdecl library, 2 - Executable, 3 - URL) External filter type

    // Notification Accounts

    // Notification
    // GROUP_BEGIN Notificaton
    N_Alias = $689;                                                     // String           Alias
    N_Name = $692;                                                      // String           Description
    N_NotifyTo = $5E1;                                                  // String           Notify to:
    N_IMNotification = $5D5;                                            // Bool             IM notification
    N_Size = $A2;                                                       // Int              Max message size (Bytes)
    N_Count = $5D7;                                                     // Int              Split to multiple messages (Messages)
    N_FilterType = $5D0;                                                // Enum values=(0 - All, 1 - None, 2 - Filter) Filter

    N_Send = $A8;                                                       // Bool             Send
    N_FilterFile = $5D6;                                                // String           Filter file path

    // Other
    N_IntoSubject = $5E0;                                               // Bool             Insert information into subject
    N_SendTo = $A3;                                                     // Bool             Insert To: header
    N_SendFrom = $A4;                                                   // Bool             Insert From: header
    N_SendSubject = $A5;                                                // Bool             Insert Subject
    N_SendDateTime = $A7;                                               // Bool             Insert Date/Time
    N_SendBody = $A6;                                                   // Bool             Insert Body
    N_From = $5D1;                                                      // String           From:
    N_Subject = $5D4;                                                   // String           Subject
    N_Body = $5D3;                                                      // Longstring       Body
    N_File = $5D2;                                                      // String           Text file
    N_ForwardCopy = $5D9;                                               // String           Forward to:
    N_Sender = $5D8;                                                    // Enum values=(0 - Empty, 1 - Sender, 2 - Owner) Originator

    // Rules
    N_BlackWhiteFilter = $69B;                                          // Bool             Use Rules


    // Catalog Accounts 

    // Catalog
    // GROUP_BEGIN Catalog
    T_Alias = $68A;                                                     // String           Alias
    T_Name = $693;                                                      // String           Description
    T_CatalogPass = $5C1;                                               // String           Password
    T_CatalogSubject = $D1;                                             // Bool             Commands in subject
    T_CatalogFile = $5B7;                                               // String           Catalog file

    // Other
    T_CatalogGet = $5C0;                                                // Bool             Get right
    T_CatalogDir = $5B9;                                                // Bool             Dir right
    T_CatalogSendTo = $5B6;                                             // Bool             SendTo right
    T_CatalogSender = $5B8;                                             // Enum values=(0 - Empty, 1 - Sender, 2 - Owner) Originator

    // Rules
    T_BlackWhiteFilter = $69C;                                          // Bool             Use Rules

///////////////////
// Configuration //
///////////////////
// Version & License

    // GROUP_BEGIN General
    C_Version = $1000;                                                  // String           Server version [R]
    C_SettingsVersion = $31A;                                           // String           Settings version [R]
    C_Date = $1004;                                                     // String           Server release date [R]
    C_Backup = $1001;                                                   // Longstring [D]   Server settings backup string
    C_OS     = $1002;                                                   // Bool values=(0 - Windows, 1 - Linux) Server OS version [R]

    C_TimeZone = $1003;                                                 // Int              Time zone in seconds [R]

    C_SuiteType = $15;                                                  // Enum values=(1 - Pro, 2 - Standard, 3 - Lite) Mail server license type [R]

    C_InstallPath = $10A;                                               // String           Mail server installation path [R]
    C_ConfigPath = $AA;                                                 // String           Path to Config folder [R]
    C_WebPath = $200;                                                   // String [R]       Path to HTML folder
    // GROUP_BEGIN Antispam
    C_SpamPath = $202;                                                  // String [R]       Path to spam folder
    // GROUP_BEGIN General
    C_CalendarPath = $203;                                              // String [R]       Path to calendar folder
    C_PathServiceID = $201;                                             // String [R]       Load balancing server ID

    // GROUP_BEGIN GUI
    C_GUI_RequireAuth = $D0;                                            // Bool             Require Authentication to access Admin console
    C_GUI_SafeConfirm = $40;                                            // Bool             Use Safe confirmation
    C_GUI_ShowSortingString = $4A2;                                     // Bool             If set to true, it is possible to edit sorting string on tab with user vcard

    // GROUP_BEGIN General
    C_License_XML = $AB;                                                // Longstring       XML decrypted license [R] [D]
    C_License = $A9;                                                    // Longstring       Server license (read/export and add new license) [D]
    C_LicenseStatus = $440;                                             // Int              License status (lsSuccess, lsEvaluation, lsReferenceMismatch, lsRevalidation, lsExpired, lsNone, lsBuildDate)
    C_License_Modules_Report_Email = $495;                              // String           Generate detailed XML report about "used seats" and send it to this email
    C_License_Expired_For_Upgrade = $583;                               // Bool             Returns true when license forbids upgrading the server

    C_Reference = $131;                                                 // String           Server reference key [R]
    C_OnlineLicense = $169;                                             // String           Retrieve online license using Order ID
    C_ObtainTrialLicense = $489;                                        // String           Registers trial license, value have to be "Name;Email;Company;Address;ZIP;CountryCode;Phone"

    C_SettingsTime = $243;                                              // Int              Unix timestamp of settings creation [R]
    C_EvalExpirationTime = $244;                                        // Int              Unix timestamp of evaluation expiration [R]

// Accounts

    // Global Settings
        
    // Accounts
    // GROUP_BEGIN Accounts
    C_Accounts_Global_Accounts_UserStat = $74;                          // Bool             Enable User statistics
    C_Accounts_Global_Accounts_UseDefaults = $4D;                       // Bool             Use Account defaults
    C_Accounts_Global_Accounts_DisableCache = $1A4;                     // Bool             Disables account caching
    C_Accounts_Global_Accounts_AccountCache = $1A8;                     // Int              Maximal number of cached items per domain. Domains wirh less than this number accounts will cache every account. Greater domains will check only recently accessed accounts (such cache can not be used for looping over all domain members)

    C_Accounts_Global_Accounts_Disable_Account_Change_Journal = $475;   // Bool             Disables database journal tracking changes in accounts , the journal is used for faster update of account cache - only changed accounts are updated


    C_Accounts_Global_Accounts_DirectoryCacheWaveSleep = $425;          // Int              number of miliseconds to wait after wave processes WaveSafecount items, default = 0, which means automated sophisticated choice
    C_Accounts_Global_Accounts_DirectoryCacheWaveSafeCount = $427;      // Int              number of items to process before waiting, default = 0, which means automated sophisticated choice
    C_Accounts_Global_Accounts_DirectoryCacheConnectionString = $458;   // String           Connection string to directory cache database
    C_Accounts_Global_Accounts_DirectoryCacheSchedule = $498;           // Schedule         Schedule data for directorycache
    C_Accounts_Global_Accounts_DirectoryCacheExclusiveLocking = $49D;   // Bool             If set to true, the only one quaery against the directory cache is done at a time  (changing requires restart of all services)

    C_Accounts_Global_Accounts_DirectoryCache_RefreshNow = $4D7;        // Bool             Write only variable , if anything is written there, full refresh of the directorycache is scheduled

    C_Accounts_Global_Accounts_DirectoryCache_WaveStopped = $4F6;       // Bool             If set to true, wave mode processing is interupted and no new wave is started unless this variable is set to false again
    // GROUP_BEGIN Advanced
    C_System_Server_DirectoryCacheDontUseTransactions = $517;           // Bool             Disable transaction usage in directorycache processing



    // GROUP_BEGIN Logging
    C_System_Log_Services_DirectoryCache = $492;                        // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) Directory Cache logging level

    // GROUP_BEGIN Accounts
    C_Accounts_Global_Accounts_MaintenanceLog = $1BD;                   // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) Maintenance logging level

           C_Accounts_Global_Accounts_AuthLog = $4C6;                   // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) Auth logging level

    C_Accounts_Global_Accounts_DeliveryReports = $34D;                  // Bool             Delivery reports
    C_Accounts_Global_Accounts_DeliveryReportsDeleteOlder = $49F;       // Int              Delete delivery report files older then given number of days

    C_Accounts_Global_Distributed_Accounts_Cache_Enabled = $34A;        // Bool             enables distributed domains accounts caching
    C_Accounts_Global_Distributed_Accounts_Cache_Max = $34B;            // Int              Maximal Number of cached items
    C_Accounts_Global_Distributed_Accounts_CacheExpire = $34C;          // Int              cache expiration in seconds

    // GROUP_BEGIN SMTP/POP3/IMAP
    C_System_Services_SMTP_Rewrite_Backup_Recipients = $461;            // Bool             if set to false, sending to aliases of backup and distributed domains does not rewrite recipients domain with the domain where the alias points to

    C_System_Services_SMTP_MaxOutgoingLimitPerDomainEnabled=$522;       // Bool             enables limiting of number of outgoing connections to the same domain per minute
    C_System_Services_SMTP_MaxOutgoingLimitPerDomainValue= $523;        // Int              for  C_System_Services_SMTP_MaxOutgoingLimitPerDomainEnabled
    C_System_Services_SMTP_MaxSenderLimitPerDomainEnabled= $524;        // Bool             enables limiting of number of outgoing connections from the same domain per minute
    C_System_Services_SMTP_MaxSenderLimitPerDomainValue= $525;          // Int              Value for C_System_Services_SMTP_MaxSenderLimitPerDomainEnabled
    C_System_Services_SMTP_SendingStopped=$526;                         // Bool             Experimental - Never set this to true
    C_System_Services_SMTP_SoftQuota=$543;                              // Bool             When enabled,  user can receive messages even if his mailbox is full, but he can not send any message instead



    // GROUP_BEGIN Advanced
    C_Accounts_Global_SpaceReplaceChar = $4F5;                          // String           One char only, a default character replacing spaces in alias

    // Domains
    // GROUP_BEGIN Domains
    C_Accounts_Global_Domains_UseDiskQuota = $3F;                       // Bool ddar=r      Use Domain disk quota
    C_Accounts_Global_Domains_UseUserLimits = $A0;                      // Bool ddar=r      Use Domain user limits
    C_Accounts_Global_Domains_UseDomainLimits = $1EC;                   // Bool ddar=r      Use Domain limits
    C_Accounts_Global_Domains_UseExpiration = $F2;                      // Bool ddar=r      Use Domain expiration
    C_Accounts_Global_Domains_OverrideGlobal = $C3;                     // Bool             Override global limits
    C_Accounts_Global_Domains_Literals = $B3;                           // Bool             Enable Domain literals
    C_Accounts_Global_Domains_DomainKeys = $13D;                        // Bool             Enable DomainKeys support
    C_Accounts_Global_Domains_Hostname = $196;                          // Bool             Use domain hostnames for outgoing msgs
    C_Accounts_Global_Domains_IPAddress = $197;                         // Bool             Use domain IP address for outgoing msgs
    C_Accounts_Global_Domains_WelcomeMsgs = $45;                        // Bool             Use Welcome messages
    C_Accounts_Global_Domains_WarnMailboxUsage = $D3;                   // Int              Warn when mailbox size exceeds (%)
    C_Accounts_Global_Domains_UserQuotaWrnMsgRepeat = $4AC;             // Int              Repeat period of warning message user mailbox size quota exceeded in hours (0 means no repeat)
    C_Accounts_Global_Domains_UserAccountDisabledReceive = $4AD;        // Bool             False for Disabled(Login) or True for Disabled(Login, Reeceive)

    C_Accounts_Global_Domains_WarnDomainSize = $167;                    // Int              Warn when domain size exceeds (%)

    // GROUP_BEGIN Advanced
    C_Accounts_Global_ActiveDirectorySyncInterval = $1D7;               // Int              Minutes interval
    C_System_ADSyncLogType = $419;                                      // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary) AD synchronization logging level


    C_System_ADSyncIgnoreSearchError = $433;                            // Bool             If AD synchronization search returns error, but still some data were returned, Synchronization performs no delete operation by default. Setting this to true enables delete operations for this cases.
    C_System_ADSyncMaxDeleteThreshold = $434;                           // Int              If set to value greater than 0, AD sync performs no delete if it should delete more accounts than this value
    C_System_ADSyncDisableVCardSync = $485;                             // Bool             If set, AD sync will not fill in user's Card with information from AD server

    C_System_KerberosLogType = $42A;                                    // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary) Kerberos Authentication logging level

    // LDAP
    // GROUP_BEGIN LDAP
    C_Accounts_Global_LDAP_Synchronize = $D6;                           // Bool             LDAP user synchronization enable
    C_Accounts_Global_LDAP_Host = $1CD;                                 // String           LDAP user synchronization host
    C_Accounts_Global_LDAP_Base = $1CE;                                 // String           LDAP user synchronization base DN
    C_Accounts_Global_LDAP_User = $1CF;                                 // String           LDAP user synchronization user DN
    C_Accounts_Global_LDAP_Pass = $1D0;                                 // String           LDAP user synchronization password
    C_Accounts_Global_LDAP_UseWindowsDLL = $344;                        // Bool             [NO EFFECT] windows ldap library is always used on windows
    C_Accounts_Global_LDAP_UseNTLMAuth = $449;                          // Bool             use NTLM instead of plain auth, requires C_Accounts_Global_LDAP_UseWindowsDLL to be enabled
    C_Accounts_Global_LDAP_SyncPrimaryAliasOnly = $4DB;                 // Bool             If enabled, only primary alias is synced to the LDAP server

    C_Accounts_Global_LDAP_PassChangeDisable = $429;                    // Bool             Disable password changing in LDAP

    // Console
    // GROUP_BEGIN GUI
    C_Accounts_Global_Console_ShowAccounts = $145;                      // Int              Number of shown accounts in a domain
    C_Accounts_Global_Console_AccountsPosition = $144;                  // Int              Database account display start position
    C_Accounts_Global_Console_DomainDescription = $3A;                  // Enum values=(0 - Domain, 1 - Description + Domain, 2 - Domain + Description) Domain list display mode

    C_Accounts_Global_Console_AccountDescription = $315;                // Int              Account display mode


// Policies

    // Login Policy
    // GROUP_BEGIN Accounts Policies
    C_Accounts_Policies_Login_Enable = $F3;                             // Bool             Enable Login policy
    C_Accounts_Policies_Login_Attempts = $F4;                           // Int              Number of failed logins
    C_Accounts_Policies_Login_BlockPeriod = $F5;                        // Int              Block user login for (Min)
    C_Accounts_Policies_Login_LoginSettings = $73;                      // Bool values=(0 - login with username, 1 - login with full email address) Login settings mode
    
    C_Accounts_Policies_Login_Block = $1F4;                             // Bool values=(0 - Do not block but delay authentication, 1 - Block account for specified time) Login policy mode
    
    C_Accounts_Policies_Login_ConvertChars = $79;                       // Bool             Convert chars %/ to @ in username

    C_Accounts_Policies_Login_IPRestriction = $134;                     // Bool             Enables account IP restriction

    C_Accounts_Policies_Login_DisableDomainIPLogin = $1F8;              // Bool             Disable logging with domain IP, domain name has to be used


    C_Accounts_Policies_SuperUser = $1EA;                               // Bool             Enable super user login
    C_Accounts_Policies_SuperUserPassword = $1EB;                       // String           Super user password

    C_Accounts_Policies_Login_AuthWISIDDisable = $215;                  // Bool             Obsolete

    // Password policy
    C_Accounts_Policies_Pass_Enable = $9B;                              // Bool             Enable Password policy
    C_Accounts_Policies_Pass_MinLength = $9C;                           // Int              Min password length
    C_Accounts_Policies_Pass_Digits = $9D;                              // Int              Number of numeric chars in password
    C_Accounts_Policies_Pass_NonAlphaNum = $F7;                         // Int              Number of non alphanumeric characters
    C_Accounts_Policies_Pass_UserAlias = $B7;                           // Bool             Check password against username/alias
    C_Accounts_Policies_Pass_Expiration = $FA;                          // Bool             Enable password expiration
    C_Accounts_Policies_Pass_ExpireAfter = $FB;                         // Int              Expire after (Days)
    C_Accounts_Policies_Pass_Notification = $240;                       // Bool             Enable Notification of expiration
    C_Accounts_Policies_Pass_NotifyBefore = $241;                       // Int              Notify before (Days)
    C_Accounts_Policies_Pass_DenyExport = $F8;                          // Bool             Passwords cannot be read or exported
    C_Accounts_Policies_Pass_AllowAdminPass = $F9;                      // Bool             Allow Admin's password to be exported
    C_Accounts_Policies_Pass_Encrypt = $CD;                             // Bool             Password database encryption
    C_Accounts_Policies_Pass_Alpha = $1E9;                              // Int              Number of alpha characters
    C_Accounts_Policies_Pass_UpperAlpha = $417;                         // Int              Number of uppercase alpha characters

    C_Accounts_Policies_Auth_Schemes = $435;                            // String           Allowed authentication SASL schemes
    C_Accounts_Policies_Auth_ToMailFrom = $436;                         // Bool             Make authenticated user the actual sender
    C_Accounts_Policies_Auth_DisablePlain = $437;                       // Bool             Disable plain authentication in all services

    C_Accounts_Policies_Auth_DontCacheExternalPasswords = $6A6;         // Bool           If enabled, IceWarp will not locally cache passwords of accounts authenticated externally (LDAP, or dll authentication). This will cause malfunction af all challenga based authentications
    C_Accounts_Policies_Auth_DefaultExternalSyncLibrary = $6A7;         // String         If synchronization library is not set on specific place ,this library will be used instead

    C_Accounts_Cluster_AllowSlaveLogin = $6AF;                          // Bool         If enabled, users can login into domain cluster also with their true email (from slave domain)

// System

        // GROUP_BEGIN GUI
    C_System_Console_Policy = $4F7;                                     // Int              Bitmask
        // $01 - Disable file manager
        // $02 - Disable DNS tool
        // $04 - Disable API console
        // $08 - Disable SQL manager

    // Services
    // GROUP_BEGIN Advanced
    C_System_FileName_Ends_With_ServerId  = $486;                       // Bool             If enabled - ServerId (see Load Ballancing) will appear at the end of generated filenames and not at the beginning

    C_System_Services_Firewall = $5B;                                   // Bool             Restrict access to all services
    C_System_Services_BindIPAddress = $27;                              // String           IP addresses to bind services to


    // SMTP service
    // GROUP_BEGIN SMTP/POP3/IMAP
    C_System_Services_SMTP_Port = $1B;                                  // Int              SMTP service port
    C_System_Services_SMTP_SSLPort = $3B;                               // Int              SMTP service SSL port
    C_System_Services_SMTP_AltPort = $13;                               // Int              SMTP service alternative port
    C_System_Services_SMTP_Traffic = $103;                              // Bool             Enable SMTP traffic logs
    C_System_Services_SMTP_IPList = $5D;                                // String           List of Denied/Granted IPs
    C_System_Services_SMTP_AccessMode = $5C;                            // Bool values=(0 - Deny, 1 - Grant) Service Policy
   
    C_System_Services_SMTP_Startup = $251;                              // Int              (ssAutomatic, ssManual)
    C_System_Services_SMTP_ThreadCache = $51;                           // Int              SMTP service Thread cache
    C_System_Services_SMTP_MonitorData = $14F;                          // Int              Monitor increased traffic
    C_System_Services_SMTP_MonitorConn = $150;                          // Int              Monitor number of increased connections
    C_System_Services_SMTP_MaxInConn = $112;                            // Int              Max number of Incoming connections
    C_System_Services_SMTP_MaxOutConn = $50;                            // Int              Max number of Outgoing connections
    C_System_Services_SMTP_Bandwidth = $11F;                            // Int              Max transfer bandwidth (kB/s)

    C_System_Services_SMTP_Tarpitting_MoreRestrictive= $586;            // Bool             If set to true, presence of the session IP in Intrusion prevention list will be performed more often and not only at the beginning of the session


    // POP3 service
    C_System_Services_POP3_Port = $19;                                  // Int              POP3 service port
    C_System_Services_POP3_SSLPort = $1A;                               // Int              POP3 service SSL port
    C_System_Services_POP3_Traffic = $104;                              // Bool             Enable SMTP traffic logs
    C_System_Services_POP3_IPList = $5F;                                // String           List of Denied/Granted IPs
    C_System_Services_POP3_Accessmode = $5E;                            // Bool values=(0 - Deny, 1 - Grant) Service Policy
   
    C_System_Services_POP3_Startup = $252;                              // Int              (ssAutomatic, ssManual)
    C_System_Services_POP3_ThreadCache = $52;                           // Int              POP3 service thread cache
    C_System_Services_POP3_MaxInConn = $113;                            // Int              Max number of Incoming connections
    C_System_Services_POP3_MaxOutConn = $4F;                            // Int              Max number of Outgoing connections
    C_System_Services_POP3_Bandwidth = $120;                            // Int              Max transfer bandwidth (kb/s)
    C_System_Services_POP3_MonitorData = $151;                          // Int              Monitor increased traffic
    C_System_Services_POP3_MonitorConn = $152;                          // Int              Monitor number of increased connections
    // GROUP_BEGIN Advanced
    C_System_POP3_Locking = $31E;                                       // Bool             POP3 does not allow multiple login of one account

    // IMAP service
    // GROUP_BEGIN SMTP/POP3/IMAP
    C_System_Services_IMAP_Port = $1F;                                  // Int              IMAP service port
    C_System_Services_IMAP_SSLPort = $1C;                               // Int              IMAP service SSL port
    C_System_Services_IMAP_Traffic = $105;                              // Bool             Enable IMAP traffic logs
    C_System_Services_IMAP_ThreadCache = $12B;                          // Int              IMAP service thread cache
    C_System_Services_IMAP_MaxInConn = $114;                            // Int              Max number of Incoming connections
    C_System_Services_IMAP_MaxOutConn = $12C;                           // Int              Max number of Outgoing connections
    C_System_Services_IMAP_Bandwidth = $121;                            // Int              Max transfer bandwidth (kB/s)
    C_System_Services_IMAP_IPList = $127;                               // String           List of Denied/Granted IPs
    C_System_Services_IMAP_Accessmode = $128;                           // Bool             Service Policy
    C_System_Services_IMAP_MonitorData = $153;                          // Int              Monitor increased traffic
    C_System_Services_IMAP_MonitorConn = $154;                          // Int              Monitor number of increased connections

    C_System_Services_IMAP_FileNameFlags = $1C7;                        // Bool             Use IMAP flags encoded in mail filename
    C_System_Services_IMAP_IndexedSearch =$32E;                         // Enum values=(0 - No Integration, 1 - Windows Desktop Search) Integrate IMAP search with indexing service

    C_System_Services_IMAP_DisableBodySearch = $50D;                    // Bool             Do not search in mail body

    C_System_Services_IMAP_RSSInterval = $340;                          // Int              Integrate IMAP search with indexing service
    C_System_Services_IMAP_ForceFullsync =$426;                         // Bool             Obsolete, only for backward compatibility
    C_System_Services_IMAP_CopyBWFunction =$45B;                        // Bool             Copy/Move from Inbox to Spam indexes e-mail to Blacklist, Copy/Move from Spam to Inbox indexes e-mail to WhiteList
    C_System_Services_IMAP_FullSyncInterval =$48C;                      // Int              (hours) Determines how often is IMAP going to sync contents of imapindex.dat with filesystem. When the time for next sync is evalueted, random number between 0 and this value is added to this value. The full item sync should be needed only if some files were added directly on filesystem.
    C_System_Services_IMAP_FreeMemoryOnIdle =$4A1;                      // Bool             When IDLE is performed, information about all items are freed from memory and reloaded only after changes are detected or when idle is terminated

    // GROUP_BEGIN Advanced
    C_System_Services_SmallFilesCache_Size = $46E;                      // String           Maximal size (in bytes) of cache for small files, (imapindex.dat, flags.dat...), Seto 0 to disable, do not enable on LB scenarios
    C_System_Services_SmallFilesCache_MaxFileSize = $46F;               // Int              Maximal size (in bytes) of file, which will be cached in cache for small files, (imapindex.dat, flags.dat...)
    C_System_Services_SmallFilesCache_DelayWrite= $470;                 // Bool             If set to true, cache write operations are not directly done on filesystem, but are procesed in background thread - temporarily switched off (i.e. this setting has no effect now)

    C_System_Services_IMAP_DBCache_ConnectionString= $587;              // String           If connection string is set, IMAP service will use DB engine for caching contents of imapindex.dat and similar files and for locking directories. It has sense only in LB scenario. It requires mysql db for directorycache. It uses 2 redundant tables in directorycache db

    // IM service
    // GROUP_BEGIN Instant Messaging
    C_System_Services_IM_Port = $E1;                                    // Int              IM service port
    C_System_Services_IM_SSLPort = $E2;                                 // Int              IM service SSL port
    C_System_Services_IM_AltPort = $BD;                                 // Int              IM service alternative port
    C_System_Services_IM_Traffic = $106;                                // Bool             Enable IM traffic logs
    C_System_Services_IM_IPList = $100;                                 // String           List of Granted / Denied IPs
    C_System_Services_IM_AccessMode = $FF;                              // Bool values=(0 - Deny, 1 - Grant) Service Policy
      
    C_System_Services_IM_Startup = $253;                                // Int              (ssAutomatic, ssManual)
    C_System_Services_IM_ThreadCache = $DE;                             // Int              Service thread cache
    C_System_Services_IM_MaxInConn = $118;                              // Int              Max number of Incoming connections
    C_System_Services_IM_Bandwidth = $125;                              // Int              Max transfer bandwidth (kB/s)
    C_System_Services_IM_MonitorData = $155;                            // Int              Monitor increased traffic
    C_System_Services_IM_MonitorConn = $156;                            // Int              Monitor number of increased connections

    // Groupware service
    // GROUP_BEGIN Groupware
    C_System_Services_GW_Port = $B8;                                    // Int              GW service port
    C_System_Services_GW_Traffic = $107;                                // Bool             Enable GW traffic logs
    C_System_Services_GW_IPList = $102;                                 // String           List of Denied/Granted IPs
    C_System_Services_GW_AccessMode = $101;                             // Bool values=(0 - Deny, 1 - Grant) Service Policy
        
    C_System_Services_GW_Startup = $254;                                // Int              (ssAutomatic, ssManual)
    C_System_Services_GW_ThreadCache = $12A;                            // Int              GW service Thread cache
    C_System_Services_GW_MaxInConn = $119;                              // Int              Max number of Incoming connections
    C_System_Services_GW_Bandwidth = $126;                              // Int              Max transfer bandwidth (kB/s)
    C_System_Services_GW_MonitorData = $157;                            // Int              Monitor increased traffic
    C_System_Services_GW_MonitorConn = $158;                            // Int              Monitor number of increased connections

    // Control service
    // GROUP_BEGIN Webserver
    C_System_Services_Control_Port = $1E;                               // Int              Control service port
    C_System_Services_Control_SSLPort = $20;                            // Int              Control service SSL port
    C_System_Services_Control_Traffic = $108;                           // Bool             Enable Control traffic logs
    C_System_Services_Control_IPList = $63;                             // String           List of Denied/Granted IPs
    C_System_Services_Control_AccessMode = $62;                         // Bool values=(0 - Deny, 1 - Grant) Service Policy      

    C_System_Services_Control_Startup = $256;                           // Int              (ssAutomatic, ssManual)
    C_System_Services_Control_ThreadCache = $53;                        // Int              Control service Thread cache
    C_System_Services_Control_MaxInConn = $115;                         // Int              Max number of Incoming connections
    C_System_Services_Control_Bandwidth = $122;                         // Int              Max transfer bandwidth (kB/s)
    C_System_Services_Control_MonitorData = $159;                       // Int              Monitor increased traffic
    C_System_Services_Control_MonitorConn = $15A;                       // Int              Monitor number of increased connections

    // FTP service
    // GROUP_BEGIN FTP
    C_System_Services_FTP_Port = $10C;                                  // Int              FTP service port
    C_System_Services_FTP_SSLPort = $10D;                               // Int              FTP service SSL port
    C_System_Services_FTP_Traffic = $11A;                               // Bool             Enable FTP traffic logs
    C_System_Services_FTP_IPList = $11B;                                // Longstring       List of Granted / Denied IPs
    C_System_Services_FTP_AccessMode = $11C;                            // Bool values=(0 - Deny, 1 - Grant) Service Policy
   
    C_System_Services_FTP_ThreadCache = $11D;                           // Int              Service thread cache
    C_System_Services_FTP_MaxInConn = $116;                             // Int              Max number of Incoming connections
    C_System_Services_FTP_MaxOutConn = $11E;                            // Int              Max number of Outgoing connections
    C_System_Services_FTP_Bandwidth = $123;                             // Int              Max transfer bandwidth (kB/s)
    C_System_Services_FTP_MonitorData = $15B;                           // Int              Monitor increased traffic
    C_System_Services_FTP_MonitorConn = $15C;                           // Int              Monitor number of increased connections

    // LDAP service
    // GROUP_BEGIN LDAP
    C_System_Services_LDAP_Enable = $6D;                                // Bool             Enable LDAP service
    C_System_Services_LDAP_Port = $12;                                  // Int              LDAP service port
    C_System_Services_LDAP_SSLPort = $11;                               // Int              LDAP service SSL port
    C_System_Services_LDAP_MaxInConn = $117;                            // Int              Max number of Incoming connections
    C_System_Services_LDAP_Bandwidth = $124;                            // Int              Max transfer bandwidth (kB/s)

    // GROUP_BEGIN Proxy
    C_System_Services_Socks_Enabled = $218;                             // Bool             Enable Socks server
    C_System_Services_Socks_Port = $219;                                // Int              Socks port
    C_System_Services_Socks_MaxInConn = $30D;                           // Int              SOCKS - Maximum number of incoming connections
    C_System_Services_Socks_IPList = $30E;                              // String           List of Denied/Granted IPs
    C_System_Services_Socks_IPGrant = $30F;                             // Bool             Access type, false - deny, true - grant

            // Minger service
    // GROUP_BEGIN Advanced
    C_System_Services_Minger_Enabled = $345;                            // Bool             Enable Minger server
    C_System_Services_Minger_Port = $346;                               // Int              Basic Minger port (UDP)
    C_System_Services_Minger_SSLPort = $42E;                            // Int              Minger SSL port (TCP)

    C_System_Services_Minger_Logging = $348;                            // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) Minger log level

    // GROUP_BEGIN Smart Discover
    C_System_AutoDiscover_SMTPType = $367;                              // Enum values=(0 - Standard, 1 - TLS/SSL, 2 - 2nd basic port (no SSL)) SmartDiscover SMTP type

    C_System_AutoDiscover_SMTP = $4A8;                                  // String           SmartDiscover SMTP setting
    C_System_AutoDiscover_POP3 = $368;                                  // String           SmartDiscover POP3 setting
    C_System_AutoDiscover_POP3Type = $369;                              // Bool values=(0 - Standard, 1 - TLS/SSL) SmartDiscover POP3 type
      
    C_System_AutoDiscover_IMAP = $36A;                                  // String           SmartDiscover IMAP setting
    C_System_AutoDiscover_IMAPType = $36B;                              // Bool values=(0 - Standard, 1 - TLS/SSL) SmartDiscover IMAP type

    C_System_AutoDiscover_XMPP = $36C;                                  // String           SmartDiscover XMPP setting
    C_System_AutoDiscover_XMPPType = $36D;                              // Bool values=(0 - Standard, 1 - TLS/SSL) SmartDiscover XMPP type

    C_System_AutoDiscover_SIP = $36E;                                   // String           SmartDiscover SIP setting
    C_System_AutoDiscover_SIPType = $36F;                               // Bool values=(0 - Standard, 1 - TLS/SSL) SmartDiscover SIP type

// Logging

    // General
    // GROUP_BEGIN Logging
    C_System_Logging_General_AppendFiles = $19A;                        // Bool             Append logs to files
    C_System_Logging_General_DeleteOlder = $34;                         // Int              Delete logs after (Days)
    C_System_Logging_General_Archive = $1DD;                            // Bool             Enable deleted logs archiving
    C_System_Logging_General_ArchiveTo = $1DE;                          // String           Deleted log archive target
    C_System_Logging_General_LogCache = $67;                            // Int              Logging cache size (B)
    C_System_Logging_General_LogRotation = $12D;                        // Int              Size of the log file to rotate (kB)
    C_System_Logging_General_SystemLogFunction = $7B;                   // Bool             Send logs to system log function
    C_System_Logging_Syslog_Active = $19B;                              // Bool             Send logs to server
    C_System_Logging_Syslog_Server = $19C;                              // String           Syslog server name
    C_System_Logging_General_EnableODBCLog = $6C;                       // Bool             Enable ODBC logging
    C_System_Logging_General_ODBCLogConn = $6B;                         // String           ODBC logging connection
    C_System_Logging_General_LogTimeFormat = $1B9;                      // Enum values=(0 - sltfTime, 1 - sltfScientific, 2 - sltfRFC822, 3 - sltfTimeDetailed) Log time format

    C_System_Logging_General_ExperimentalFastLogging = $46B;            // Bool             Enables experimental file logging mode - everything is sent to control service using pipe connection, from background thread
    C_System_Logging_General_EnableStackTrace = $476;                   // Bool             Enables more detailed logging of system exceptions, if enabled, whole stacktrace is logged

    C_System_Logging_Maintenance_Identity = $281;                       // String           Thread variable - will be used in maintenance logs as "WHO"

    // GROUP_BEGIN Advanced
    C_System_Sessions_DisableHistory = $1BF;                            // Bool             Disable session history

    // Services
    // GROUP_BEGIN Logging
    C_System_Log_Services_SMTP = $64;                                   // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) SMTP service logging level

    C_System_Log_Services_POP3 = $69;                                   // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) POP3 service logging level

    C_System_Log_Services_IMAP = $10F;                                  // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) IMAP service logging level

    C_System_Log_Services_IM = $E0;                                     // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) IM service logging level

    C_System_Log_Services_GW = $B1;                                     // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) GW service logging level

    C_System_Log_Services_Control = $6E;                                // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) Control service logging level

    C_System_Log_Services_FTP = $10E;                                   // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) FTP service logging level

    C_System_Log_Services_LDAP = $110;                                  // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) LDAP service logging level

    C_System_Log_Services_AV = $97;                                     // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) AV logging level

    C_System_Log_Services_AS = $15F;                                    // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) AS logging level

    C_System_Log_Services_SIP = $18A;                                   // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) SIP logging level

    C_System_Log_Services_SMS = $210;                                   // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) SMS service logging level

    C_System_Log_Services_SyncPush = $213;                              // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) Push service logging level

    C_System_Log_Services_Socks = $310;                                 // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) Socks logging level

    C_System_Log_Services_CISCO  = $4E7;                                // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) SCisco Sync logging level

    C_System_Log_MailQueue = $1E4;                                      // Bool             Debug logging - internal usage only
    C_System_Log_API = $300;                                            // Bool             Debug API logging - internal usage only
    C_System_Log_DNS = $30C;                                            // Bool             Debug DNS logging - internal usage only
    C_System_Log_Performance = $34E;                                    // Int              Debug performance - actions exceeding time in seconds
    C_System_Log_Performance_Level = $423;                              // Int              Debug performance - level of importance  0 - basic, 10 - brutal

    C_System_Log_MaxLogSize = $4D6;                                     // Int              Maximum single log size in bytes - 0 means unlimited


// Tools
    // Auto backup
    // GROUP_BEGIN System Tools
    C_System_Tools_AutoBackup_Enable = $6F;                             // Bool             Enable Auto backup
    C_System_Tools_AutoBackup_BackupTo = $140;                          // String           Path to backup file
    C_System_Tools_AutoBackup_Password = $1D2;                          // String           Password
    C_System_Tools_AutoBackup_Schedule = $141;                          // Schedule         Auto backup Schedule
    C_System_Tools_AutoBackup_DeleteAfter = $142;                       // Int              Delete backup file after (Days)
    C_System_Tools_IncludeMailDir = $FE;                                // Bool             Include mail folder settings to backup
    C_System_Tools_ExcludeLicense = $CC;                                // Bool             Do not include license to backup file
    C_System_Tools_Backup_Emails = $1AA;                                // Bool             Backup emails
    C_System_Tools_Backup_SkipLarger = $1AB;                            // Int              Skip emails larger (MB)
    C_System_Tools_Backup_SkipOlder = $1AC;                             // Int              Skip emails older (Days)
    C_System_Tools_Backup_Dirs = $1AD;                                  // String           Additional directories to backup
    C_System_Tools_Backup_Logs = $1B2;                                  // Bool             Backup logs
    C_System_Tools_Backup_GWAttach = $294;                              // Bool             Backup groupware attachments
    C_System_Tools_Backup_DB_AccountsEnabled = $301;                    // Bool             Backup account database
    C_System_Tools_Backup_DB_Accounts = $302;                           // String           Accounts database backup target DSN
    C_System_Tools_Backup_DB_ASEnabled = $303;                          // Bool             Backup Anti-Spam database
    C_System_Tools_Backup_DB_AS = $304;                                 // String           Anti-Spam database backup target DSN
    C_System_Tools_Backup_DB_GWEnabled = $305;                          // Bool             Backup groupware database
    C_System_Tools_Backup_DB_GW = $306;                                 // String           Groupware database backup target DSN
    C_System_Tools_Backup_DB_DirectoryCacheEnabled = $4B3;              // Bool             Backup directory cache database
    C_System_Tools_Backup_DB_DirectoryCache = $4B4;                     // String           Directory cache database backup target DSN


    // Mail archive
    C_System_Tools_AutoArchive_Enable = $99;                            // Bool             Enable Auto archive
    C_System_Tools_AutoArchive_Path = $9A;                              // String           Auto archive path
    C_System_Tools_AutoArchive_DoNotSpam = $224;                        // Bool             Do not archive spam messages
    C_System_Tools_AutoArchive_DeleteOlder = $BA;                       // Int              Delete archive older than (Days)
    C_System_Tools_AutoArchive_Outgoing = $143;                         // Int              (ammAll, ammInbox, ammAllRoot, ammInboxRoot, ammDeleted)
    C_System_Tools_AutoArchive_Backup_Active = $1AE;                    // Bool             Backup archive
    C_System_Tools_AutoArchive_Backup_DeleteOlder = $1B0;               // Int              Delete old archive backups
    C_System_Tools_AutoArchive_Backup_File = $1B1;                      // String           Archive backup file
    C_System_Tools_AutoArchive_Backup_Password = $1D1;                  // String           Password
    C_System_Tools_AutoArchive_TrailerPath = $309;                      // String           Archive directory trailer path
    C_System_Tools_AutoArchive_IMAPArchiveName = $30A;                  // String           Archive IMAP folder name
    C_System_Tools_AutoArchive_IMAPArchive = $30B;                      // Bool             Enable integration of archive with IMAP
    C_System_Tools_AutoArchive_IMAPArchiveSent = $329;                  // String           Archive Sent IMAP folder name
    C_System_Tools_AutoArchive_IMAPArchiveInbox = $32A;                 // String           Archive Inbox IMAP folder name
    C_System_Tools_AutoArchive_UnknownUsers = $33F;                     // Bool             Archive mail for unknown users
    C_System_Tools_AutoArchive_ForwardArchive = $341;                   // String           Forward archived messages to
    C_System_Tools_AutoArchive_GroupAccess = $1B6;                      // String           Optional group speciying users with access to archive
    C_System_Tools_AutoArchive_RSS = $474;                              // Bool             Enable RSS archive

    // Atomic clock sync
    C_System_Tools_AtomicClockSync_Enable = $96;                        // Bool             Enable Atomic clock sync

    // Watchdog
    C_System_Tools_WatchDog_SMTP = $2E;                                 // Bool             Enable Watchdog for SMTP
    C_System_Tools_WatchDog_POP3 = $2F;                                 // Bool             Enable Watchdog for POP3
    C_System_Tools_WatchDog_IM = $CF;                                   // Bool             Enable Watchdog for IM
    C_System_Tools_Watchdog_GW = $AE;                                   // Bool             Enable Watchdog for GW
    C_System_Tools_Watchdog_Control = $214;                             // Bool             Enable Watchdog for Control
    C_System_Tools_Watchdog_Int = $31;                                  // Int              Watchdog Interval
    C_System_Tools_Watchdog_Check_Protocols = $32C;                     // Bool             Should Watchdog connect on Service Port
    C_System_Tools_Watchdog_Check_IPList = $443;                        // String           Semicolon separated list of IP's on which will be checked protocols, all must success, not applicable on services with specific IP binding

    // System Monitor
    C_System_Tools_Monitor_Enable = $35;                                // Bool             Enable System monitor
    C_System_Tools_Monitor_ReportAddress = $7C;                         // String           Disk monitor report address
    C_System_Tools_Monitor_FreeMem = $F1;                               // Int              Alert if free memory drops below (kB)
    C_System_Tools_Monitor_DiskSize = $55;                              // Int              Alert if free disk space drops below (MB)
    C_System_Tools_Monitor_CPUUsagePerc = $EF;                          // Int              CPU utilization threshold (%)
    C_System_Tools_Monitor_CPUUsagePeriod = $F0;                        // Int              Alert if CPU usage exceeds threshold for (Min)
    C_System_Tools_Monitor_WebThreadPoolThreshold = $363;               // Int              Alert if Maximal waiting time on web threadpools in last 5 minutes exceeds threshold (s)

    // Remote Servers Watchdog
    C_System_Tools_RemoteServer_Enable = $160;                          // Bool             Enable Remote server watchdog
    C_System_Tools_RemoteServer_MoreThan = $161;                        // Int              Server is down if unreachable for (Min)
    C_System_Tools_RemoteServer_Email = $162;                           // String           Report Email address
    C_System_Tools_RemoteServer_Schedule = $163;                        // Schedule         Remote Server Watchdog Schedule
    C_System_Tools_RemoteServer_NotifyAgain = $164;                     // Bool             Notify when server is back online

    // TCP/IP tunnel
    C_System_Tools_Tunnel_Enable = $CA;                                 // Bool             Enable TCP/IP tunnel

    // Migration Tool
    C_System_Tools_DBMigration_FixUTF8 = $298;                          // Bool             DB migration - repair UTF-8 character set when migrating

    //General
    C_System_Tools_Migration_Active = $16D;                             // Bool             Enable Migration
    C_System_Tools_Migration_Server = $16E;                             // String           Migration source host
    C_System_Tools_Migration_MigrateService = $175;                     // Enum values=(0 - Both, 1 - POP3, 2 - IMAP) Migration service

    // GROUP_BEGIN Advanced
    C_System_Server_UserAccessDontUseTransactions= $511;                // Bool             Disable transaction usage in Useraccess processing

    // GROUP_BEGIN System Tools
    C_System_Tools_Migration_SSLMode = $335;                            // Enum values=(0 - Detect TLS/SSL, 1 - Direct TLS/SSL, 2 - Disable TLS/SSL) Migration service

    C_System_Tools_Migration_InfoAccount = $16F;                        // String           Migration account
    C_System_Tools_Migration_LogFile = $170;                            // String           Path to log file
    C_System_Tools_Migration_PostMigrateScript = $328;                  // String           Path to executable to be called after user was created
    C_System_Tools_Migration_MessageProcessType = $172;                 // Enum values=(0 - Standard, 1 - Extended alias resolving, 2 - Username) Policy

    C_System_Tools_Migration_NoXEnvelopeTo = $171;                      // Bool             Do not use X-Envelope-To header
    C_System_Tools_Migration_NoReceived = $173;                         // Bool             Do not process received header
    C_System_Tools_Migration_MultiDomain = $174;                        // Bool             Multidomain migration
    C_System_Tools_Migration_PasswordsOnly = $270;                      // Bool             Only passwords are migrated (users already exists)
    C_System_Tools_Migration_DisableExistenceChecking= $351;            // Bool             Disables check of existence before remote validation

    // Statistics
    C_System_Tools_Migration_Stat_Start = $17C;                         // Int              Unix time of start [R]
    C_System_Tools_Migration_Stat_TotalUsers = $17A;                    // Int              Total number of migrated mailboxes [R]
    C_System_Tools_Migration_Stat_Users = $177;                         // Int              Number of migrated mailboxes [R]
    C_System_Tools_Migration_Stat_Aliases = $179;                       // Int              Number of migrated aliases [R]
    C_System_Tools_Migration_Stat_Messages = $178;                      // Int              Number of messages migrated [R]
    C_System_Tools_Migration_Stat_Last = $17D;                          // Int              Unix time of last migrated mailbox [R]
    C_System_Tools_Migration_Stat_Errors = $17B;                        // Int              Number of migration errors [R]

    C_System_Tools_WCStatistics_Enabled = $512;                         // Bool             Switch to disable/enable collectiong of user statistics
    C_System_Tools_WCStatistics_ConnectionString = $513;                // String           Connection string to override default sqlite storage
    C_System_Tools_WCStatistics_ReportingUrl   = $514;                  // String           Url to override default IceWarp collector server
    C_System_Tools_WCStatistics_ReportingDisabled = $515;               // Bool             Switch to disable reporting to collector server
    C_System_Tools_WCStatistics_ReportingMidnight = $516;               // Bool             If Enabled, collected statistics are reported only in new day procedure
    C_System_Tools_WCStatistics_ExportToXML = $527;                     // Longstring       Write only variable - causes export of the collected statistic to the file given as parameter


// Storage

    // Accounts
    // GROUP_BEGIN Storage
    C_System_Storage_Accounts_StorageMode = $75;                        // Enum values=(0 - Professional file system, 1 - Standard file system, 2 - ODBC)(stProfessional, stFileSystem, stODBC)
 
    C_System_Storage_Accounts_ProModeCache = $E4;                       // Int              Professional file system memory cache
    C_System_Storage_Accounts_ODBCConnString = $61;                     // String           ODBC connection string
    C_System_Storage_Accounts_ODBCMultithread = $B0;                    // Bool             Use Multithreaded ODBC
    C_System_Storage_Accounts_ODBCMaxThreads = $1E3;                    // Int              Max number of parallel connections to DB
    C_System_Storage_Accounts_DBCacheCount = $366;                      // Int              DB query cache size


    // Directories
    C_System_Storage_Dir_MailPath = $17;                                // String           Path to mail folder
    C_System_Storage_Dir_TempPath = $16;                                // String           Path to temp folder
    C_System_Storage_Dir_LogPath = $18;                                 // String           Path to log folder

    C_System_Storage_Mailbox_UseSorting = $12F;                         // Bool             Enables mailbox path alphabetical sorting
    C_System_Storage_Mailbox_PrefixLen = $130;                          // Int              Number of characters from alias in path prefix
    C_System_Storage_Mailbox_GroupedPrefix = $337;                      // Int              Number of grouped characters in path prefix

    // Load Balancing
    C_System_Storage_LB_ServerID = $D2;                                 // String           Server ID
    C_System_Storage_LB_AutoCheckConfig = $129;                         // Bool             Periodically check if settings have been changed and auto reload

    // GROUP_BEGIN Advanced
    C_System_MySQLDefaultCharset = $216;                                // String           MySQL default charset
        // Default charset for direct mysql client library - older icewarps (version 5 and older) used to be set to latin1 for Mysql connection. On IceWarp 10 it uses utf8 by default. If your DB is in latin 1, in a fresh install you need to set this to latin1 or convert your DB to utf8
    C_System_SQLLogType = $221;                                         // Enum values=(0 - Do not log SQL queries, 1 - Log all SQL Queries, 2 - Log only Failed SQL Queries, 3 - Log SQL connections maintenance) Type of SQL logging

    // Internet Connection
        // GROUP_BEGIN Connection
    C_System_Conn_Type = $7E;                                           // Enum values=(0 - Network connection, 1 - Dial-up, 2 - Dial-up on demand router) Connection mode

    C_System_Conn_UpName = $7F;                                         // String           Connection name
    C_System_Conn_UpUsername = $80;                                     // String           Username
    C_System_Conn_UpPassword = $81;                                     // String           Password
    C_System_Conn_UpHangUpAfter = $82;                                  // Int              Hang up after (sec)
    C_System_Conn_UpOlderthan = $21;                                    // Int              Connect if msg waits for more than (Min)
    C_System_Conn_DialOnDemandExceed = $68;                             // Int              Connect if number of msgs exceeds
    C_System_Conn_DialOnDemandHeader = $70;                             // Bool             Connect if message with this header
    
    C_System_Conn_Schedule = $95;                                       // Schedule         Connection schedule
    C_System_Conn_GlobalSchedule = $176;                                // Schedule         Global schedule

    C_System_Conn_Proxy = $338;                                         // String           Proxy for downloading files via HTTP

// Advanced

    // Extensions
    // GROUP_BEGIN Protocols
    C_System_Adv_Ext_DisableSSLTLS = $AF;                               // Bool             Disable SSL/TLS
    C_System_Adv_Ext_EnableIPv6 = $B4;                                  // Bool             Enable IPv6 Protocol
    C_System_Adv_Ext_ChangePassServer = $CB;                            // Bool             Enable Change password server
    C_System_Adv_Ext_DaytimeServer = $C8;                               // Bool             Enable Daytime server
    C_System_Adv_Ext_DayTimePort = $13B;                                // Int              Daytime port
    C_System_Adv_Ext_DisableMultiCPU = $4C;                             // Bool             Disable Multiple CPU
    C_System_Adv_Ext_SNMPServer = $139;                                 // Bool             Enable SNMP server
    C_System_Adv_Ext_SNMPPort = $13C;                                   // Int              SNMP port

    C_System_Adv_Ext_SSLServerMethod = $1F5;                            // Enum values=(0 - Default (currently the same as 4; but will be increased in future according to the actual security trends), 1 - Deprecated (the same as 3), 2 - Deprecated (the same as 3), 3 - Support SSL3 and newer (SSL3;TLS1;TLS1.1;TLS1.2), 4 - Support TLS1 and newer (TLS1;TLS1.1;TLS1.2), 5 - Support TLS1.1 and newer (TLS1.1;TLS1.2), 6 - Support TLS1.2 and newer (TLS1.2) - same as 5 on Linux RHEL5; RHEL6 and DEB6) Supported Server SSL Protocol

    C_System_Adv_Ext_SSLClientMethod = $1F6;                            // Enum values=(0 - Default (currently the same as 4; but will be increased in future according to the actual security trends), 1 - Deprecated (the same as 3), 2 - Deprecated (the same as 3), 3 - Support SSL3 and newer (SSL3;TLS1;TLS1.1;TLS1.2)   (Client will send out TLSv1 client hello messages including extensions and will indicate that it also understands TLSv1.1;TLSv1.2 and permits a fallback to SSLv3), 4 - Support TLS1 and newer (TLS1;TLS1.1.TLS1.2)   (Client will send out TLSv1 client hello messages including extensions and will indicate that it also understands TLSv1.1; TLSv1.2), 5 - Support TLS1.1 and newer (TLS1.1;TLS1.2)  (Client will send out TLSv1.1 client hello messages including extensions and will indicate that it also understands  TLSv1.2), 6 - Support TLS1.2 and newer (TLS1.2) (Client will send out TLSv1.2 client hello messages) - same as 5 on Linux RHEL5; RHEL6 and DEB6) Supported Client SSL Protocol

    C_System_Adv_Ext_SSLCipherList   = $286;                            // String           List of supported ciphers according to (http://www.openssl.org/docs/apps/ciphers.html#)
    C_System_Adv_Ext_SSLHonorCipherOrder = $4D5;                        // Bool             When choosing a cipher, use the server's preferences instead of the client preferences (SSL_OP_CIPHER_SERVER_PREFERENCE in https://www.openssl.org/docs/ssl/SSL_CTX_set_options.html)

// Protocols
    C_System_Adv_Protocols_SessionTimeOut = $0C;                        // Int              Session timeout
    C_System_Adv_Protocols_ResponseDelay = $0D;                         // Int              Protocol response delay
    C_System_Adv_Protocols_MaxBadCommands = $4E;                        // Int              Max number of bad commands
    C_System_Adv_Protocols_BackLog = $54;                               // Int              Listen back logs
    C_System_Adv_Protocols_DNSTimeout = $48;                            // Int              DNS Timeout
    C_System_Adv_Protocols_DNSCache = $E6;                              // Bool             Use DNS smart cache
    C_System_Adv_Protocols_DNSRetry = $12E;                             // Int              DNS retries
    C_System_Adv_Protocols_DNSCacheLimit = $132;                        // Int              DNS cache items limit
    C_System_Adv_Protocols_IMAPTimeout = $1F0;                          // Int              IMAP timeout
    C_System_Adv_Protocols_HTTPTimeout = $31F;                          // Int              HTTP timeout
    C_System_Adv_Protocols_XMPPTimeout = $339;                          // Int              XMPP timeout
    C_System_Adv_Protocols_SMTPClientTimeout = $424;                    // Int              timeout for SMTP client sessions

// Notification
    // GROUP_BEGIN Advanced
    C_System_Adv_Notification_Active = $1F1;                            // Bool             Notification messages active
    C_System_Adv_Notification_Host = $1F2;                              // String           Notification messages host

    // Rename of default folders
    C_System_Adv_Rename_Default_Folders = $352;                         // String           Write Only - Renames default folders, accepts URL-encoded, UTF-8 list of form where=value1&events=value2&contacts=value3&tasks=value4&notes=value5&journals=value6&files=value7&drafts=value8&trash=value9&sent=value10 [R]
        // use e.g. tool set system C_System_Adv_Rename_Default_Folders "where=*&sent=Odeslan"
    C_System_Adv_Process_New_Day = $462;                                // Bool             Write Only - Sends signal to all servicess to process the new day procedures
    C_System_Adv_Exit_On_Signal = $499;                                 // Bool             Linux only - if set, SIGSEGV and others will terminate affected service instead of throwing exception
    C_System_Adv_Plan_GAL_Resync = $6A9;                                // Bool             Write Only - Sends signal to GW servicess to process the GAL synchronization

    C_System_Debug_DisableStartServerServices = $418;                   // Bool             Disables startserver services (Java, CommTouch, LDAP and others)

// Mail service

    // All mail services
    // GROUP_BEGIN Mail
    C_Mail_SMTP_Active = $354;                                          // Bool             Enable SMTP
    C_Mail_POP_Active = $355;                                           // Bool             Enable POP3
    C_Mail_IMAP_Active = $356;                                          // Bool             Enable IMAP
    C_Mail_IMAP_IDLEDisable = $43D;                                     // Bool             Disable IMAP IDLE
    C_Mail_Control_Active = $357;                                       // Bool             Enable control services (Web, SOCKS, SNMP...)
    C_Mail_Control_DisableWeb = $518;                                   // Bool             Disable Web server


    // SMTP service

    // General
    C_Mail_SMTP_General_HostName = $0B;                                 // String           Mailserver hostname
    C_Mail_SMTP_General_DeliveryMode = $29;                             // Bool values=(0 - Use SMTP relay server, 1 - Use DNS lookup) SMTP service delivery mode

    C_Mail_SMTP_General_RelayMailServer = $26;                          // String           SMTP relay server
    C_Mail_SMTP_General_DNSServer = $28;                                // String           DNS servers
    C_Mail_SMTP_General_ParallelIPConnectionsLimit = $4D4;              // Int              Global limit of maximal allowed parallel connections from one IP

    // Delivery
    C_Mail_SMTP_Delivery_UseTLSSSL = $87;                               // Bool             Use TLS/SSL
    C_Mail_SMTP_Delivery_RetrySMTP = $89;                               // Bool             Retry with SMTP when ESMTP failed
    C_Mail_SMTP_Delivery_LimitMsgSize = $56;                            // Bool             Enable Max message size
    C_Mail_SMTP_Delivery_MaxMsgSize = $57;                              // Int              Max message size (B)
    C_Mail_SMTP_Delivery_MXReconnectFailure = $C7;                      // Bool             Deliver message via relay server when direct delivery fails
    C_Mail_SMTP_Delivery_HideIP = $78;                                  // Bool             Hide IP from received header
    C_Mail_SMTP_Delivery_RDNSLookup = $1C2;                             // Bool             Add rDNS result to Received: header for all messages
    C_Mail_SMTP_Delivery_UndelivAfter = $93;                            // Int              Undeliverable after (Minutes)
    C_Mail_SMTP_Delivery_UndelivWarning = $92;                          // Int              Undeliverable warning (Minutes)
    C_Mail_SMTP_Delivery_DaemonAlias = $49;                             // String           Mailer Daemon report alias
    C_Mail_SMTP_Delivery_DaemonName = $4A;                              // String           Mailer Daemon report name
    C_Mail_SMTP_Delivery_BadMail = $6A;                                 // String           Bad mail address
    C_Mail_SMTP_Delivery_DoNoTruncate = $109;                           // Bool             Do not truncate mailer daemon's msgs
    C_Mail_SMTP_Delivery_InfoToAdmin = $8F;                             // Bool             Send info to admin
    C_Mail_SMTP_Delivery_UseIncomingQueue = $1C9;                       // Bool             Use incoming mail queue
    C_Mail_SMTP_Delivery_IncomingQueueSize = $1CA;                      // Int              Size of the queue (# threads)
    C_Mail_SMTP_Delivery_MDAInternal = $1E6;                            // Bool             Use MDA queue for internal delivery
    C_Mail_SMTP_Delivery_ReturnPath = $1F7;                             // Bool             Add return-path
    C_Mail_SMTP_Delivery_MessageSubmission = $32F;                      // Bool             Message submission should be checked as in RFC4409 (first port is MTA and second port is MSA)
    C_Mail_SMTP_Delivery_EnforceTlsOnSecondarySmtpPort = $520;          // Bool             Server rejects non encrypted connection on submission port

    // Header/Footer
    C_Mail_SMTP_HeaderFooter_Enable = $3C;                              // Bool             Enable Header/Footer

    // Other
    C_Mail_SMTP_Other_Dedupe = $C2;                                     // Bool             Dedupe email messages
    C_Mail_SMTP_Other_SearchInLocalDomains = $58;                       // Bool             Search for alias in other local domains
    C_Mail_SMTP_Other_HeaderFunctions = $59;                            // Bool             Activate message header functions
    C_Mail_SMTP_Other_MaxHopCount = $90;                                // Int              Max SMTP hop count
    C_Mail_SMTP_Other_MaxRecipients = $39;                              // Int              Max SMTP server recipients
    C_Mail_SMTP_Other_MaxMTARecipients = $1A5;                          // Int              Max SMTP client recipients
    C_Mail_SMTP_Other_LocalDelivery = $FC;                              // Bool             Enable remote delivery from local server
    C_Mail_SMTP_Other_ExternalDelivery = $C6;                           // Bool             Deliver all messages externally, can by bypassed using externalbypass.dat
    C_Mail_SMTP_Other_NoRetryQueue = $BE;                               // Bool             Do not queue messages
    C_Mail_SMTP_Other_BounceBackMode = $199;                            // Int              Bounce back mode
    C_Mail_SMTP_Other_SMTPPipelining = $D4;                             // Bool             Enable SMTP pipelining
    C_Mail_SMTP_Other_SPFSRS = $13E;                                    // Bool             Enable SRS
    C_Mail_SMTP_Other_SPFSRSKey = $13F;                                 // String           SRS secret key
    C_Mail_SMTP_Other_SPFSRSNDRVerify = $257;                           // Bool             Use SRS NDR (Non-Delivery Report) Validation
    C_Mail_SMTP_Other_FullMailboxPermanentError = $439;                 // Bool             Treat full mailbox error as permanent (522 response)
    C_Mail_SMTP_Accept_Invalid_Recipients = $441;                       // Bool             If this is enabled and catch all account on primary email is enabled, all invalid recipients are rewritten to catch all account

    C_Mail_SMTP_Other_MailboxSeparator = $16C;                          // String           Mailbox separator / extension separator (eg: alias:extension@domain)

    C_Mail_SMTP_Other_IncomingMessageLimits = $285;                     // Bool             Should size of incoming mails also be checked

    C_Mail_SMTP_Other_Extensions = $43A;                                // String           List of SMTP extensions to alter or disable via "!", separate with semi-colon

    C_Mail_SMTP_Other_UseReturnPathInNDR = $4B5;                        // Bool             Include Returnpath in NDR (if exists) instead of "From:"

    // Security

    // Anti Relaying
    C_Mail_Security_Relay_RelayMode = $83;                              // Enum values=(0 - Open relay, 1 - Close relay) Relay mode

    C_Mail_Security_Relay_IPList = $84;                                 // String           List of relayed IP addresses
    C_Mail_Security_Relay_POPSMTP = $8D;                                // Bool             Enable POP before SMTP
    C_Mail_Security_Relay_POPSMTPInt = $8C;                             // Int              POP before SMTP interval (Min)
    C_Mail_Security_Relay_POPSMTPGlobal = $1D4;                         // Bool             Enable POP before SMTP global mode
    C_Mail_Security_Relay_RejectLocalUnauth = $B6;                      // Bool             Reject if orig's domain is local&unauth

    // Protection
    C_Mail_Security_Protection_DNSBL = $3E;                             // Bool             Enable DNSBL
    C_Mail_Security_Protection_DNSBL_Temporary_Error = $358;            // Bool             DNSBL returns temporary error
    C_Mail_Security_Protection_CloseDNSBLConn = $BF;                    // Bool             Close connection for DNSBL sessions

    C_Mail_Security_Protection_RejectrDNS = $30;                        // Bool             Reject if sender's IP has no rDNS
    C_Mail_Security_Protection_CloseRejectrDNSConn = $4BE;              // Bool             Close connection rejected because sender's IP has no rDNS

    C_Mail_Security_Protection_RejectMX = $8B;                          // Bool             Reject if orig's domain has no MX rec
    C_Mail_Security_Protection_CloseRejectMXConn = $4BD;                // Bool             Close connection for sessions rejected due missing MX

    C_Mail_Security_Protection_SMTPWait = $14C;                         // Int              Wait before processing a new conn
    C_Mail_Security_Protection_LocalDomain = $91;                       // Bool             Relay only if orig's domain's local
    C_Mail_Security_Protection_DomainIPShield = $A1;                    // Bool             Use Domain IP shielding
    C_Mail_Security_Protection_RejectSMTPAuthSender = $1C8;             // Bool             Reject if SMTP AUTH different from sender
    C_Mail_Security_Protection_HELOEHLO = $36;                          // Bool             Require HELO/EHLO
    C_Mail_Security_Protection_IgnoreBlankHeloHost = $16B;              // Bool             Ignore Blank Helo Host

    // Intrusion prevention
    C_Mail_Security_Tarpit_Enable = $88;                                // Bool             Enable tarpitting
    C_Mail_Security_Tarpit_EnableSMTP = $88;                            // Bool             Enable SMTP tarpitting  (synonym for C_Mail_Security_Tarpit_Enable)
    C_Mail_Security_Tarpit_EnableIMAPPOP3 =$330;                        // Bool             Enable POP3/IMAP tarpitting
    C_Mail_Security_Tarpit_Recipient = $332;                            // Bool             Tarpit IP that exceeds unknown users delivery count
    C_Mail_Security_Tarpit_Count = $25;                                 // Int              Number of attempts
    C_Mail_Security_Tarpit_RecipientCount = $25;                        // Int              Synonym for C_Mail_Security_Tarpit_Count
    C_Mail_Security_Tarpit_Period = $1D;                                // Int              Tarpitting interval
    C_Mail_Security_Tarpit_RelayTarpit = $B2;                           // Bool             Tarpit relay rejected IPs
    C_Mail_Security_Tarpit_RelayTarpitCount = $333;                     // Int              Count for C_Mail_Security_Tarpit_RelayTarpit

    C_Mail_Security_Tarpit_BlockIP = $C1;                               // Bool             Block IPs that establish more than BlockIPValue connections within a minute
    C_Mail_Security_Tarpit_BlockIPValue = $C0;                          // Int              Number of limited of connections
    C_Mail_DoNot_Tarpit_IPs = $133;                                     // Bool             Do not tarpit IP addresses
    C_Mail_Security_Tarpit_CloseConnection = $14D;                      // Bool             Close tarpitted connections
    C_Mail_Security_Tarpit_CloseAllConnections = $6A5;                  // Bool             Immediately close all other connections from the tarpitted IP (within the same service)

    C_Mail_Security_Tarpit_CrossSession = $14E;                         // Bool             Cross session processing
    C_Mail_Security_Tarpit_Msg_Enabled = $1BA;                          // Bool             Tarpit message size
    C_Mail_Security_Tarpit_Msg_Value = $1BB;                            // Int              Tarpit message size value
    C_Mail_Security_Tarpit_Spam = $1C0;                                 // Bool             Tarpit spam
    C_Mail_Security_Tarpit_SpamScore = $1C1;                            // Int              Tarpit spam score (* 100)
    C_Mail_Security_Tarpit_DNSBL = $1C3;                                // Bool             Tarpit DNSBL
    C_Mail_Security_Tarpit_RSET = $1C5;                                 // Bool             Tarpit RSET
    C_Mail_Security_Tarpit_RSETCount = $1C6;                            // Int              Tarpit RSET count
    C_Mail_Security_Tarpit_Login = $299;                                // Bool             Block IPs that blocked an account by exceeding number of failed login attempts
    C_Mail_Security_Tarpit_LoginCount = $331;                           // Int              Count for C_Mail_Security_Tarpit_Login
    // Protocols
    C_Mail_Security_Protocols_DenyESMTP = $2A;                          // Bool             Deny ESMTP protocol
    C_Mail_Security_Protocols_AllowSMTPAuth = $76;                      // Bool             Allow SMTP Auth
    C_Mail_Security_Protocols_DenyVRFY = $2B;                           // Bool             Deny VRFY command
    C_Mail_Security_Protocols_DenyEXPN = $2C;                           // Bool             Deny EXPN command
    C_Mail_Security_Protocols_DenyTelnet = $2D;                         // Bool             Deny Telnet access

    // Filtering

    // Content Filters
    C_Mail_Filter_Content_Enable = $77;                                 // Bool             Enable Content filters

    // Rules
    C_Mail_Filter_BW_Enable = $8E;                                      // Bool             Enable Rules
    C_Mail_Filter_RulesContentXML = $1E5;                               // Longstring [D]   Domain rules file content in content filter format

    C_Mail_Filter_MaxThreads = $13A;                                    // Int              Number of filter threads

    // ETRN download
    C_Mail_ETRN_Active = $245;                                          // Bool             Enable ETRN download
    C_Mail_ETRN_Schedule = $17E;                                        // Schedule         ETRN Schedule

// AS
    // General
    // GROUP_BEGIN Antispam
    C_AS_General_Enable = $FD;                                          // Bool             Enable Spam Engine
    C_AS_General_ProcessingGroup = $19D;                                // String           Policy group
    C_AS_General_AntispamMode = $280;                                   // Enum values=(0 - System, 1 - User, 2 - Domain) Antispam mode

    C_AS_Info_UpdateDate = $146;                                        // String           Update date [R]
    C_AS_Info_UpdateVersion = $147;                                     // String           Update version [R]
    C_AS_Info_EngineVersion = $148;                                     // String           Engine version [R]
    C_AS_Info_UpdateSize = $1DF;                                        // Int [R]          Last updates size in bytes
    C_AS_Info_BayesWords = $1E0;                                        // Int [R]          Bayesian indexed words
    C_AS_Info_BayesSpamMessages = $1E1;                                 // Int [R]          Bayesian spam messages
    C_AS_Info_BayesGenuineMessages = $1E2;                              // Int [R]          Bayesian genuine messages

    // Challenge Response
    C_AS_Challenge_ProcessingGroup = $19E;                              // String           Policy group

    C_AS_Challenge_ReportsSchedule = $1AF;                              // Schedule

    C_AS_Challenge_ConnectionString = $230;                             // String           Anti spam DB ConnectionString
    C_AS_SpamFolderName = $313;                                         // String           IMAP spam folder name when AS is integrated with IMAP
    C_AS_UseSpamFolder = $314;                                          // Bool             Enable AS integration with IMAP

    C_AS_StopList = $038C;                                              // String           Bayesian stop words list
    C_AS_SkipCharsets = $038D;                                          // String           List of charsets with greater spam probability (related to C_AS_CharsetSpam)
    C_AS_SkipCharsetsSpam = $038E;                                      // Bool             Obsolete
    C_AS_IgnoreUnknownWords = $038F;                                    // Bool             When false, unknown word causes probability 50% to be spam word
    C_AS_SpamFilterRecords = $0390;                                     // String           Bayes DB filter records header
    C_AS_Graham_Cutoff = $0391;                                         // String           Decimal number holding spam probability threshold in Bayesian Graham mode
    C_AS_SpamAssassinThreadRegEx = $0392;                               // Bool             Enable processing of SA rules in parallel
    C_AS_EnableAsianBayesian = $0393;                                   // Bool             Enable Bayes support for asian characters
    C_AS_AsianBayesTokenLen = $0394;                                    // String           Semicolon separated min and max of asian bayes tokenizer tokens length
    C_AS_AsianBayesCharacterRange = $0395;                              // String           Semicolon separated min-max ranges marjing asian characters in unicode indexing
    C_AS_VOldWords = $0396;                                             // Int              Skip words in database older than days
    C_AS_IndexGenuineAuth = $0397;                                      // Bool             Index genuine message if trusted IP or authorized session
    C_AS_IgnoreFilesLarger = $0398;                                     // Int              Maximum message size to process with antispam, in kB
    C_AS_Live_IgnoreFilesLarger = $468;                                 // Int              Greater mails will not be checked by AS Live  (value in KB)
    C_AS_SpamMaxTextBytes = $0399;                                      // Int              Limit the text of message body to given number of bytes
    C_AS_IndexDayCount = $039A;                                         // Int              Limit number of messages added to bayesian database per day, 0 = disabled
    C_AS_DeleteSpamMailOlder = $039B;                                   // Int              Delete spam messages from spam folders when older than (Days)
    C_AS_ArchiveIndexedMessages = $039C;                                // Bool             Archive messages that have been indexed in bayesian folder
    C_AS_CharsetSpam = $039D;                                           // Bool             Score messages with forbidden charsets (specified with C_AS_SkipCharsets)
    C_AS_MissingCharset = $039E;                                        // Bool             Score messages with missing charsets and non us-ascii characters
    C_AS_AddSpamSubject = $039F;                                        // Bool             Add C_AS_AddSpamSubjectString text to Subject of spam message
    C_AS_AddSpamSubjectString = $03A0;                                  // String           Text to be added to subject of spam messages
    C_AS_BypassLocalIPs = $03A1;                                        // Bool             Whitelist trusted IPs and authenticated sessions
    C_AS_BypassKeywords = $03A2;                                        // String           Semicolon separated list of keywords marking message as genuine
    C_AS_BypassKeywordsWholeWords = $51C;                               // Bool             Whitelist keywords are matched as whole words
    C_AS_BlockKeywords = $03A3;                                         // String           Semicolon separated list of keywords marking message as spam
    C_AS_BlockKeywordsWholeWords = $51D;                                // Bool             Blacklist keywords are matched as whole words
    C_AS_BlockKeywordScore = $03A4;                                     // String           Score to add to messages containing any of C_AS_BlockKeywords
    C_AS_BypassLocalDomains = $03A5;                                    // Bool             Whitelist local domain senders
    C_AS_SpamOutgoingRules = $03A6;                                     // Enum values=(0 - Process with antispam, 1 - Do not process with antispam, 2 - Process with antispam and reject spam messages) Outgoing messages antispam mode

    C_AS_SpamUseCustomDB = $03A7;                                       // Bool             Use custom bayesian database
    C_AS_SpamUseIMAP = $03A8;                                           // Bool             Integrate spam folder with IMAP folder
    C_AS_SpamBayesian = $03A9;                                          // Bool             Enable Bayesian filter
    C_AS_SpamBayesMaxWords = $03AA;                                     // Int              Limit size of Bayesian database
    C_AS_SpamBayesianNoTag = $03AB;                                     // Bool             Disable bayesian message scoring and tagging, other parts of Bayes are working
    C_AS_SpamBypassNonUsers = $03AC;                                    // Bool             Process unknown accounts
    C_AS_SpamBypassGroupware = $03AD;                                   // Bool             Whitelist senders in groupware address books
    C_AS_SpamBypassIMRoster = $03AE;                                    // Bool             Whitelist senders in instant messaging server rosters
    C_AS_SpamSkipBypassLocalUntrusted = $03AF;                          // Bool             Process local untrusted users
    C_AS_SpamMaxThreads = $03B0;                                        // Int              Size of thread pool for antispam processing
    C_AS_SpamAddOutgoing = $03B1;                                       // Bool             Auto whitelist trusted email recipients to database
    C_AS_SpamApplyUnknown = $03B2;                                      // Bool             Obsolete
    C_AS_SpamHTMLExternalURL = $03B3;                                   // Bool             Score HTML messages with external images
    C_AS_SpamHTMLNoText = $03B4;                                        // Bool             Score HTML messages with no text content
    C_AS_SpamHTMLScript = $03B5;                                        // Bool             Score HTML messages containing scripts
    C_AS_SpamHTMLEqual = $03B6;                                         // Bool             Score HTML messages with different html and text parts
    C_AS_SpamBlankMail = $03B8;                                         // Bool             Score messages containing blank subject and blank body
    C_AS_SpamHTMLOtherFilters = $03B9;                                  // String           Broken - set this to anything to add C_AS_SpamHTMLOtherFiltersScore to each message
    C_AS_SpamReceivedHeader = $03BA;                                    // Bool             Score messages delivered with no intermediary server
    C_AS_SpamReset = $03BB;                                             // Int              Obsolete
    C_AS_SpamRefuse = $03BC;                                            // Enum values=(0 - Delete, 1 - Reject) Refused messages action mode

    C_AS_SpamRefusePath = $03BD;                                        // String           Archive refused messages to account
    C_AS_SpamUpdateTime = $03BE;                                        // Int ;            Number of seconds from midnight
    C_AS_SpamUpdate = $03BF;                                            // Bool             Enable regular spam updates
    C_AS_SpamUpdateDays = $03C0;                                        // Int              Bitmask when spam db will be updated
        // $01 - Sunday
        // $02 - Monday
        // $04 - Tuesday
        // $08 - Wednesday
        // $10 - Thursday
        // $20 - Friday
        // $40 - Saturday
    C_AS_SpamUpdateURL = $03C1;                                         // String           Spam db update service URL
    C_AS_SpamUpdateProxy = $03C2;                                       // String           Proxy settings needd for contacting C_AS_SpamUpdateURL
    C_AS_SpamChallenge = $03C3;                                         // Bool             Quarantine active
    C_AS_SpamChallengeOldCompatibility = $03C4;                         // Bool             Obsolete
    C_AS_SpamChallengeMarked = $03C5;                                   // Bool             Obsolete
    C_AS_SpamChallengeUnMarked = $03C6;                                 // Bool             Obsolete
    C_AS_SpamChallengeManual = $03C7;                                   // Bool             Send challenge response email for messages to be quarantined
    C_AS_SpamChallengeExpires = $03C8;                                  // Int              Remove pending messages after (Days)
    C_AS_SpamChallengePerc = $03C9;                                     // Bool             Obsolete
    C_AS_SpamChallengeSpam = $03CA;                                     // Int              Obsolete
    C_AS_SpamChallengeGenuine = $03CB;                                  // Int              Obsolete
    C_AS_SpamChallengeSAPerc = $03CC;                                   // Bool             Obsolete
    C_AS_SpamChallengeSAGenuine = $03CD;                                // String           Obsolete
    C_AS_SpamChallengeSASpam = $03CE;                                   // String           Obsolete
    C_AS_SpamChallengeURL = $03CF;                                      // String           Spam reports URL
    C_AS_SpamChallengeMailSender = $03D0;                               // String           Obsolete - spam report uses C_AS_SpamReportMailSender
    C_AS_SpamChallengeMailFrom = $03D1;                                 // String           Obsolete - spam report uses C_AS_SpamReportMailFrom
    C_AS_SpamReportMailSender = $03D2;                                  // String           Spam reports mail sender
    C_AS_SpamReportMailFrom = $03D3;                                    // String           Spam reports mail from header
    C_AS_SpamReportsDebugLevel = $03D4;                                 // Int              OBSOLETE
    C_AS_SpamReportsLogLevel = $03D5;                                   // Enum values=(0 - None, 2 - Summary, 3 - Debug, 4 - Extended) Spam reports log level

    C_AS_SpamChallengeSendOnce = $03D6;                                 // Bool             Send report only once
    C_AS_SpamChallengeFont = $03D7;                                     // String           Font used when generating challenge
    C_AS_SpamChallengeFontSize = $03D8;                                 // Int              Font size used when generatin challenge
    C_AS_SpamChallengeLocalDomains = $03D9;                             // Enum values=(0 - Do not quarantine / whitelist / blacklist local users, 1 - Quarantine / whitelist / blacklist all local users, 2 - Quarantine / whitelist / blacklist local users from other domains) Quarantine mode for local domains

    C_AS_SpamChallengeMoveToSpam = $03DA;                               // Bool             Deliver quarantine expired messages to mailbox as spam
    C_AS_SpamAssassinEnabled = $03DB;                                   // Bool             Enable SpamAssassin
    C_AS_SpamAssassinMarked = $03DC;                                    // Bool             Force running SA even if score is below C_AS_SpamAssassinScoreValue threshold
    C_AS_SpamAssassinPath = $03DD;                                      // String           Path to spam assassin rules, if not set, default spam/rules is used
    C_AS_SpamAssassinReporting = $03DE;                                 // Bool             Enable spam assassin reporting functions
    C_AS_SpamAssassinNoCustom = $03DF;                                  // Bool             Disable loading rules from custom subdorectory
    C_AS_SpamAssassinMaxScore = $03E0;                                  // Int              Maximum SA score in promiles, 1000 by definition
    C_AS_SpamAssassinRulesStats = $03E1;                                // String           Daily SpamAssassin statistics log file
    C_AS_CommTouch = $03E2;                                             // Bool             Enable Anti-Spam live
    C_AS_CommTouchServer = $03E3;                                       // String           Server for Anti-Spam live evaluation
    C_AS_CommTouchHighScore = $03E4;                                    // String           Anti-Spam live score for bulk and highly suspected virus messages
    C_AS_CommTouchHighestScore = $03E5;                                 // String           Anti-Spam live score for confirmed spam and virus messages
    C_AS_CommTouchLowScore = $03E6;                                     // String           Anti-Spam live score for non spam messages
    C_AS_CommTouchInfoScore = $41A;                                     // String           Read only , AS live engine is applied only if score is below this value        
    C_AS_CommTouchForce = $03E7;                                        // Bool             Override all limits and always perform Anti-Spam live
    C_AS_SpamAssassinScore = $03E8;                                     // Bool             Allow classifying messages as spam when score is over C_AS_SpamAssassinScoreValue
    C_AS_SpamAssassinScoreValue = $03E9;                                // String           Score threshold for classifying message as spam
    C_AS_SpamAssassinQuarantine = $03EA;                                // Bool             Allow quarantining messages when score is over C_AS_QuarantineScore
    C_AS_QuarantineScore = $03EB;                                       // String           Score threshold for quarantining message
    C_AS_SpamAssassinDelete = $03EC;                                    // Bool             Allow deleting messages when score is over C_AS_DeleteScore
    C_AS_DeleteScore = $03ED;                                           // String           Score threshold for deleting message
    C_AS_SpamGLActive = $03EE;                                          // Bool             Enable greylisting 
    C_AS_SpamGLAdaptive = $45C;                                         // Bool             Turns on special adaptive mode for greylisting.  Sender is greylisted after fist message classified as spam is received from him
    C_AS_BypassDistributedDomain = $460;                                // Bool             If enabled, Anti-Spam is skipped for non local recipients in distrubuted domain
    C_AS_SpamGLAllow = $03EF;                                           // Int              Allow new session authorization after how many seconds
    C_AS_SpamGLPending = $03F0;                                         // Int              Expire pending sessions after how many hours
    C_AS_SpamGLAuthorized = $03F1;                                      // Int              Delete authorized sessions after how many days
    C_AS_SpamGLResponse = $03F2;                                        // String           Custom SMTP response when greylisting
    C_AS_SpamGLDisconnect = $03F3;                                      // Bool             Disconnect client when greylisting
    C_AS_SpamGLMode = $03F4;                                            // Enum values=(0 - Sender, 1 - IP, 2 - Sender + IP, 3 - IP + HELO/EHLO) Greylisting mode

    C_AS_SpamGLOwnerMode = $03F5;                                       // Enum values=(0 - Email, 1 - Domain) Greylisting owner mode

    C_AS_CharsetSpamScore = $03F6;                                      // String           Score for messages with charset listed in c_as_skipcharsets
    C_AS_MissingCharsetScore = $03F7;                                   // String           Score for messages with missing charset
    C_AS_SpamHTMLExternalURLScore = $03F8;                              // String           Score for messages with external URLs (images)
    C_AS_SpamHTMLNoTextScore = $03F9;                                   // String           Score for messages with no text content
    C_AS_SpamHTMLScriptScore = $03FA;                                   // String           Score for messages containing scripts
    C_AS_SpamHTMLEqualScore = $03FB;                                    // String           Score for messages with different html and text part
    C_AS_SpamHTMLOtherFiltersScore = $03FD;                             // String           Broken - score for messages filtered by HTMLOtherFilters
    C_AS_SpamBlankMailScore = $03FE;                                    // String           Score for messages with blank subject and body
    C_AS_SpamReceivedHeaderScore = $03FF;                               // String           Score for messages delivered with no intermediary server
    C_AS_SpamHashActive = $0400;                                        // Bool             Enable spam hsah evaluation
    C_AS_SpamHashThreshold = $0401;                                     // Int              Count of messages with same hash per C_AS_SpamHashThresholdExpire minutes causing message to be calssified as spam
    C_AS_SpamHashThresholdExpire = $0402;                               // Int              Hash expiration time in minutes
    C_AS_SpamHashExpire = $0403;                                        // Int              Hash expiration time in minutes - whole file
    C_AS_SpamHashScore = $0404;                                         // String           Score to add when spamhash triggers
    C_AS_SpamHashMode = $0405;                                          // Enum values=(0 - subject + from, 1 - subject + from + body, 2 - body) Hash calclulation mode

    C_AS_SpamNoSenderDomain = $0406;                                    // Bool             Enable scoring of messages where originator's domain does not exist
    C_AS_SpamNoSenderDomainScore = $0407;                               // String           Score for messages where originator's domain does not exist 
    C_AS_SpamHELOIP = $0408;                                            // Bool             Enable scoring of messages where HELO host does not resolve to remote IP
    C_AS_SpamHELOIPScore = $0409;                                       // String           Score messages where HELO host does not resolve to remote IP
    C_AS_SpamRemoteSMTP = $040A;                                        // Bool             Enable scoring of messages where SMTP callback verification fails
    C_AS_SpamRemoteSMTPScore = $040B;                                   // String           Score for messages where SMTP callback verification fails
    C_AS_SpamRemoteSMTPConnectTimeout = $040C;                          // Int              SMTP verification connection timeout
    C_AS_SpamBList = $040D;                                             // Bool             Enable blacklist
    C_AS_SpamWList = $040E;                                             // Bool             Enable whitelist
    C_AS_SpamBDelete = $040F;                                           // Bool             Obsolete, only for backward compatibility, use C_AS_BlacklistAction instead
    C_AS_BlacklistAction = $469;                                        // Int              // 0 = Mark As Spam, 1= Delete, 2= Reject

    C_AS_SpamQReports = $0410;                                          // Bool             Enable quarantine reports by default
    C_AS_SpamFReports = $0411;                                          // Bool             Enable spam folder reports by default
    C_AS_SpamReportsEnabled =$4D1;                                      // Bool             Global switch for disabling spam reports processing
    C_AS_SpamQReportsMode = $0412;                                      // Enum values=(0 - new items, 1 - all items) Spam reports mode

    C_AS_SpamLang = $0413;                                              // String           Spam reports language
    C_AS_SpamReportsDateFormat = $0415;                                 // String           Spam reports date format ( PHP date format )
    C_AS_SpamReportsTimeFormat = $0416;                                 // String           Spam reports time format ( PHP time format )

    C_AS_Mailinglist_Quarantine_Disable = $0477;                        // Bool             Disable processing mailing list quarantines
    C_AS_Mailinglist_Antispam_Disable = $0478;                          // Bool             Disable processing mailing list spam folders

    C_AS_SpamReportsDBConn = $4A5;                                      // String           PDO-like connection string for spam reports database, if empty, default sqlite database will be used
    C_AS_SpamReportsDBUser = $4A6;                                      // String           Username for non default Spam Reports database
    C_AS_SpamReportsDBPass = $4A7;                                      // String           Password for non default Spam Reports database

// AV

    // General
    // GROUP_BEGIN Antivirus
    C_AV_General_IntegratedAV = $3D;                                    // Bool             Enable Integrated AV scanner
    C_AV_General_ProcessingGroup = $19F;                                // String           Policy group

    C_AV_General_UpdateType = $168;                                     // Enum values=(0 - Disabled, 1 - Once at, 2 - Every x hours) Update Schedule

    C_AV_General_UpdateNotWeekdays = $E9;                               // Int              List of days when server does not check for update
        // bit 1 - Monday ... bit 7 - Sunday
    C_AV_General_UpdateTime = $EB;                                      // Int              Update time
        // hours - upper byte
        // minutes - lower byte
    C_AV_General_EveryHour = $C9;                                       // Int              Check for update every (Hours)
    C_AV_General_ActiveUpdate = $EA;                                    // Bool             Enable Active Update
    C_AV_General_ActiveAddress = $EC;                                   // String           Active update email trigger
    C_AV_General_Proxy_URL = $444;                                      // String           Proxy URL for connecting to update server, user:pass@server:port

    C_AV_Info_UpdateDate = $149;                                        // String           Update date [R]
    C_AV_Info_UpdateSize = $14A;                                        // Int              Update size [R]
    C_AV_Info_UpdateVersion = $14B;                                     // String           Update version [R]

    // Action
    C_AV_Action_ScanAllParts = $0F;                                     // Int              Scan All message parts
    C_AV_Action_Mode = $0E;                                             // Enum values=(1 - Reject, 2 - Remove infected attachments, 3 - Delete) AV Action mode

    C_AV_Action_CleanInfected = $9E;                                    // Bool             Clean infected messages if possible
    C_AV_Action_InfoToAdmin = $47;                                      // Bool             Notification to Admin
    C_AV_Action_InfoToRecipient = $4B;                                  // Bool             Notification to Recipient
    C_AV_Action_InfoToSender = $60;                                     // Bool             Notification to Sender
    C_AV_Action_UseQuarantine = $33;                                    // Bool             Quarantine infected messages
    C_AV_Action_QuarantineAddress = $7D;                                // String           Quarantine address/path
    C_AV_Action_QuarantineMode = $D9;                                   // Bool values=(0 - Quarantine whole infected messages, 1 - Quarantine only infected attachments) Virus Quarantine mode

    C_AV_Action_MailEnabled = $41B;                                     // Bool             Enables AV for mails
    C_AV_Action_MailIMAPEnabled = $41C;                                 // Bool             Enables AV for IMAP APPEND
    C_AV_Action_GWEnabled = $41D;                                       // Bool             Enables AV for Groupware
    C_AV_Action_GWExtensions = $41E;                                    // Bool             Apply extension filters for Groupware
    C_AV_Action_GWExtensionsInArchives = $4AF;                          // Bool             Apply extension filters for Groupware in Archives
    C_AV_Action_GWExternal = $41F;                                      // Bool             Apply external filters for Groupware
    C_AV_Action_FTPEnabled = $420;                                      // Bool             Enables AV for FTP
    C_AV_Action_FTPExtensions = $421;                                   // Bool             Apply extension filters for FTP
    C_AV_Action_FTPExtensionsInArchives = $4B0;                         // Bool             Apply extension filters for FTP in Archives
    C_AV_Action_FTPxternal = $422;                                      // Bool             Apply external filters for FTP

    C_AV_Action_HeuristicLevel = $4E8;                                  // Int              (0 - shallow, 1- medium, 2- detailed), valid only for Kaspersky engine so far
    C_AV_Kaspersky_Use_Cloud = $503;                                    // Bool             Enables Kaspersky Cloud scanning services

    // Filters
    C_AV_Filters_BlockFiles = $10B;                                     // Bool             Block files with following extensions
    C_AV_Filters_BlockFilesInArchives = $4AE;                           // Bool             Block archives with file with blocked extensions

    // Misc
    C_AV_Misc_RejectPassProtected = $AC;                                // Bool             Reject password protected files
    C_AV_Misc_ApplyAsLast = $BB;                                        // Bool             Apply antivirus as the last filter
    C_AV_Misc_Outgoing = $1A3;                                          // Bool             Apply antivirus to outgoing messages
    C_AV_Misc_DisableExternalAV = $9F;                                  // Bool             Disable External AV

    C_AV_MaxThreads = $111;                                             // Int              Max number of concurrent threads
    C_AV_MaxFile = $1D3;                                                // Int              Max message size   in kB

    C_AV_Avast = $135;                                                  // Bool             Avast Antivirus usage
    C_AV_Symantec = $136;                                               // Bool             Symantec Antivirus usage
    C_AV_AVG = $137;                                                    // Bool             AVG Antivirus usage
    C_AV_Kaspersky = $138;                                              // Bool             Kaspersky Antivirus usage
    C_AV_Kaspersky_Inproc = $428;                                       // Bool             Should Kaspersky be used as dll instead of as a service
    C_AV_Kaspersky_TempDeleteOlder = $467;                              // Int              Days, after which kaspersky download temporary directory is cleaned
    C_AV_Linux_Kaspersky_Restart_After_Update = $4E5;                   // Bool             Clients will be uninitialized, kavhost restarted and client initialized after bases update


// Web Service

    // GROUP_BEGIN General
    C_WebService_Default_HostName = $464;                               // String           Used only in directory listing so far. This should be set to point to the virtual host containing the "dir"  folder in root.
    C_WebService_AppMaxThreads = $166;                                  // Int              Number of web service application threads
    C_WebService_CustomHttpIncludeText = $4C1;                          // Longstring       Custom text to be filled in the HttpIncludeText (HttpIncludeText will be "Server: + CustomHttpIncludeText + cCRLF + 'Date: %s' + cCRLF")

    // GROUP_BEGIN Proxy
    C_Proxy_Active = $35D;                                              // Bool             Enable Proxy
    C_Proxy_Logging = $37E;                                             // Bool             Enable proxy logs
    C_Proxy_Authenticate = $37F;                                        // Bool             Require user authentication
    C_Proxy_DayLogging = $380;                                          // Bool values=(False - Standard logging, True - Day logging)            Logging type
    C_Proxy_DeleteLogs = $381;                                          // Int              Delete logs older than day
    C_Proxy_LoggingS = $382;                                            // String           Logging path
    C_Proxy_Parent = $383;                                              // String           Parent proxy
    C_Proxy_Filter = $384;                                              // String           Proxy filter file name
    C_Proxy_TunnelFilter = $385;                                        // String           Proxy tunnel filter file name
    C_Proxy_Users = $386;                                               // String           Proxy users file contents
    C_Proxy_Antivirus = $387;                                           // Bool             Check files going through proxy with antivirus
    C_Proxy_AntivirusSize = $388;                                       // Int              Size of data to hold in memory before using large file mode in bytes
    C_Proxy_AntivirusPercentage = $389;                                 // Int              Percentage of data size to send in large file mode
    C_Proxy_AntivirusBypass = $38A;                                     // String           Bypass extnesion types
    C_Proxy_CommonLog = $38B;                                           // Bool values=(False - Standard, True - W3C extended) Log format

    C_Libre_Online_Enabled = $577;                                      // Bool             Enables Libre Online - requires either special docker image to be installed on local server, or external service to be available and configured via C_Libre_Online_Connection
    C_Libre_Online_Connection = $584;                                   // String           Connection to external libre online service, (e.g. 192.168.6.5 , or 192.168.6.5:9098 , or  http://192.168.6.5/ )

// SMS Service
    // GROUP_BEGIN SMS
    C_SMSService_Active = $1FE;                                         // Bool             Enable SMS service
    C_SMSService_RequireAuth = $211;                                    // Bool             SMS requires authentication
    C_SMSService_DeliverContent = $271;                                 // Bool             Incoming SMS - deliver according to #email# in received messages
    C_SMSService_ReplyMessage = $272;                                   // Bool             Incoming SMS - deliver to original sender of received reply message (keep a list of sent messages
    C_SMSService_ProcessingMode = $276;                                 // Enum values=(0 - All messages, 1 - All except selected, 3 - Group, 5 - Selected domains only, 9 - Selected accounts only) SMS processing mode
 
    C_SMSService_ProcessingGroup = $277;                                // String           Policy group
    C_SMSService_ExpireMins = $27A;                                     // Int              Give up sending a message after minutes
    C_SMSService_URL = $289;                                            // String           SMS service URL
    C_SMSService_SenderReplyExpiration = $295;                          // Int              Keep records of sent messages for C_SMSService_ReplyMessage in seconds
    C_SMSService_SenderReplyConflict = $296;                            // Bool             Enable sending C_SMSService_SenderReplyConflictText when reipient conflict occurs
    C_SMSService_SenderReplyConflictText = $297;                        // String           Conflict message sent back to sender when more than one recipient record exists
    C_SMSService_LocalNumberLen = $365;                                 // Int              Maximum phone number length, longer will be cut
    C_SMSService_SubjectPrefix = $43E;                                  // String           SMS subject prefix

    C_SMS_GlobalSettings = $50B;                                        // Longstring       Global level of SMS settings

// ActiveSync
        // GROUP_BEGIN Mobile Sync
    C_ActiveSync_Active = $4DE;                                         // Boolean          ActiveSync active
    C_ActiveSync_URL = $28A;                                            // String           ActiveSync service URL
    C_ActiveSync_ProcessingMode = $311;                                 // Enum values=(0 - All messages, 1 - All except selected, 3 - Group, 5 - Selected domains only, 9 - Selected accounts only) ActiveSync processing mode

    C_ActiveSync_ProcessingGroup = $312;                                // String           Policy group

    C_ActiveSync_DBConnection = $4A9;                                   // String           ActiveSync DB DSN
    C_ActiveSync_DBUser = $4AA;                                         // String           ActiveSync DB user
    C_ActiveSync_DBPass = $4AB;                                         // String           ActiveSync DB password
        // GROUP_BEGIN Logging
    C_System_Log_Services_ActiveSync = $4E1;                            // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) ActiveSync logging level

   // WCS
    C_System_Log_Services_WCS = $4B2;                                   // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summar, 4 - Extended) WCS logging level

// WebClient
    // GROUP_BEGIN General
    C_Webmail_Active = $4E2;                                            // Int              WebClient service active
    C_Webmail_URL = $28B;                                               // String           WebClient service URL
    C_Webmail_TempDeleteOlder = $320;                                   // Int              Days, after which webClient temporary directory is cleaned
    C_Install_URL = $31D;                                               // String           IceWarp binaries (OSync, IWDC) download URL
    C_FreeBusy_URL = $359;                                              // String           FreeBusy URL
    C_WebAdmin_URL = $35A;                                              // String           WebAdmin URL
    C_InternetCalendar_URL = $35B;                                      // String           Calendar URL
    C_WebMail_Logs = $4C9;                                              // Int              WebClient log level
    C_WebMail_SessionCookie = $4D0;                                     // String           Webclient(pda,tablet) usage of cookies. If true, stores the session id in browser cookie

// FTP Service

    C_FTPService_Active = $1A6;                                         // Bool             Activate FTP service
    C_FTPService_ProcessingMode = $274;                                 // Enum values=(0 - All messages, 1 - All except selected, 3 - Group, 5 - Selected domains only, 9 - Selected accounts only) FTP processing mode

    C_FTPService_ProcessingGroup = $275;                                // String           Policy group

    C_FTP_GlobalSettings = $50C;                                        // Longstring       Global level of FTP settins

// GW

    // General
    // GROUP_BEGIN Groupware
    C_GW_General_Disable = $B9;                                         // Bool             Disable GW service
    C_GW_ProcessingGroup = $1A0;                                        // String           Policy group
    C_GW_SharedAccountPrefix = $27B;                                    // String           Shared account folder name prefix

    C_GW_SuperUser = $1CB;                                              // String           Super user name
    C_GW_SuperPass = $1CC;                                              // String           Super user password
    C_GW_ConnectionString = $235;                                       // String           Connection string to GW database
    C_GW_Resources = $327;                                              // String [R]       Default resource folder name
    C_GW_EnforceUTF8Versit = $353;                                      // Bool             Enable replacing of wrong UTF8 codes with space
    C_GW_CacheCount = $371;                                             // Int              SQL Query cache count
    C_GW_Sender = $372;                                                 // String           Notification Sender (name)
    C_GW_From = $373;                                                   // String           Notification From (email)
    C_GW_Attachments = $374;                                            // String           Root directory for attachments (relative or absolute)
    C_GW_AttachmentsMailboxPath = $375;                                 // Bool             If true, store attachments in user $mailboxes, otherwise use central storage
    C_GW_LDAPActive = $376;                                             // Bool             Enable Groupware LDAP
    C_GW_LDAPHost = $377;                                               // String           Groupware LDAP host address
    C_GW_LDAPBase = $378;                                               // String           Groupware LDAP base
    C_GW_LDAPUser = $379;                                               // String           Groupware LDAP user
    C_GW_LDAPPass = $37A;                                               // String           Groupware LDAP password
    C_GW_WebDAVURL = $37B;                                              // String           WebDAV HTTP link prefix
    C_GW_FreeBusyURL = $37C;                                            // String           Free/Busy HTTP link used in vCard
    C_GW_ACLNotifications = $37D;                                       // Bool             Enable ACL notifications
    C_GW_KeepDeletedItems = $42B;                                       // Bool             Move deleted items to @@TRASH@@ folder
    C_GW_KeepDeletedItemsExpiration = $42D;                             // Int              Move deleted items expiration
    C_GW_GAL_DisableUserEditing = $43C;                                 // Bool             Disable users to edit their GAL records
    C_GW_VersionControl = $446;                                         // Int              Enable version control for folder types (1 - files, 2 - calendar, 4 - tasks, 8 - journal, 16 - contacts, 32 - notes)
        // GW_AL_Files = $01;
        // GW_AL_Calendar = $02;
        // GW_AL_Tasks = $04;
        // GW_AL_Journal = $08;
        // GW_AL_Contacts = $10;
        // GW_AL_Notes = $20;
    C_GW_MaxPhotoSize = $457;                                           // Int              Maximum photo size that is allowed, larger photos will be optimized automatically
    C_GW_ResourcesDisableCalendarFolders = $46a;                        // Bool             Disables resources calendar subfolders
    C_GW_ResourcesDisableNamingByDescription = $4A3;                    // Bool             If set to true, name of calendar folder of group account will not be replaced with resource description

    C_GW_DocumentPDFConversion = $4E6;                                  // Bool             Office documents will have PDF thumbnail converted
    C_GW_PDFImageConversion = $50E;                                     // Bool             PDF documents will have jpeg thumbnail converted

    // GROUP_BEGIN General
    C_SmartAttach_URLShortenerForTickets = $43B;                        // Bool             Enable URL shortener for tickets
    C_SmartAttach_Key = $445;                                           // String           SmartAttach key

    // GROUP_BEGIN Conferencing
    C_Meeting_Number = $48A;                                            // String           Meeting PSTN number
    C_Meeting_SIP = $48B;                                               // String           Meeting SIP number
    // GROUP_BEGIN Logging
    C_System_Log_Services_Meeting = $490;                               // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) Meeting logging level (1 - debug, 2 - summary, 3 - debug&summary, 4 - extended)

    // GROUP_BEGIN Conferencing
    C_Meeting_Active = $491;                                            // Bool             Enable Meeting services

    C_Meeting_Password = $496;                                          // String           Read only password of the built in conference account
    C_System_LibreOfficeBinary = $6AD;                                  // String           Linux - LibreOffice 5.0 and above path - when set, this libreoffice will be used for image conversion

// IM

    // General
    // GROUP_BEGIN Instant Messaging
    C_IM_General_Disable = $D5;                                         // Bool             Disable IM service
    C_IM_General_Redirectunknown = $D7;                                 // Bool             Redirect unknown domain to local domain
    C_IM_General_Anonymous = $DA;                                       // Bool             Enable Anonymous server to server communication
    C_IM_General_AccountRegistration = $DB;                             // Bool             Enable Account registration
    C_IM_General_ServerOSReport = $DC;                                  // Bool             Enable Server OS report
    C_IM_ProcessingGroup = $1A2;                                        // String           Policy group
    C_IM_EmailTransportNode = $1E7;                                     // String           IM email transport node
    C_IM_SocksServerIP = $21A;                                          // String           IM socks server IP
    C_IM_SocksServerJID = $32B;                                         // String [R]       IM socks server JID

    // Archiving
    C_IM_Archive_Enable = $C5;                                          // Bool             Enable IM archive
    C_IM_Archive_DeleteAfter = $C4;                                     // Int              Delete IM archive after (Days)
    C_IM_UserHistory = $290;                                            // Bool             Enable user's message history
    C_IM_DeleteUserHistory = $497;                                      // Bool             If set to true, IM history of users is deleted after some months. It uses the same settings as "Delete emails older than (days)", but that value is rounded up to months

    // Presence History
    C_IM_Presence_History = $1F9;                                       // Bool             Enable log of IM users presence
    C_IM_Presence_HistoryDelete = $1FA;                                 // Int              Non-zero value will cause presence history logs older than that number of days will be deleted
    C_IM_SubjectPrefix = $43F;                                          // String           IM subject prefix

// PushServer
    // GROUP_BEGIN Groupware
    C_PushServer_Active = $1FB;                                         // Bool             Enable ActiveSync push
    C_PushServer_Port = $1FC;                                           // Int              ActiveSync push port
    C_PushServer_Heartbeat = $291;                                      // Int              ActiveSync connection check interval in minutes (60..120)

// SyncML
    // GROUP_BEGIN Mobile Sync
    C_SyncML_Active = $4DD;                                             // Boolean          SyncML active
    C_SyncML_URL = $242;                                                // String           SyncML URL
    C_SyncML_ProcessingMode = $1ED;                                     // Enum values=(0 - All messages, 1 - All except selected, 3 - Group, 5 - Selected domains only, 9 - Selected accounts only) SyncML processing mode (0 - all messages, 1 - all except selected, 3 - group, 5 - selected domains only, 9 - selected accounts only)

    C_SyncML_ProcessingGroup = $1EF;                                    // String           Policy group
        // GROUP_BEGIN Logging
    C_System_Log_Services_SyncML = $4E0;                                // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) SyncML logging level (1 - debug, 2 - summary, 3 - debug&summary, 4 - extended)

    // GROUP_BEGIN Mobile Sync
    C_SyncML_AuthType = $4E3;                                           // Int              SyncML authentication type

// WebDAV
    // GROUP_BEGIN WebDAV
    C_WebDAV_Active = $4DC;                                             // Boolean          WebDAV service active
    C_WebDAV_ProcessingMode = $278;                                     // Enum values=(0 - All messages, 1 - All except selected, 3 - Group, 5 - Selected domains only, 9 - Selected accounts only) WebDAV processing mode (0 - all messages, 1 - all except selected, 3 - group, 5 - selected domains only, 9 - selected accounts only)

    C_WebDAV_ProcessingGroup = $279;                                    // String           Policy group
    C_WebDAV_URL = $28C;                                                // String           WebDAV URL
    // GROUP_BEGIN Logging
    C_System_Log_Services_WebDAV = $4DF;                                // Enum values=(0 - None, 1 - Debug, 2 - Summary, 3 - Debug & Summary, 4 - Extended) WevDAV logging level (1 - debug, 2 - summary, 3 - debug&summary, 4 - extended)

    // GROUP_BEGIN WebDAV
    C_WebDAV_UseGALForSearch = $4E4;                                    // Boolean          enable use of GAL for contact suggestion in WebDAV

// SIP service
    // GROUP_BEGIN VoIP
    C_System_Services_SIP_Enable = $17F;                                // Bool             Enable SIP service
    C_System_Services_SIP_Port = $180;                                  // Int              SIP server port
    C_System_Services_SIP_DebugFile = $189;                             // String           SIP debug log filename
    C_System_Services_SIP_NoRecordRoute = $181;                         // Bool             Disable SIP Record-Route header value
    C_System_Services_SIP_LocalNet = $182;                              // String           SIP local net IPs
    C_System_Services_SIP_RemoteAccessHost = $183;                      // String           SIP remote access host address
    C_System_Services_SIP_LocalAccessHost = $184;                       // String           SIP local access host address
    C_System_Services_SIP_OtherProxy = $185;                            // String           SIP proxy server address
    C_System_Services_SIP_UseOtherProxy = $186;                         // Bool             Enable using of proxy for SIP
    C_System_Services_SIP_DisableAnonymousAccess = $187;                // Bool             Disable anonymous access for SIP
    C_System_Services_SIP_DisableRegistrar = $188;                      // Bool             Disable registration of all SIP clients
    C_System_Services_SIP_DisableSymmetricResponseRouting = $198;       // Bool             Disable via received roting
    C_System_Services_SIP_Calls = $192;                                 // Bool             Enable SIP calls log
    C_System_Services_SIP_CallsFile = $193;                             // String           SIP user calls filename
    C_System_Services_SIP_UserCalls = $1D5;                             // Bool             Enable SIP user calls to file(s)
    C_System_Services_SIP_ENUM = $1DC;                                  // Bool             Enable Telephone/E164 Number Mapping (ENUM)
    C_System_Services_SIP_Services = $364;                              // Bool             Deactivated property - out of use
    C_System_Services_SIP_SDPProxy = $18C;                              // Bool             Enable SDP proxy
    C_System_Services_SIP_SDPRemoteAccessHost = $18D;                   // String           SIP SDP remote access host
    C_System_Services_SIP_Mode = $18E;                                  // Int              Service Policy
    C_System_Services_SIP_RTPProxy = $18F;                              // Bool             Enable RTP NAT Traversal proxy and streaming server
    C_System_Services_SIP_RTPStart = $190;                              // Int              Local RTP port range from
    C_System_Services_SIP_RTPMax = $191;                                // Int              Local RTP port range to
    C_System_Services_SIP_MaxCalls = $194;                              // Int              Max number of simultaneous SIP calls
    C_System_Services_SIP_DNSEnabled = $195;                            // Bool             Enable extended DNS lookup (NAPTR and SRV)
    C_System_Services_SIP_AccessGroup = $1A1;                           // String           Policy group
    C_System_Services_SIP_SSLPort = $1B3;                               // Int              SIP SSL port
    C_System_Services_SIP_List = $1B4;                                  // String           SIP Firewall list
    C_System_Services_SIP_Grant = $1B5;                                 // Bool             SIP Firewall access type
    C_System_Services_SIP_ContactExpires = $1FD;                        // Int              SIP contact expiration (seconds)
    C_System_Services_SIP_CallerAlias =  $287;                          // String           Call dialer agent alias
    C_System_Services_SIP_CallerName =  $288;                           // String           Call dialer agent name
    C_System_Services_SIP_RTCP = $28D;                                  // Bool             Enable SIP RTCP support
    C_System_Services_SIP_RTPDump = $28E;                               // Bool             Enable recording VoIP calls
    C_System_Services_SIP_RTPDumpPath = $28F;                           // String           VoIP recordings path
    C_System_Services_SIP_RTPDumpFlags = $414;                          // Int              bit flags (0x01 - Wave, 0x02 - NoDeleteDump, 0x04 - NoMerge , 0x08 Both directions, 0x10 - store in memory)

    C_System_Services_SIP_BasicAuth = $438;                             // Bool             Allow basic authentication mechanism for SIP
    C_System_Services_SIP_LocalHostDomain = $442;                       // String           Localhost name, by default localhost.localhost

    C_System_Services_SIP_JitterBuffer_DetectSilence = $4C2;            // Bool             Enables silence detection, algorithm can be tuned through C_System_Services_SIP_JitterBuffer_ExpertSettings
    C_System_Services_SIP_JitterBuffer_NormalizeVolume = $4C3;          // Bool             Enables volume normalizaiton, algorithm can be tuned through C_System_Services_SIP_JitterBuffer_ExpertSettings
    C_System_Services_SIP_JitterBuffer_ExpertSettings = $4C4;           // String           Special params for volume normalization and silence detection, URL-like string, for experts only

    C_System_Services_SIP_WebSocketsUseProxyServer = $4F8;              // Bool             Enable Mail4Cisco media proxy mode
    C_System_Services_SIP_MediaProxyEnabled = $4F9;                     // Bool             Enable proxy processing SRTP/SIP packets (needed for WebRTC)
    C_System_Services_SIP_MediaProxyDebug = $4FA;                       // Bool             Enable SIP media proxy debugging (sipmp.log)
    C_System_Services_SIP_MediaProxyTrafficDebug = $4FB;                // Bool             Log encoding and decoding of SRTP packets to SIP media proxy log
    C_System_Services_SIP_MediaProxyRTPDump = $4FC;                     // Int              (0 - no RTP dump, 1 - full RTP dump, 2 - WebSocket RTP dump
    C_System_Services_SIP_MediaProxySDPCorrectionRequireVideoVP8 = $4FD;// Bool             Enable patch incorrect video codec (invite with incorrect video payload)
    C_System_Services_SIP_MediaProxySDPCorrectionAddMissingResponseStreams = $4FE;  // Bool Add missing streams for SDP response (response with missing video stream from INVITE)


    C_System_Services_SIP_GetExternalIPFailed = $50F;                   // Bool             When False then external IP is tried to be obtained for SIP_RemoteAccessHost, it causes to try it only once to prevent cycling

 // Meeting
    // GROUP_BEGIN Conferencing
    C_Meeting_ProcessingGroup = $48D;                                   // String           Policy group

    // GROUP_BEGIN General
    C_Cisco_ProcessingGroup =$502;                                      // String           Policy group
    // GROUP_BEGIN Advanced
    C_System_ABQStatus =   $4F2;                                        // String           One char only, status of ABQ
    C_System_VDS =   $4F3;                                              // String           Virtual Device Starus


    C_System_Server_Language = $493;                                    // String           two character code of the language, server language is used for localization of general messages, like conference info


// Schedule 

    // GROUP_BEGIN Resource
    S_ForceDial = $6A3;                                                 // Bool             Force dial schedule flag
    S_WeekDays_Mo = $694;                                               // Bool
    S_WeekDays_Tu = $68B;                                               // Bool
    S_WeekDays_We = $682;                                               // Bool
    S_WeekDays_Th = $67F;                                               // Bool
    S_WeekDays_Fr = $67B;                                               // Bool
    S_WeekDays_Sa = $679;                                               // Bool
    S_WeekDays_Su = $677;                                               // Bool
    S_ScheduleType = $674;                                              // Int              (stEvery, stOnce)
    S_ScheduleWhen = $260;                                              // Int              (stWeekdays, stDaysInMonth,stDisabled)
    S_DaysInMonth = $261;                                               // String           Semicolon seprataed list of days in month (0..31)
    S_OnceAt = $672;                                                    // Int              Day time in seconds
    S_Every = $66F;                                                     // Int              Interval in seconds
    S_WholeDay = $66C;                                                  // Bool             Whole day flag
    S_BetweenFrom = $668;                                               // Int              Day time in seconds
    S_BetweenTo = $664;                                                 // Int              Day time in seconds

    S_Backup = $660;                                                    // Longstring       Backup of schedule structure

// Statistics

    // GROUP_BEGIN Statistics
    ST_Time = $6A0;                                                     // Int              Unix time
    ST_ServerOut = $69D;                                                // Int              kB
    ST_ServerIn = $695;                                                 // Int              kB
    ST_ClientOut = $68C;                                                // Int              kB
    ST_ClientIn = $683;                                                 // Int              kB
    ST_Server = $680;                                                   // Int              Current connection count
    ST_ServerPeak = $67C;                                               // Int              Peak connection count
    ST_Client = $07;                                                    // Int              Current client connection count
    ST_ClientPeak = $673;                                               // Int              Peak client connection count
    ST_ServerConns = $670;                                              // Int              Total connection count
    ST_PeakWorkingSetSize = $64C;                                       // Int              The peak working set size, in bytes.
    ST_PageFileUsage = $648;                                            // Int              The Commit Charge value in bytes for this process. Commit Charge is the total amount of memory that the memory manager has committed for a running process.
    ST_WorkingSetSize = $647;                                           // Int              The current working set size, in bytes.
    ST_RunningTime = $644;                                              // Int              Running time in seconds

    ST_SMTP_MessageOut = $66D;                                          // Int              Number of sent messages
    ST_SMTP_MessageIn = $669;                                           // Int              Number of received messages
    ST_SMTP_MessageFailed = $665;                                       // Int              Number of failed messages

    ST_SMTP_FailedGL = $661;                                            // Int              Number of greylisted messages
    ST_SMTP_FailedVirus = $65D;                                         // Int              Number of messages containing virus
    ST_SMTP_FailedCF = $65A;                                            // Int              Number of messages rejected by content filter
    ST_SMTP_FailedStaticFilter = $657;                                  // Int              Number of messages rejected by statis filter
    ST_SMTP_FailedFilter = $656;                                        // Int              Number of messages rejected by rules
    ST_SMTP_FailedRBL = $653;                                           // Int              Number of messages marked as spam by RBL
    ST_SMTP_FailedTarpit = $651;                                        // Int              Number of tarpitted messages
    ST_SMTP_FailedSpam = $64E;                                          // Int              Number of spam messages
    ST_SMTP_FailedSpamQuarantine = $641;                                // Int              Number of quarantined messages
    ST_SMTP_FailedSpamRefused = $63F;                                   // Int              Number of spam refused messages
    ST_SMTP_FailedSA = $63E;                                            // Int              Number of SpamAssassin spam messages
    ST_SMTP_FailedCTBulk = $63C;                                        // Int              Number of Anti-Spam Live bulk messages
    ST_SMTP_FailedCTSpam = $63A;                                        // Int              Number of Anti-Spam Live spam messages

    ST_SIP_PacketsIn = $66E;                                            // Int              Number of SIP packets recieved
    ST_SIP_PacketsOut = $66A;                                           // Int              Number of SIP packets sent
    ST_SIP_RTPPacketsIn = $666;                                         // Int              Number of SIP RTP packets recieved
    ST_SIP_RTPPacketsOut = $662;                                        // Int              Number of SIP RTP packets sent

// Validation
    V_Account_PassPolicy = AnsiString('passpolicy');


// Variables only for new style API
    // Domain
    // GROUP_BEGIN Domain
    D_AliasList = $56E;                                                 // String ddar=r    List of domain aliases
    D_MessagesSentToday = $572;                                         // Int ddar=r       Amount of messages sent from this domain today
    D_StorageUse = $573;                                                // Int ddar=r       Domain storage usage
    D_IM_Roster = $574;                                                 // String ddar=r    Domain Instant Messaging Roster
    D_IM_Roster_Populated = $575;                                       // String ddar=w    Instant Messaging Roster Populated
    D_OutlookPolicies = $576;                                           // String ddar=w    Domain Outlook Policies

    // Account
    A_AliasList = $51E;                                                 // String           List of account aliases
    A_GroupList = $51F;                                                 // String           List of all groups account is in
    A_Quota = $528;                                                     // String           Account quota ( actual size + limit )
    A_ImageSmall = $529;                                                // String           Account small image
    A_Image = $52A;                                                     // String           Account image
    A_AdminType = $52C;                                                 // Enum values=(0 - Standart user, 1 - Domain Administrator, 2 - Server Administrator) Administrator Type

    A_LastLoginTime = $52D;                                             // Int              Last login timestamp
    A_LastLoginIP = $52E;                                               // String           Last login timestamp
    A_MessagesSentToday = $52F;                                         // Int              Ammount of messages sent this day
    A_AmountSentToday = $52B;                                           // Int              Megabytes sent this day
    A_MobileDevices = $530;                                             // Int              Mobile device  (obsolete)
    A_Responder = $538;                                                 // String           Ammount of messages sent this day
    A_ResponderMessage = $56C;                                          // String           Responder message
    A_ResponderNoRespond = $56D;                                        // String           No respond for
    A_Name = $539;                                                      // String           Account name and surname
    A_State = $53A;                                                     // Enum values=(0 - Enabled, 1 - Disabled (Login), 2 - Disabled (Login, Receive), 3 - Disabled (Tarpitting)) Account name and surname

    A_VCard = $53B;                                                     // String           Account card
    A_OutlookPolicies = $53D;                                           // String           Account outlook sync policies
    A_ActivationKeyOutlook = $53F;                                      // String           Activation Key - Outlook Connector [R]
    A_ActivationKeyDesktop = $540;                                      // String           Activation Key - Desktop Client [R]

    // Members for group/mailing list/resource
    A_MemberList = $541;                                                // String           List of mailing list members
    A_PasswordProtection = $56B;                                        // Bool             Group password protection

    V_ListPermission = $53E;                                            // Int              This is virtual property, it has no value, but you can define permissions to this property. Who has permissions for V_ListPermission on specific account, can list this account
    V_OpenPermission = $54C;                                            // Int              This is virtual property, it has no value, but you can define permissions to this property. Who has permissions for V_OpenPermission on specific account/domain, can open this account/domain

    V_CreateUser = $544;                                                // Bool             User creating right
    V_CreateMailingList = $545;                                         // Bool             MailingList creating right
    V_CreateGroup = $546;                                               // Bool             Group creating right
    V_CreateResource = $547;                                            // Bool             Resource creating right
    V_CreateDomain = $56F;                                              // Bool             Domain creating right

    V_DeleteUser = $548;                                                // Bool             User deleting right
    V_DeleteMailingList = $549;                                         // Bool             MailingList deleting right
    V_DeleteGroup = $54A;                                               // Bool             Group deleting right
    V_DeleteResource = $54B;                                            // Bool             Resource deleting right

    V_DeleteDomain = $570;                                              // Bool             Domain deleting right
    V_RenameDomain = $571;                                              // Bool             Domain renaming right

    V_SpamQueues = $589;                                                // Bool             Right to manage spam queues - quarantine, whitelist, blacklist
    V_AllOptions = $58A;                                                // Bool             Virtual right to manage all options

    //Device properties - Info
    // GROUP_BEGIN Device
    Device_Account = $54D;                                              // String           Account
    Device_ID = $54E;                                                   // String           ID
    Device_Name = $54F;                                                 // String           Name
    Device_Type = $550;                                                 // String           Type
    Device_Registered = $551;                                           // String           Registered time
    Device_Status = $552;                                               // String           Status
    Device_OS = $553;                                                   // String           Device operating system
    Device_Model = $554;                                                // String           Model
    Device_LastSync = $555;                                             // String           Last time of synchronization
    Device_Protocol = $556;                                             // String           Protocol
    Device_RemoteWipe = $567;                                           // String    [R]    Wipe settings

    //Device properties - Synchronization
    Device_SyncMail = $557;                                             // Bool             Synchronize mail folders
    Device_SyncMailPast = $558;                                         // Int              Synchronize mail folders past days
    Device_SyncMailPastMax = $568;                                      // Int     [R]      Limit of Device_SyncMailPast

    Device_SyncCal = $559;                                              // Bool             Synchronize event folders
    Device_SyncCalPast = $55A;                                          // Int              Synchronize event folders past days
    Device_SyncCalPastMax = $569;                                       // Int   [R]        Limit of Device_SyncMailPast

    Device_SyncTaskAs = $55B;                                           // Bool             Synchronize task folders
    Device_SyncTaskAsValue = $55C;                                      // Int              Synchronize task folders as
    Device_SyncTaskAsType = $55D;                                       // Int              Merge task folders value

    Device_SyncNotesAs = $55E;                                          // Bool             Synchronize note folders
    Device_SyncNotesAsValue = $55F;                                     // Int              Synchronize note folders as
    Device_SyncNotesAsType = $560;                                      // Int              Merge note folders

    Device_SyncGroupwareFolders = $561;                                 // Int              GroupWare folders synchronization value
    Device_SyncMailFolders = $562;                                      // Int              Mail folders synchronization value

    Device_SyncSharedFolders = $563;                                    // Bool             Sync shared folders
    Device_SyncArchiveFolders = $564;                                   // Bool             Sync archive folders
    Device_SyncPublicFolders = $565;                                    // Bool             Sync public folders

    Statistics_ActiveUsers = $578;                                      // Int              Number of user accounts (accross all domains) counting towards the license
    Statistics_LicensedUsers = $579;                                    // Int              Number of licensed users (for "mail server" module)
    Statistics_UsedSpace = $57A;                                        // Int              Total used space
    Statistics_MailSent = $57B;                                         // Int              SMTP - Messages - Sent
    Statistics_MailReceived = $57C;                                     // Int              SMTP - Messages - Received
    Statistics_SMTPConn = $57D;                                         // Int              SMTP Connections
    Statistics_IMAPConn = $57E;                                         // Int              IMAP Connections
    Statistics_WebConn = $57F;                                          // Int              WEB Connections
    Statistics_SMTPConnPeak = $580;                                     // Int              SMTP Connections peak
    Statistics_IMAPConnPeak = $581;                                     // Int              IMAP Connections peak
    Statistics_WebConnPeak = $582;                                      // Int              WEB Connections peak

    //Global
    Global_OutlookPolicies = $588;                                      // TOutlookPolicies Global outlook policies

Implementation
// Last Used ID: $6AF
End.
