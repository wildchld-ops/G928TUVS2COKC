.class public Lcom/android/server/enterprise/content/SecContentProvider;
.super Landroid/content/ContentProvider;
.source "SecContentProvider.java"


# static fields
.field public static final ACTION_MDM_BROWSERPROVIDER_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed"

.field private static final ADVANCEDRESTRICTION:I = 0x1

.field private static final API_KEY:Ljava/lang/String; = "API"

.field private static final APPLICATIONPERMISSIONCONTROL:I = 0x17

.field private static final AUDIT:I = 0x2

.field public static final AUTHORITY:Ljava/lang/String; = "com.sec.knox.provider"

.field private static final BLUETOOTH:I = 0x3

.field private static final BLUETOOTHUTILS:I = 0x4

.field private static final BROWSER:I = 0x5

.field private static final CERTIFICATE:I = 0x6

.field private static final CONTAINERAPPLICATION:I = 0x7

.field private static final DATETIME:I = 0x18

.field private static final DEVICESETTIGNS:I = 0x8

.field private static final ENTERPRISEKNOXMANAGER:I = 0x9

.field public static final EXTRA_API_CHANGED:Ljava/lang/String; = "edm.intent.certificate.action.mdmprovider.changed.api"

.field private static final FIREWALL:I = 0xa

.field private static final KNOXCONFIGURATIONTYPE:I = 0xb

.field private static final LOCATION:I = 0xc

.field private static final PASSWORD1:I = 0xd

.field private static final PASSWORD2:I = 0xe

.field public static final PROVIDER_ADMINREMOVED:Ljava/lang/String; = "ADMIN_REMOVED"

.field public static final PROVIDER_AUDITLOGPOLICY_AUDITLOGENABLED:Ljava/lang/String; = "AuditLog/isAuditLogEnabled"

.field public static final PROVIDER_AUDITLOGPOLICY_AUTOCOMPLETE:Ljava/lang/String; = "AuditLog/AUTO_COMPLETING_DATA"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENPOPUP:Ljava/lang/String; = "AuditLog/OPEN_POPUP_URL"

.field public static final PROVIDER_AUDITLOGPOLICY_OPENURL:Ljava/lang/String; = "AuditLog/OPEN_URL"

.field public static final PROVIDER_BROWSERPOLICY_AUTOFILL:Ljava/lang/String; = "BrowserPolicy/getAutoFillSetting"

.field public static final PROVIDER_BROWSERPOLICY_COOKIES:Ljava/lang/String; = "BrowserPolicy/getCookiesSetting"

.field public static final PROVIDER_BROWSERPOLICY_HTTPPROXY:Ljava/lang/String; = "BrowserPolicy/getHttpProxy"

.field public static final PROVIDER_BROWSERPOLICY_JAVASCRIPT:Ljava/lang/String; = "BrowserPolicy/getJavaScriptSetting"

.field public static final PROVIDER_BROWSERPOLICY_POPUPS:Ljava/lang/String; = "BrowserPolicy/getPopupsSetting"

.field public static final PROVIDER_CERTIFICATEPOLICY_CERTIFICATE_REMOVED:Ljava/lang/String; = "CertificatePolicy/certificateRemoved"

.field public static final PROVIDER_CERTIFICATEPOLICY_NOTIFY:Ljava/lang/String; = "CertificatePolicy/notifyCertificateFailure"

.field public static final PROVIDER_FIREWALLPOLICY_SAVEURLBLOCKEDREPORT:Ljava/lang/String; = "FirewallPolicy/saveURLBlockedReport"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterEnabled"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERLIST:Ljava/lang/String; = "FirewallPolicy/getURLFilterList"

.field public static final PROVIDER_FIREWALLPOLICY_URLFILTERREPORTENABLED:Ljava/lang/String; = "FirewallPolicy/getURLFilterReportEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_AUTHENTICATION:Ljava/lang/String; = "SmartCardBrowserPolicy/isAuthenticationEnabled"

.field public static final PROVIDER_SMARTCARDBROWSERPOLICY_GETCLIENTCERTIFICATE:Ljava/lang/String; = "SmartCardBrowserPolicy/getClientCertificateAlias"

.field private static final RESTRICTION1:I = 0xf

.field private static final RESTRICTION2:I = 0x10

.field private static final RESTRICTION3:I = 0x11

.field private static final RESTRICTION4:I = 0x12

.field private static final ROAMING:I = 0x13

.field private static final SECURITY:I = 0x14

.field private static final SMARTCARDBROWSER:I = 0x16

.field private static final SMARTCARDEMAIL:I = 0x15

.field public static final TAG:Ljava/lang/String; = "SecContentProvider"

.field private static final URI_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mContext:Landroid/content/Context;

.field mEdmFirewallPolicy:Lcom/android/server/enterprise/firewall/FirewallPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AdvancedRestrictionPolicy"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "AuditLog"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothPolicy"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BluetoothUtils"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "BrowserPolicy"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "CertificatePolicy"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ContainerApplicationPolicy"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DeviceSettingsPolicy"

    const/16 v3, 0x8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "EnterpriseKnoxManagerPolicy"

    const/16 v3, 0x9

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "FirewallPolicy"

    const/16 v3, 0xa

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "KnoxConfigurationType"

    const/16 v3, 0xb

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "LocationPolicy"

    const/16 v3, 0xc

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy1"

    const/16 v3, 0xd

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "PasswordPolicy2"

    const/16 v3, 0xe

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy1"

    const/16 v3, 0xf

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy2"

    const/16 v3, 0x10

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy3"

    const/16 v3, 0x11

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RestrictionPolicy4"

    const/16 v3, 0x12

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "RoamingPolicy"

    const/16 v3, 0x13

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SecurityPolicy"

    const/16 v3, 0x14

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardEmailPolicy"

    const/16 v3, 0x15

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "SmartCardBrowserPolicy"

    const/16 v3, 0x16

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "ApplicationPermissionControlPolicy"

    const/16 v3, 0x17

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.sec.knox.provider"

    const-string v2, "DateTimePolicy"

    const/16 v3, 0x18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private getCallerName(I)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    const-string/jumbo v2, "package"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/PackageManagerService;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/pm/PackageManagerService;->getNameForUid(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    const-string/jumbo v0, "fail to get caller name."

    :cond_1
    return-object v0
.end method

.method public static notifyPolicyChangesAsUser(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "content://com.sec.knox.provider/"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-virtual {v1, v0, v4, v5, p2}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;ZI)V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 17

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const-string v2, "SecContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "insert(), uri = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object v4, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v4, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "SecContentProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "called from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    const/4 v2, 0x0

    return-object v2

    :sswitch_1
    const-string v2, "browser_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v13, :cond_0

    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string/jumbo v2, "saveURLBlockedReport"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "url"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v13, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->saveURLBlockedReportEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_2
    const-string v2, "certificate_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v14, :cond_0

    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v2, "fail"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v12

    if-eqz v10, :cond_0

    const-string/jumbo v2, "notifyCertificateFailure"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v12, :cond_0

    const-string/jumbo v2, "module"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v14, v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_3
    const-string v2, "auditlog"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v1, :cond_0

    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_1

    const-string v2, "AuditLoggerAsUser"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string/jumbo v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "userid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v9}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual/range {v1 .. v9}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLoggerAsUser(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1
    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "severity"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const-string/jumbo v4, "group"

    move-object/from16 v0, p2

    invoke-virtual {v0, v4}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string/jumbo v5, "outcome"

    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    const-string/jumbo v6, "uid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const-string v7, "component"

    move-object/from16 v0, p2

    invoke-virtual {v0, v7}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "message"

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/enterprise/auditlog/AuditLogService;->AuditLogger(Landroid/app/enterprise/ContextInfo;IIZILjava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v2, "password_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v15, :cond_0

    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string/jumbo v2, "setPwdChangeRequested"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "flag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v15, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->setPwdChangeRequested(Landroid/app/enterprise/ContextInfo;I)Z

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v2, "security_policy"

    invoke-static {v2}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v16, :cond_0

    const-string v2, "API"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_0

    const-string/jumbo v2, "setDodBannerVisibleStatus"

    invoke-virtual {v10, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Landroid/app/enterprise/ContextInfo;

    invoke-direct {v2, v11}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const-string/jumbo v3, "isVisible"

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    move-object/from16 v0, v16

    invoke-virtual {v0, v2, v3}, Lcom/android/server/enterprise/security/SecurityPolicy;->setDodBannerVisibleStatus(Landroid/app/enterprise/ContextInfo;Z)Z

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_3
        0x5 -> :sswitch_0
        0x6 -> :sswitch_2
        0xa -> :sswitch_1
        0xe -> :sswitch_4
        0x14 -> :sswitch_5
    .end sparse-switch
.end method

.method public onCreate()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/enterprise/content/SecContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/enterprise/content/SecContentProvider;->mContext:Landroid/content/Context;

    const/4 v0, 0x1

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 62

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v19

    invoke-static/range {v19 .. v19}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v56

    const/16 v43, 0x0

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "query(), uri = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    sget-object v60, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v60

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " selection = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "called from "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/SecContentProvider;->getCallerName(I)Ljava/lang/String;

    move-result-object v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/secutil/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v58, Lcom/android/server/enterprise/content/SecContentProvider;->URI_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, v58

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v58

    packed-switch v58, :pswitch_data_0

    :cond_0
    :pswitch_0
    const/16 v58, 0x0

    :goto_0
    return-object v58

    :pswitch_1
    const-string/jumbo v58, "restriction_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v35, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_0

    :cond_1
    :goto_1
    packed-switch v58, :pswitch_data_1

    const/16 v58, 0x0

    goto :goto_0

    :sswitch_0
    const-string v59, "checkPackageSource"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x0

    goto :goto_1

    :sswitch_1
    const-string/jumbo v59, "isActivationLockAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x1

    goto :goto_1

    :sswitch_2
    const-string/jumbo v59, "isAirplaneModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x2

    goto :goto_1

    :sswitch_3
    const-string/jumbo v59, "isAndroidBeamAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x3

    goto :goto_1

    :sswitch_4
    const-string/jumbo v59, "isAudioRecordAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x4

    goto :goto_1

    :sswitch_5
    const-string/jumbo v59, "isBackgroundDataEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x5

    goto :goto_1

    :sswitch_6
    const-string/jumbo v59, "isBackgroundProcessLimitEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x6

    goto :goto_1

    :sswitch_7
    const-string/jumbo v59, "isBackupAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x7

    goto/16 :goto_1

    :sswitch_8
    const-string/jumbo v59, "isBluetoothTetheringEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x8

    goto/16 :goto_1

    :sswitch_9
    const-string/jumbo v59, "isCameraEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x9

    goto/16 :goto_1

    :sswitch_a
    const-string/jumbo v59, "isCellularDataAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0xa

    goto/16 :goto_1

    :sswitch_b
    const-string/jumbo v59, "isClipboardAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0xb

    goto/16 :goto_1

    :sswitch_c
    const-string/jumbo v59, "isClipboardAllowedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0xc

    goto/16 :goto_1

    :sswitch_d
    const-string/jumbo v59, "isClipboardShareAllowedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0xd

    goto/16 :goto_1

    :sswitch_e
    const-string/jumbo v59, "isClipboardShareAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0xe

    goto/16 :goto_1

    :sswitch_f
    const-string/jumbo v59, "isDeveloperModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0xf

    goto/16 :goto_1

    :sswitch_10
    const-string/jumbo v59, "isFactoryResetAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x10

    goto/16 :goto_1

    :sswitch_11
    const-string/jumbo v59, "isFastEncryptionAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_1

    const/16 v58, 0x11

    goto/16 :goto_1

    :pswitch_2
    if-eqz p4, :cond_2

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_3

    :cond_2
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_3
    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v35

    move/from16 v1, v56

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->checkPackageSource(ILjava/lang/String;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string v60, "checkPackageSource"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_3
    if-eqz p4, :cond_4

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_5

    :cond_4
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_5
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isActivationLockAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isActivationLockAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2

    :pswitch_4
    const/4 v6, 0x0

    if-eqz p4, :cond_6

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_6

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_6
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAirplaneModeAllowed(Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isAirplaneModeAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_5
    const/4 v6, 0x0

    if-eqz p4, :cond_7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_7

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_7
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAndroidBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isAndroidBeamAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_6
    const/4 v6, 0x0

    if-eqz p4, :cond_8

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_8

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_8
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isAudioRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isAudioRecordAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_7
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isBackgroundDataEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_8
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackgroundProcessLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isBackgroundProcessLimitEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_9
    if-eqz p4, :cond_9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_a

    :cond_9
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_a
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBackupAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isBackupAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_a
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isBluetoothTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isBluetoothTetheringEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_b
    if-eqz p4, :cond_b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_c

    :cond_b
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_c
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCameraEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isCameraEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_c
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isCellularDataAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isCellularDataAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_d
    if-eqz p4, :cond_d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_e

    :cond_d
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    :goto_3
    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isClipboardAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :cond_e
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    goto :goto_3

    :pswitch_e
    if-eqz p4, :cond_f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_10

    :cond_f
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_10
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    move-object/from16 v0, v35

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardAllowedAsUser(ZI)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "RESTRICTIONPOLICY_CLIPBOARDALLOWEDASUSER_METHOD return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isClipboardAllowedAsUser"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_f
    if-eqz p4, :cond_11

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_12

    :cond_11
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_12
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v35

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowedAsUser(I)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isClipboardShareAllowedAsUser"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_10
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isClipboardShareAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isClipboardShareAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_11
    const/4 v6, 0x0

    if-eqz p4, :cond_13

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_13

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_13
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isDeveloperModeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isDeveloperModeAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_12
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFactoryResetAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isFactoryResetAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_13
    if-eqz p4, :cond_14

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_14

    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_14
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFastEncryptionAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isFastEncryptionAllowed return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isFastEncryptionAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2

    :pswitch_14
    const-string/jumbo v58, "restriction_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v35, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_1

    :cond_15
    :goto_4
    packed-switch v58, :pswitch_data_2

    const-string v58, "SecContentProvider"

    const-string/jumbo v59, "return null"

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_12
    const-string/jumbo v59, "isFirmwareAutoUpdateAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x0

    goto :goto_4

    :sswitch_13
    const-string/jumbo v59, "isFirmwareRecoveryAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x1

    goto :goto_4

    :sswitch_14
    const-string/jumbo v59, "isGoogleAccountsAutoSyncAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x2

    goto :goto_4

    :sswitch_15
    const-string/jumbo v59, "isGoogleCrashReportedAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x3

    goto :goto_4

    :sswitch_16
    const-string/jumbo v59, "isHeadPhoneEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x4

    goto :goto_4

    :sswitch_17
    const-string/jumbo v59, "isHomeKeyEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x5

    goto :goto_4

    :sswitch_18
    const-string/jumbo v59, "isKillingActivitiesOnLeaveAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x6

    goto :goto_4

    :sswitch_19
    const-string/jumbo v59, "isLockScreenEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x7

    goto/16 :goto_4

    :sswitch_1a
    const-string/jumbo v59, "isLockScreenViewAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x8

    goto/16 :goto_4

    :sswitch_1b
    const-string/jumbo v59, "isMicrophoneEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x9

    goto/16 :goto_4

    :sswitch_1c
    const-string/jumbo v59, "isMicrophoneEnabledAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0xa

    goto/16 :goto_4

    :sswitch_1d
    const-string/jumbo v59, "isMockLocationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0xb

    goto/16 :goto_4

    :sswitch_1e
    const-string/jumbo v59, "isNewAdminInstallationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0xc

    goto/16 :goto_4

    :sswitch_1f
    const-string/jumbo v59, "isNFCEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0xd

    goto/16 :goto_4

    :sswitch_20
    const-string/jumbo v59, "isNFCEnabledWithMsg"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0xe

    goto/16 :goto_4

    :sswitch_21
    const-string/jumbo v59, "isNonMarketAppAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0xf

    goto/16 :goto_4

    :sswitch_22
    const-string/jumbo v59, "isNonTrustedAppInstallBlocked"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_15

    const/16 v58, 0x10

    goto/16 :goto_4

    :pswitch_15
    if-eqz p4, :cond_16

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_17

    :cond_16
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_17
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareAutoUpdateAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isFirmwareAutoUpdateAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_5
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_16
    if-eqz p4, :cond_18

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_19

    :cond_18
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_19
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isFirmwareRecoveryAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isFirmwareRecoveryAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_5

    :pswitch_17
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleAccountsAutoSyncAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isGoogleAccountsAutoSyncAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_18
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isGoogleCrashReportAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isGoogleCrashReportedAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_19
    if-eqz p4, :cond_1a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_1b

    :cond_1a
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_1b
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHeadphoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isHeadPhoneEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1a
    const/4 v6, 0x0

    if-eqz p4, :cond_1c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_1c

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_1c
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isHomeKeyEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isHomeKeyEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1b
    if-nez p4, :cond_1d

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " callingUid : "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_6
    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isKillingActivitiesOnLeaveAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_1d
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v58 .. v59}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isKillingActivitiesOnLeaveAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isKillingActivitiesOnLeaveAllowed return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " userid : "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const/16 v60, 0x0

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :pswitch_1c
    if-eqz p4, :cond_1e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_1f

    :cond_1e
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_1f
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isLockScreenEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_1d
    if-eqz p4, :cond_20

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_21

    :cond_20
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_21
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_22

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v58 .. v59}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v48

    :goto_7
    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isLockScreenViewAllowed return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isLockScreenViewAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_22
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isLockScreenViewAllowed(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v48

    goto :goto_7

    :pswitch_1e
    if-eqz p4, :cond_23

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_24

    :cond_23
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_24
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_25

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v58 .. v59}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    :goto_8
    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isMicrophoneEnabled return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isMicrophoneEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_25
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    goto :goto_8

    :pswitch_1f
    if-eqz p4, :cond_26

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_27

    :cond_26
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_27
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    move-object/from16 v0, v35

    move/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMicrophoneEnabledAsUser(ZI)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isMicrophoneEnabledAsUser return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isMicrophoneEnabledAsUser"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_20
    if-nez p4, :cond_28

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "callingUid = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_9
    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isMockLocationEnabled return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isMockLocationEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_28
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v58 .. v59}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isMockLocationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "callingUid = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const/16 v60, 0x0

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_9

    :pswitch_21
    if-eqz p4, :cond_29

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_2a

    :cond_29
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_2a
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNewAdminInstallationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isNewAdminInstallationEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_22
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabled()Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isNFCEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_23
    const/16 v50, 0x0

    if-eqz p4, :cond_2b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_2c

    :cond_2b
    const/16 v50, 0x0

    :goto_a
    move-object/from16 v0, v35

    move/from16 v1, v50

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNFCEnabledWithMsg(Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isNFCEnabledWithMsg"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2c
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v50

    goto :goto_a

    :pswitch_24
    if-eqz p4, :cond_2d

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v58 .. v59}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    :goto_b
    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isNonMarketAppAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :cond_2d
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonMarketAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    goto :goto_b

    :pswitch_25
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isNonTrustedAppInstallBlocked(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isNonTrustedAppInstallBlocked"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_5

    :pswitch_26
    const-string/jumbo v58, "restriction_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v35, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_2

    :cond_2e
    :goto_c
    packed-switch v58, :pswitch_data_3

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_23
    const-string/jumbo v59, "isSettingsChangesAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0x0

    goto :goto_c

    :sswitch_24
    const-string/jumbo v59, "isShareListAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0x1

    goto :goto_c

    :sswitch_25
    const-string/jumbo v59, "isOdeTrustedBootVerificationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0x2

    goto :goto_c

    :sswitch_26
    const-string/jumbo v59, "isOTAUpgradeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0x3

    goto :goto_c

    :sswitch_27
    const-string/jumbo v59, "isPowerOffAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0x4

    goto :goto_c

    :sswitch_28
    const-string/jumbo v59, "isSafeModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0x5

    goto :goto_c

    :sswitch_29
    const-string/jumbo v59, "isSBeamAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0x6

    goto :goto_c

    :sswitch_2a
    const-string/jumbo v59, "isScreenCaptureEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0x7

    goto/16 :goto_c

    :sswitch_2b
    const-string/jumbo v59, "isSdCardEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0x8

    goto/16 :goto_c

    :sswitch_2c
    const-string/jumbo v59, "isSDCardMoveAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0x9

    goto/16 :goto_c

    :sswitch_2d
    const-string/jumbo v59, "isScreenPinningAllowedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0xa

    goto/16 :goto_c

    :sswitch_2e
    const-string/jumbo v59, "isSmartClipModeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0xb

    goto/16 :goto_c

    :sswitch_2f
    const-string/jumbo v59, "isStatusBarExpansionallowedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0xc

    goto/16 :goto_c

    :sswitch_30
    const-string/jumbo v59, "isStopSystemAppAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0xd

    goto/16 :goto_c

    :sswitch_31
    const-string/jumbo v59, "isSVoiceAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0xe

    goto/16 :goto_c

    :sswitch_32
    const-string/jumbo v59, "isUsbDebuggingEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_2e

    const/16 v58, 0xf

    goto/16 :goto_c

    :pswitch_27
    if-eqz p4, :cond_2f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_30

    :cond_2f
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_30
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_31

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v58 .. v59}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    :goto_d
    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSettingsChangesAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_e
    move-object/from16 v58, v43

    goto/16 :goto_0

    :cond_31
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSettingsChangesAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    goto :goto_d

    :pswitch_28
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_32

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    :goto_f
    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isShareListAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_e

    :cond_32
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isShareListAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    goto :goto_f

    :pswitch_29
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isODETrustedBootVerificationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isOdeTrustedBootVerificationEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_2a
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isOTAUpgradeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isOTAUpgradeAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_2b
    const/4 v6, 0x0

    if-eqz p4, :cond_33

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_33

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_33
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isPowerOffAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isPowerOffAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_2c
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSafeModeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSafeModeAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_2d
    const/4 v6, 0x0

    if-eqz p4, :cond_34

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_34

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_34
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSBeamAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSBeamAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_2e
    if-eqz p4, :cond_35

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_36

    :cond_35
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_36
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenCaptureEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isScreenCaptureEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_2f
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSdCardEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSdCardEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_30
    if-eqz p4, :cond_37

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_38

    :cond_37
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_38
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardMoveAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSDCardMoveAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_31
    const/4 v6, 0x0

    move/from16 v55, v56

    if-eqz p4, :cond_39

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_39

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_39
    if-eqz p4, :cond_3a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_3a

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v55

    :cond_3a
    move-object/from16 v0, v35

    move/from16 v1, v55

    invoke-virtual {v0, v6, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isScreenPinningAllowedAsUser(ZI)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isScreenPinningAllowedAsUser"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_32
    const/4 v6, 0x0

    if-eqz p4, :cond_3b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_3b

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_3b
    move-object/from16 v0, v35

    invoke-virtual {v0, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSmartClipModeAllowedInternal(Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSmartClipModeAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_33
    const/4 v6, 0x0

    if-eqz p4, :cond_3c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_3c

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_3c
    move-object/from16 v0, v35

    move/from16 v1, v56

    invoke-virtual {v0, v6, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStatusBarExpansionAllowedAsUser(ZI)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isStatusBarExpansionallowedAsUser"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_34
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isStopSystemAppAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isStopSystemAppAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_35
    const/4 v6, 0x0

    move/from16 v53, v19

    if-eqz p4, :cond_3e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_3e

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_3d
    :goto_10
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v53

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSVoiceAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isSVoiceAllowed result = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    const-string v60, " uid = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v53

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSVoiceAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :cond_3e
    if-eqz p4, :cond_3d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_3d

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v53

    goto/16 :goto_10

    :pswitch_36
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbDebuggingEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isUsbDebuggingEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_e

    :pswitch_37
    const-string/jumbo v58, "restriction_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/android/server/enterprise/restriction/RestrictionPolicy;

    if-eqz v35, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_3

    :cond_3f
    :goto_11
    packed-switch v58, :pswitch_data_4

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_33
    const-string/jumbo v59, "isUsbHostStorageAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0x0

    goto :goto_11

    :sswitch_34
    const-string/jumbo v59, "isUsbMassStorageEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0x1

    goto :goto_11

    :sswitch_35
    const-string/jumbo v59, "isUsbMediaPlayerAvailable"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0x2

    goto :goto_11

    :sswitch_36
    const-string/jumbo v59, "isUsbTetheringEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0x3

    goto :goto_11

    :sswitch_37
    const-string/jumbo v59, "isUserMobileDataLimitAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0x4

    goto :goto_11

    :sswitch_38
    const-string/jumbo v59, "isUseSecureKeypadEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0x5

    goto :goto_11

    :sswitch_39
    const-string/jumbo v59, "isVideoRecordAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0x6

    goto :goto_11

    :sswitch_3a
    const-string/jumbo v59, "isVpnAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0x7

    goto/16 :goto_11

    :sswitch_3b
    const-string/jumbo v59, "isWallpaperChangeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0x8

    goto/16 :goto_11

    :sswitch_3c
    const-string/jumbo v59, "isWifiDirectAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0x9

    goto/16 :goto_11

    :sswitch_3d
    const-string/jumbo v59, "isWifiTetheringEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0xa

    goto/16 :goto_11

    :sswitch_3e
    const-string/jumbo v59, "isSDCardWriteAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0xb

    goto/16 :goto_11

    :sswitch_3f
    const-string/jumbo v59, "isWifiEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_3f

    const/16 v58, 0xc

    goto/16 :goto_11

    :pswitch_38
    const/4 v6, 0x0

    if-eqz p4, :cond_40

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_40

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_40
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbHostStorageAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isUsbHostStorageAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_12
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_39
    if-eqz p4, :cond_41

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_42

    :cond_41
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_42
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMassStorageEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isUsbMassStorageEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_12

    :pswitch_3a
    if-eqz p4, :cond_43

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_44

    :cond_43
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_44
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbMediaPlayerAvailable(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isUsbMediaPlayerAvailable"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3b
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUsbTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isUsbTetheringEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3c
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUserMobileDataLimitAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isUserMobileDataLimitAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3d
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isUseSecureKeypadEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isUseSecureKeypadEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3e
    const/4 v6, 0x0

    if-eqz p4, :cond_45

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_45

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_45
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVideoRecordAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isVideoRecordAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_3f
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isVpnAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isVpnAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_40
    const/4 v6, 0x0

    if-eqz p4, :cond_46

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_46

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_46
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWallpaperChangeAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isWallpaperChangeAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_41
    const/4 v6, 0x0

    if-eqz p4, :cond_47

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-lez v58, :cond_47

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_47
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1, v6}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiDirectAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isWifiDirectAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_42
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isWifiTetheringEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isWifiTetheringEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_43
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v35

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RestrictionPolicy;->isSDCardWriteAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSDCardWriteAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :pswitch_44
    const-string/jumbo v58, "wifi_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v39

    check-cast v39, Lcom/android/server/enterprise/wifi/WifiPolicy;

    if-eqz v39, :cond_48

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v39

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/wifi/WifiPolicy;->isWifiAllowed(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isWifiEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_12

    :cond_48
    const/16 v58, 0x0

    goto/16 :goto_0

    :pswitch_45
    const-string v58, "certificate_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v30

    check-cast v30, Lcom/android/server/enterprise/certificate/CertificatePolicy;

    if-eqz v30, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_4

    :cond_49
    :goto_13
    packed-switch v58, :pswitch_data_5

    :cond_4a
    :goto_14
    move-object/from16 v58, v43

    goto/16 :goto_0

    :sswitch_40
    const-string/jumbo v59, "isCaCertificateTrusted"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0x0

    goto :goto_13

    :sswitch_41
    const-string/jumbo v59, "isCaCertificateDisabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0x1

    goto :goto_13

    :sswitch_42
    const-string/jumbo v59, "isUserRemoveCertificatesAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0x2

    goto :goto_13

    :sswitch_43
    const-string/jumbo v59, "isSignatureIdentityInformationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0x3

    goto :goto_13

    :sswitch_44
    const-string/jumbo v59, "getIdentitiesFromSignatures"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0x4

    goto :goto_13

    :sswitch_45
    const-string/jumbo v59, "notifyCertificateFailure"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0x5

    goto :goto_13

    :sswitch_46
    const-string/jumbo v59, "isRevocationCheckEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0x6

    goto :goto_13

    :sswitch_47
    const-string/jumbo v59, "isOcspCheckEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0x7

    goto/16 :goto_13

    :sswitch_48
    const-string/jumbo v59, "isCertificateValidationAtInstallEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0x8

    goto/16 :goto_13

    :sswitch_49
    const-string/jumbo v59, "validateCertificateAtInstall"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0x9

    goto/16 :goto_13

    :sswitch_4a
    const-string/jumbo v59, "validateChainAtInstall"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0xa

    goto/16 :goto_13

    :sswitch_4b
    const-string/jumbo v59, "isPrivateKeyApplicationPermitted"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_49

    const/16 v58, 0xb

    goto/16 :goto_13

    :pswitch_46
    if-eqz p4, :cond_4b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-gt v0, v1, :cond_4c

    :cond_4b
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_4c
    new-instance v59, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v59

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/app/enterprise/CertificateInfo;

    const/16 v60, 0x1

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v60

    move-object/from16 v0, v30

    move-object/from16 v1, v59

    move-object/from16 v2, v58

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateTrusted(Landroid/app/enterprise/ContextInfo;Landroid/app/enterprise/CertificateInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isCaCertificateTrusted"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_47
    if-eqz p4, :cond_4d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_4e

    :cond_4d
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_4e
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCaCertificateDisabled(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isCaCertificateDisabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_48
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isUserRemoveCertificatesAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isUserRemoveCertificatesAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_49
    if-eqz p4, :cond_4f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_50

    :cond_4f
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_50
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isSignatureIdentityInformationEnabled(Landroid/app/enterprise/ContextInfo;Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSignatureIdentityInformationEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_4a
    if-eqz p4, :cond_51

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_52

    :cond_51
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_52
    new-instance v59, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v59

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, [Landroid/content/pm/Signature;

    check-cast v58, [Landroid/content/pm/Signature;

    move-object/from16 v0, v30

    move-object/from16 v1, v59

    move-object/from16 v2, v58

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->getIdentitiesFromSignatures(Landroid/app/enterprise/ContextInfo;[Landroid/content/pm/Signature;)Ljava/util/List;

    move-result-object v42

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getIdentitiesFromSignatures"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v42, :cond_4a

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->isEmpty()Z

    move-result v58

    if-nez v58, :cond_4a

    invoke-interface/range {v42 .. v42}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_53
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v58

    if-eqz v58, :cond_4a

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, [Ljava/lang/String;

    move-object/from16 v7, v57

    array-length v0, v7

    move/from16 v40, v0

    const/16 v24, 0x0

    :goto_15
    move/from16 v0, v24

    move/from16 v1, v40

    if-ge v0, v1, :cond_53

    aget-object v25, v7, v24

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v25, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v24, v24, 0x1

    goto :goto_15

    :pswitch_4b
    if-eqz p4, :cond_54

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-gt v0, v1, :cond_55

    :cond_54
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_55
    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    const/16 v60, 0x2

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v60

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->notifyCertificateFailure(Ljava/lang/String;Ljava/lang/String;Z)V

    const/16 v43, 0x0

    goto/16 :goto_14

    :pswitch_4c
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isRevocationCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isRevocationCheckEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_4d
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isOcspCheckEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isOcspCheckEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_4e
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isCertificateValidationAtInstallEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isCertificateValidationAtInstallEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_4f
    if-eqz p4, :cond_56

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_57

    :cond_56
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_57
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Landroid/app/enterprise/CertificateInfo;

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateCertificateAtInstall(Landroid/app/enterprise/CertificateInfo;)I

    move-result v47

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "validateCertificateAtInstall"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_50
    if-eqz p4, :cond_58

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_59

    :cond_58
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_59
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v58

    check-cast v58, Ljava/util/List;

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->validateChainAtInstall(Ljava/util/List;)I

    move-result v47

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "validateChainAtInstall"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_51
    if-eqz p4, :cond_5a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-gt v0, v1, :cond_5b

    :cond_5a
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_5b
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    const/16 v60, 0x1

    aget-object v60, p4, v60

    const/16 v61, 0x2

    aget-object v61, p4, v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    move-object/from16 v0, v30

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    move/from16 v4, v61

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/enterprise/certificate/CertificatePolicy;->isPrivateKeyApplicationPermitted(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v52

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isPrivateKeyApplicationPermitted"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v52, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_14

    :pswitch_52
    const-string/jumbo v58, "password_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v34, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_5

    :cond_5c
    :goto_16
    packed-switch v58, :pswitch_data_6

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_4c
    const-string/jumbo v59, "getForbiddenStrings"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0x0

    goto :goto_16

    :sswitch_4d
    const-string/jumbo v59, "getMaximumCharacterOccurences"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0x1

    goto :goto_16

    :sswitch_4e
    const-string/jumbo v59, "getMaximumCharacterSequenceLength"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0x2

    goto :goto_16

    :sswitch_4f
    const-string/jumbo v59, "getMaximumNumericSequenceLength"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0x3

    goto :goto_16

    :sswitch_50
    const-string/jumbo v59, "getMinimumCharacterChangeLength"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0x4

    goto :goto_16

    :sswitch_51
    const-string/jumbo v59, "getPasswordChangeTimeout"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0x5

    goto :goto_16

    :sswitch_52
    const-string/jumbo v59, "getRequiredPwdPatternRestrictions"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0x6

    goto :goto_16

    :sswitch_53
    const-string/jumbo v59, "hasForbiddenCharacterSequence"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0x7

    goto/16 :goto_16

    :sswitch_54
    const-string/jumbo v59, "hasForbiddenData"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0x8

    goto/16 :goto_16

    :sswitch_55
    const-string/jumbo v59, "hasForbiddenNumericSequence"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0x9

    goto/16 :goto_16

    :sswitch_56
    const-string/jumbo v59, "hasForbiddenStringDistance"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0xa

    goto/16 :goto_16

    :sswitch_57
    const-string/jumbo v59, "hasMaxRepeatedCharacters"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_5c

    const/16 v58, 0xb

    goto/16 :goto_16

    :pswitch_53
    if-eqz p4, :cond_5d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_5e

    :cond_5d
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_5e
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getForbiddenStrings(Landroid/app/enterprise/ContextInfo;Z)Ljava/util/List;

    move-result-object v41

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getForbiddenStrings"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v41, :cond_5f

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->isEmpty()Z

    move-result v58

    if-nez v58, :cond_5f

    invoke-interface/range {v41 .. v41}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_17
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v58

    if-eqz v58, :cond_5f

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v57

    check-cast v57, Ljava/lang/String;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v57, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_17

    :pswitch_54
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterOccurences(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getMaximumCharacterOccurences"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_5f
    :goto_18
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_55
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumCharacterSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getMaximumCharacterSequenceLength"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_18

    :pswitch_56
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumNumericSequenceLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getMaximumNumericSequenceLength"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_57
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMinimumCharacterChangeLength(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getMinimumCharacterChangeLength"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_58
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordChangeTimeout(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getPasswordChangeTimeout"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_59
    if-eqz p4, :cond_60

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_61

    :cond_60
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_61
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v59

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getRequiredPwdPatternRestrictions(Landroid/app/enterprise/ContextInfo;Z)Ljava/lang/String;

    move-result-object v51

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getRequiredPwdPatternRestrictions"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v51, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_5a
    if-eqz p4, :cond_62

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_63

    :cond_62
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_63
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenCharacterSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "hasForbiddenCharacterSequence"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_5b
    if-eqz p4, :cond_64

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_65

    :cond_64
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_65
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenData(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "hasForbiddenData"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_5c
    if-eqz p4, :cond_66

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_67

    :cond_66
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_67
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenNumericSequence(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "hasForbiddenNumericSequence"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_5d
    if-eqz p4, :cond_68

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-gt v0, v1, :cond_69

    :cond_68
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_69
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    const/16 v60, 0x1

    aget-object v60, p4, v60

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasForbiddenStringDistance(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "hasForbiddenStringDistance"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_5e
    if-eqz p4, :cond_6a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_6b

    :cond_6a
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_6b
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->hasMaxRepeatedCharacters(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "hasMaxRepeatedCharacters"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_18

    :pswitch_5f
    const-string/jumbo v58, "password_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Lcom/android/server/enterprise/security/PasswordPolicy;

    if-eqz v34, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_6

    :cond_6c
    :goto_19
    packed-switch v58, :pswitch_data_7

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_58
    const-string/jumbo v59, "isBiometricAuthenticationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6c

    const/16 v58, 0x0

    goto :goto_19

    :sswitch_59
    const-string/jumbo v59, "isChangeRequested"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6c

    const/16 v58, 0x1

    goto :goto_19

    :sswitch_5a
    const-string/jumbo v59, "isExternalStorageForFailedPasswordsWipeExcluded"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6c

    const/16 v58, 0x2

    goto :goto_19

    :sswitch_5b
    const-string/jumbo v59, "isPasswordPatternMatched"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6c

    const/16 v58, 0x3

    goto :goto_19

    :sswitch_5c
    const-string/jumbo v59, "isPasswordVisibilityEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6c

    const/16 v58, 0x4

    goto :goto_19

    :sswitch_5d
    const-string/jumbo v59, "isPasswordVisibilityEnabledAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6c

    const/16 v58, 0x5

    goto :goto_19

    :sswitch_5e
    const-string/jumbo v59, "getPasswordLockDelay"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6c

    const/16 v58, 0x6

    goto :goto_19

    :sswitch_5f
    const-string/jumbo v59, "getMaximumFailedPasswordsForDisable"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6c

    const/16 v58, 0x7

    goto/16 :goto_19

    :sswitch_60
    const-string/jumbo v59, "getMaximumFailedPasswordsForWipe"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_6c

    const/16 v58, 0x8

    goto/16 :goto_19

    :pswitch_60
    if-eqz p4, :cond_6d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_6e

    :cond_6d
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_6e
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isBiometricAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isBiometricAuthenticationEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_1a
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_61
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isChangeRequested(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isChangeRequested"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_1a

    :pswitch_62
    if-eqz p4, :cond_6f

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD user id = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const/16 v60, 0x0

    aget-object v60, p4, v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v58 .. v59}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    :goto_1b
    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "PASSWORDPOLICY_EXTERNALSTORAGEFORFAILEDPASSWORDSWIPE_METHOD return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isExternalStorageForFailedPasswordsWipeExcluded"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_6f
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isExternalStorageForFailedPasswordsWipeExcluded(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    goto :goto_1b

    :pswitch_63
    if-eqz p4, :cond_70

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_71

    :cond_70
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_71
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordPatternMatched(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isPasswordPatternMatched"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_64
    if-nez p4, :cond_72

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1c
    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isPasswordVisibilityEnabled return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isPasswordVisibilityEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_72
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v58 .. v59}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isPasswordVisibilityEnabled callingUid = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const/16 v60, 0x0

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1c

    :pswitch_65
    if-eqz p4, :cond_73

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_74

    :cond_73
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_74
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    move-object/from16 v0, v34

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->isPasswordVisibilityEnabledAsUser(I)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isPasswordVisibilityEnabledAsUser return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isPasswordVisibilityEnabledAsUser"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_66
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getPasswordLockDelay(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getPasswordLockDelay"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a

    :pswitch_67
    if-eqz p4, :cond_75

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD user id = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const/16 v60, 0x0

    aget-object v60, p4, v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v58 .. v59}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    :goto_1d
    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORDISABLE_METHOD return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getMaximumFailedPasswordsForDisable"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_75
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForDisable(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    goto :goto_1d

    :pswitch_68
    if-eqz p4, :cond_76

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_77

    :cond_76
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_77
    const/16 v58, 0x0

    aget-object v58, p4, v58

    if-nez v58, :cond_78

    const/16 v20, 0x0

    :goto_1e
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_79

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD user id = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    const/16 v60, 0x0

    aget-object v60, p4, v60

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-direct/range {v58 .. v59}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v47

    :goto_1f
    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "PASSWORDPOLICY_MAXIMUMFAILEDPASSWORDSFORWIPE_METHOD return = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getMaximumFailedPasswordsForWipe"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_1a

    :cond_78
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v20

    goto/16 :goto_1e

    :cond_79
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v34

    move-object/from16 v1, v58

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/security/PasswordPolicy;->getMaximumFailedPasswordsForWipe(Landroid/app/enterprise/ContextInfo;Landroid/content/ComponentName;)I

    move-result v47

    goto :goto_1f

    :pswitch_69
    const-string v58, "browser_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/enterprise/browser/BrowserPolicy;

    if-eqz v29, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_7

    :cond_7a
    :goto_20
    packed-switch v58, :pswitch_data_8

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_61
    const-string/jumbo v59, "getHttpProxy"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7a

    const/16 v58, 0x0

    goto :goto_20

    :sswitch_62
    const-string/jumbo v59, "getAutoFillSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7a

    const/16 v58, 0x1

    goto :goto_20

    :sswitch_63
    const-string/jumbo v59, "getCookiesSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7a

    const/16 v58, 0x2

    goto :goto_20

    :sswitch_64
    const-string/jumbo v59, "getJavaScriptSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7a

    const/16 v58, 0x3

    goto :goto_20

    :sswitch_65
    const-string/jumbo v59, "getPopupsSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7a

    const/16 v58, 0x4

    goto :goto_20

    :sswitch_66
    const-string/jumbo v59, "getForceFraudWarningSetting"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7a

    const/16 v58, 0x5

    goto :goto_20

    :pswitch_6a
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getHttpProxy(Landroid/app/enterprise/ContextInfo;)Ljava/lang/String;

    move-result-object v46

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getHttpProxy"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v46, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_21
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_6b
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x4

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v8

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getAutoFillSetting"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_21

    :pswitch_6c
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x2

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v9

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getCookiesSetting"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_6d
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x10

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v15

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getJavaScriptSetting"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_6e
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x1

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v16

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getPopupsSetting"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v16 .. v16}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_6f
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x8

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getBrowserSettingStatus(Landroid/app/enterprise/ContextInfo;I)Z

    move-result v10

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getForceFraudWarningSetting"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_21

    :pswitch_70
    const-string v58, "bluetooth_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v28

    check-cast v28, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;

    if-eqz v28, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_8

    :cond_7b
    :goto_22
    packed-switch v58, :pswitch_data_9

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_67
    const-string/jumbo v59, "isBluetoothEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7b

    const/16 v58, 0x0

    goto :goto_22

    :sswitch_68
    const-string/jumbo v59, "isBluetoothEnabledWithMsg"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7b

    const/16 v58, 0x1

    goto :goto_22

    :sswitch_69
    const-string/jumbo v59, "isOutgoingCallsAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7b

    const/16 v58, 0x2

    goto :goto_22

    :sswitch_6a
    const-string/jumbo v59, "isLimitedDiscoverableEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7b

    const/16 v58, 0x3

    goto :goto_22

    :sswitch_6b
    const-string/jumbo v59, "isDiscoverableEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7b

    const/16 v58, 0x4

    goto :goto_22

    :sswitch_6c
    const-string/jumbo v59, "isDesktopConnectivityEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7b

    const/16 v58, 0x5

    goto :goto_22

    :sswitch_6d
    const-string v59, "bluetoothLog"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7b

    const/16 v58, 0x6

    goto :goto_22

    :sswitch_6e
    const-string/jumbo v59, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_7b

    const/16 v58, 0x7

    goto/16 :goto_22

    :pswitch_71
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isBluetoothEnabled = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isBluetoothEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_23
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_72
    if-eqz p4, :cond_7c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_7d

    :cond_7c
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_7d
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v28

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothEnabledWithMsg(Z)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isBluetoothEnabled = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isBluetoothEnabledWithMsg"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_23

    :pswitch_73
    if-eqz p4, :cond_7e

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_7f

    :cond_7e
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_7f
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v28

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isOutgoingCallsAllowed(Z)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "isOutgoingCallsAllowed = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isOutgoingCallsAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    :pswitch_74
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isLimitedDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isLimitedDiscoverableEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    :pswitch_75
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDiscoverableEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isDiscoverableEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    :pswitch_76
    if-eqz p4, :cond_80

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_81

    :cond_80
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_81
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v58

    move-object/from16 v0, v28

    move/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isDesktopConnectivityEnabled(Z)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isDesktopConnectivityEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    :pswitch_77
    if-eqz p4, :cond_82

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_83

    :cond_82
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_83
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    const/16 v60, 0x1

    aget-object v60, p4, v60

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move-object/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->bluetoothLog(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string v60, "bluetoothLog"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    :pswitch_78
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v28

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/bluetooth/BluetoothPolicy;->isBluetoothLogEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isBluetoothLogEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_23

    :pswitch_79
    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_9

    :cond_84
    :goto_24
    packed-switch v58, :pswitch_data_a

    :goto_25
    move-object/from16 v58, v43

    goto/16 :goto_0

    :sswitch_6f
    const-string/jumbo v59, "isProfileAuthorizedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_84

    const/16 v58, 0x0

    goto :goto_24

    :sswitch_70
    const-string/jumbo v59, "isBluetoothLogEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_84

    const/16 v58, 0x1

    goto :goto_24

    :sswitch_71
    const-string/jumbo v59, "isPairingAllowedbySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_84

    const/16 v58, 0x2

    goto :goto_24

    :sswitch_72
    const-string/jumbo v59, "isHeadsetAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_84

    const/16 v58, 0x3

    goto :goto_24

    :sswitch_73
    const-string/jumbo v59, "isSocketAllowedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_84

    const/16 v58, 0x4

    goto :goto_24

    :sswitch_74
    const-string v59, "bluetoothSocketLog"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_84

    const/16 v58, 0x5

    goto :goto_24

    :sswitch_75
    const-string/jumbo v59, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_84

    const/16 v58, 0x6

    goto :goto_24

    :sswitch_76
    const-string v59, "bluetoothLog"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_84

    const/16 v58, 0x7

    goto/16 :goto_24

    :sswitch_77
    const-string v59, "bluetoothLogForRemote"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_84

    const/16 v58, 0x8

    goto/16 :goto_24

    :sswitch_78
    const-string v59, "bluetoothLogForDevice"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_84

    const/16 v58, 0x9

    goto/16 :goto_24

    :pswitch_7a
    if-eqz p4, :cond_85

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_86

    :cond_85
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_86
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Landroid/sec/enterprise/BluetoothUtils;->isProfileAuthorizedBySecurityPolicy(Landroid/os/ParcelUuid;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isProfileAuthorizedBySecurityPolicy"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    :pswitch_7b
    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isBluetoothLogEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    :pswitch_7c
    if-eqz p4, :cond_87

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_88

    :cond_87
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_88
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Landroid/sec/enterprise/BluetoothUtils;->isPairingAllowedbySecurityPolicy(Ljava/lang/String;)Z

    move-result v48

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string v60, "PAIRINGALLOWEDBYSECURITY = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isPairingAllowedbySecurityPolicy"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    :pswitch_7d
    if-eqz p4, :cond_89

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_8a

    :cond_89
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_8a
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-virtual/range {v58 .. v59}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v58

    invoke-static/range {v58 .. v58}, Landroid/sec/enterprise/BluetoothUtils;->isHeadsetAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isHeadsetAllowedBySecurityPolicy"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    :pswitch_7e
    if-eqz p4, :cond_8b

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x3

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_8c

    :cond_8b
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_8c
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v58

    const/16 v59, 0x0

    aget-object v59, p4, v59

    invoke-virtual/range {v58 .. v59}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    const/16 v60, 0x2

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    const/16 v61, 0x3

    aget-object v61, p4, v61

    invoke-static/range {v61 .. v61}, Landroid/os/ParcelUuid;->fromString(Ljava/lang/String;)Landroid/os/ParcelUuid;

    move-result-object v61

    invoke-static/range {v58 .. v61}, Landroid/sec/enterprise/BluetoothUtils;->isSocketAllowedBySecurityPolicy(Landroid/bluetooth/BluetoothDevice;IILandroid/os/ParcelUuid;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSocketAllowedBySecurityPolicy"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    :pswitch_7f
    if-eqz p4, :cond_8d

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x3

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_8e

    :cond_8d
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_8e
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v59

    const/16 v60, 0x1

    aget-object v60, p4, v60

    invoke-virtual/range {v59 .. v60}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v59

    const/16 v60, 0x2

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    const/16 v61, 0x3

    aget-object v61, p4, v61

    invoke-static/range {v61 .. v61}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v61

    invoke-static/range {v58 .. v61}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothSocketLog(Ljava/lang/String;Landroid/bluetooth/BluetoothDevice;II)V

    goto/16 :goto_25

    :pswitch_80
    if-eqz p4, :cond_8f

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_90

    :cond_8f
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_90
    const/16 v58, 0x0

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v58

    invoke-static/range {v58 .. v58}, Landroid/sec/enterprise/BluetoothUtils;->isSvcRfComPortNumberBlockedBySecurityPolicy(I)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isSvcRfComPortNumberBlockedBySecurityPolicy"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_25

    :pswitch_81
    if-eqz p4, :cond_91

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-lt v0, v1, :cond_91

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v58

    if-nez v58, :cond_92

    :cond_91
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_92
    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v58 .. v59}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25

    :pswitch_82
    if-eqz p4, :cond_93

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x3

    move/from16 v0, v58

    move/from16 v1, v59

    if-lt v0, v1, :cond_93

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v58

    if-nez v58, :cond_94

    :cond_93
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_94
    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    const/16 v60, 0x2

    aget-object v60, p4, v60

    invoke-static/range {v58 .. v60}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_25

    :pswitch_83
    if-eqz p4, :cond_95

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x3

    move/from16 v0, v58

    move/from16 v1, v59

    if-lt v0, v1, :cond_95

    invoke-static {}, Landroid/sec/enterprise/BluetoothUtils;->isBluetoothLogEnabled()Z

    move-result v58

    if-nez v58, :cond_96

    :cond_95
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_96
    const/16 v58, 0x2

    aget-object v58, p4, v58

    if-nez v58, :cond_97

    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    const/16 v60, 0x0

    invoke-static/range {v58 .. v60}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_25

    :cond_97
    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v60

    const/16 v61, 0x2

    aget-object v61, p4, v61

    invoke-virtual/range {v60 .. v61}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v60

    invoke-static/range {v58 .. v60}, Landroid/sec/enterprise/BluetoothUtils;->bluetoothLog(Ljava/lang/String;ILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_25

    :pswitch_84
    const-string/jumbo v58, "roaming_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v36

    check-cast v36, Lcom/android/server/enterprise/restriction/RoamingPolicy;

    if-eqz v36, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_a

    :cond_98
    :goto_26
    packed-switch v58, :pswitch_data_b

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_79
    const-string/jumbo v59, "isRoamingSyncEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_98

    const/16 v58, 0x0

    goto :goto_26

    :sswitch_7a
    const-string/jumbo v59, "isRoamingPushEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_98

    const/16 v58, 0x1

    goto :goto_26

    :sswitch_7b
    const-string/jumbo v59, "isRoamingDataEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_98

    const/16 v58, 0x2

    goto :goto_26

    :sswitch_7c
    const-string/jumbo v59, "isRoamingVoiceCallsEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_98

    const/16 v58, 0x3

    goto :goto_26

    :pswitch_85
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingSyncEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isRoamingSyncEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_27
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_86
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingPushEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isRoamingPushEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_27

    :pswitch_87
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingDataEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isRoamingDataEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    :pswitch_88
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v36

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/restriction/RoamingPolicy;->isRoamingVoiceCallsEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isRoamingVoiceCallsEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_27

    :pswitch_89
    const-string/jumbo v58, "location_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Lcom/android/server/enterprise/location/LocationPolicy;

    if-eqz v32, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_b

    :cond_99
    :goto_28
    packed-switch v58, :pswitch_data_c

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_7d
    const-string/jumbo v59, "isLocationProviderBlocked"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_99

    const/16 v58, 0x0

    goto :goto_28

    :sswitch_7e
    const-string/jumbo v59, "isLocationProviderBlockedAsUser"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_99

    const/16 v58, 0x1

    goto :goto_28

    :sswitch_7f
    const-string/jumbo v59, "isGPSStateChangeAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_99

    const/16 v58, 0x2

    goto :goto_28

    :pswitch_8a
    if-eqz p4, :cond_9a

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_9b

    :cond_9a
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_9b
    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlocked(Ljava/lang/String;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isLocationProviderBlocked"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_29
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_8b
    if-eqz p4, :cond_9c

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-ge v0, v1, :cond_9d

    :cond_9c
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_9d
    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x2

    move/from16 v0, v58

    move/from16 v1, v59

    if-ne v0, v1, :cond_9e

    const/16 v58, 0x0

    aget-object v58, p4, v58

    const/16 v59, 0x1

    aget-object v59, p4, v59

    invoke-static/range {v59 .. v59}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v59

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    move/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v48

    :goto_2a
    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isLocationProviderBlockedAsUser"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_29

    :cond_9e
    const/16 v58, 0x0

    aget-object v58, p4, v58

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    move/from16 v2, v56

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/location/LocationPolicy;->isLocationProviderBlockedAsUser(Ljava/lang/String;I)Z

    move-result v48

    goto :goto_2a

    :pswitch_8c
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v32

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/location/LocationPolicy;->isGPSStateChangeAllowed(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isGPSStateChangeAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_29

    :pswitch_8d
    const-string v58, "auditlog"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v27

    check-cast v27, Lcom/android/server/enterprise/auditlog/AuditLogService;

    if-eqz v27, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v58, "isAuditLogEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_0

    move-object/from16 v0, v27

    move/from16 v1, v56

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/auditlog/AuditLogService;->isAuditLogEnabledAsUser(I)Z

    move-result v13

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isAuditLogEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_8e
    const-string/jumbo v58, "smartcard_browser_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v38

    check-cast v38, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;

    if-eqz v38, :cond_0

    if-eqz p3, :cond_9f

    const-string/jumbo v58, "isAuthenticationEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_9f

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v38

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->isAuthenticationEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v14

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isAuthenticationEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v58, v43

    goto/16 :goto_0

    :cond_9f
    if-eqz p3, :cond_0

    const-string/jumbo v58, "getClientCertificateAlias"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_0

    if-eqz p4, :cond_a0

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_a1

    :cond_a0
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_a1
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    const/16 v60, 0x1

    aget-object v60, p4, v60

    invoke-static/range {v60 .. v60}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v60

    move-object/from16 v0, v38

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/smartcard/SmartCardBrowserPolicy;->getClientCertificateAlias(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v49

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getClientCertificateAlias"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v49, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_8f
    const-string/jumbo v58, "security_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v37

    check-cast v37, Lcom/android/server/enterprise/security/SecurityPolicy;

    if-eqz v37, :cond_0

    if-eqz p3, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_c

    :cond_a2
    :goto_2b
    packed-switch v58, :pswitch_data_d

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_80
    const-string/jumbo v59, "isDodBannerVisible"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_a2

    const/16 v58, 0x0

    goto :goto_2b

    :sswitch_81
    const-string/jumbo v59, "getCredentialStorageStatus"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_a2

    const/16 v58, 0x1

    goto :goto_2b

    :pswitch_90
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->isDodBannerVisible(Landroid/app/enterprise/ContextInfo;)Z

    move-result v21

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isDodBannerVisible"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v21 .. v21}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :goto_2c
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_91
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v37

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/security/SecurityPolicy;->getCredentialStorageStatus(Landroid/app/enterprise/ContextInfo;)I

    move-result v47

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object p3, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Integer;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v47 .. v47}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    const-string v58, "SecContentProvider"

    new-instance v59, Ljava/lang/StringBuilder;

    invoke-direct/range {v59 .. v59}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v60, "getCredentialStorageStatus = "

    invoke-virtual/range {v59 .. v60}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v59

    move-object/from16 v0, v59

    move/from16 v1, v47

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v59

    invoke-virtual/range {v59 .. v59}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v59

    invoke-static/range {v58 .. v59}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c

    :pswitch_92
    const-string v58, "browser_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v29

    check-cast v29, Lcom/android/server/enterprise/browser/BrowserPolicy;

    const-string/jumbo v58, "misc_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v33

    check-cast v33, Lcom/android/server/enterprise/general/MiscPolicy;

    if-eqz v29, :cond_0

    if-eqz p3, :cond_0

    if-eqz v33, :cond_0

    const/16 v58, -0x1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->hashCode()I

    move-result v59

    sparse-switch v59, :sswitch_data_d

    :cond_a3
    :goto_2d
    packed-switch v58, :pswitch_data_e

    const/16 v58, 0x0

    goto/16 :goto_0

    :sswitch_82
    const-string/jumbo v59, "getURLFilterEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_a3

    const/16 v58, 0x0

    goto :goto_2d

    :sswitch_83
    const-string/jumbo v59, "getURLFilterList"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_a3

    const/16 v58, 0x1

    goto :goto_2d

    :sswitch_84
    const-string/jumbo v59, "getURLFilterReportEnabled"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_a3

    const/16 v58, 0x2

    goto :goto_2d

    :sswitch_85
    const-string/jumbo v59, "isUrlBlocked"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_a3

    const/16 v58, 0x3

    goto :goto_2d

    :sswitch_86
    const-string/jumbo v59, "isGlobalProxyAllowed"

    move-object/from16 v0, p3

    move-object/from16 v1, v59

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v59

    if-eqz v59, :cond_a3

    const/16 v58, 0x4

    goto :goto_2d

    :pswitch_93
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x1

    const/16 v60, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v11

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getURLFilterEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_a4
    :goto_2e
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_94
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x1

    const/16 v60, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterListEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Ljava/util/List;

    move-result-object v54

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getURLFilterList"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v54, :cond_a4

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->isEmpty()Z

    move-result v58

    if-nez v58, :cond_a4

    invoke-interface/range {v54 .. v54}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_2f
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v58

    if-eqz v58, :cond_a4

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v22, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_2f

    :pswitch_95
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x1

    const/16 v60, 0x0

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    move/from16 v2, v59

    move/from16 v3, v60

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/enterprise/browser/BrowserPolicy;->getURLFilterReportEnabledEnforcingFirewallPermission(Landroid/app/enterprise/ContextInfo;ZZ)Z

    move-result v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getURLFilterReportEnabled"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v18, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2e

    :pswitch_96
    if-eqz p4, :cond_a5

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_a6

    :cond_a5
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_a6
    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    move-object/from16 v0, v29

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2}, Lcom/android/server/enterprise/browser/BrowserPolicy;->isUrlBlocked(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;)Z

    move-result v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isUrlBlocked"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v17, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2e

    :pswitch_97
    if-eqz p4, :cond_a7

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    if-gtz v58, :cond_a8

    :cond_a7
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_a8
    invoke-virtual/range {v33 .. v33}, Lcom/android/server/enterprise/general/MiscPolicy;->isGlobalProxyAllowed()Z

    move-result v58

    invoke-static/range {v58 .. v58}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isGlobalProxyAllowed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v12, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto/16 :goto_2e

    :pswitch_98
    const-string v58, "apppermission_control_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;

    if-eqz v26, :cond_0

    if-eqz p3, :cond_0

    if-eqz p4, :cond_a9

    invoke-static/range {p4 .. p4}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v58

    const/16 v59, 0x1

    move/from16 v0, v58

    move/from16 v1, v59

    if-gt v0, v1, :cond_aa

    :cond_a9
    const/16 v58, 0x0

    goto/16 :goto_0

    :cond_aa
    const-string/jumbo v58, "getPermissionBlockedList"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/16 v58, 0x1

    aget-object v58, p4, v58

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/utils/Utils;->deserializeObjectFromString(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    const/16 v59, 0x0

    aget-object v59, p4, v59

    move-object/from16 v0, v26

    move-object/from16 v1, v58

    move-object/from16 v2, v59

    invoke-virtual {v0, v1, v2, v5}, Lcom/android/server/enterprise/application/ApplicationPermissionControlPolicy;->getPermissionBlockedList(Landroid/app/enterprise/ContextInfo;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;

    move-result-object v45

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "getPermissionBlockedList"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz v45, :cond_ab

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->isEmpty()Z

    move-result v58

    if-nez v58, :cond_ab

    invoke-interface/range {v45 .. v45}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :goto_30
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v58

    if-eqz v58, :cond_ab

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v44

    check-cast v44, Ljava/lang/String;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    aput-object v44, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    goto :goto_30

    :cond_ab
    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_99
    const-string v58, "date_time_policy"

    invoke-static/range {v58 .. v58}, Lcom/android/server/enterprise/EnterpriseDeviceManagerService;->getPolicyService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v31

    check-cast v31, Lcom/android/server/enterprise/datetime/DateTimePolicy;

    if-eqz v31, :cond_0

    if-eqz p3, :cond_0

    const-string/jumbo v58, "isDateTimeChangeEnalbed"

    move-object/from16 v0, p3

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v58

    if-eqz v58, :cond_0

    new-instance v58, Landroid/app/enterprise/ContextInfo;

    move-object/from16 v0, v58

    move/from16 v1, v19

    invoke-direct {v0, v1}, Landroid/app/enterprise/ContextInfo;-><init>(I)V

    move-object/from16 v0, v31

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/datetime/DateTimePolicy;->isDateTimeChangeEnabled(Landroid/app/enterprise/ContextInfo;)Z

    move-result v48

    new-instance v43, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    const-string/jumbo v60, "isDateTimeChangeEnalbed"

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-direct {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;-><init>([Ljava/lang/String;)V

    const/16 v58, 0x1

    move/from16 v0, v58

    new-array v0, v0, [Ljava/lang/Boolean;

    move-object/from16 v58, v0

    const/16 v59, 0x0

    invoke-static/range {v48 .. v48}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v60

    aput-object v60, v58, v59

    move-object/from16 v0, v43

    move-object/from16 v1, v58

    invoke-virtual {v0, v1}, Lcom/android/server/enterprise/content/EnterpriseMatrixCursor;->addRow([Ljava/lang/Object;)V

    move-object/from16 v58, v43

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_8d
        :pswitch_70
        :pswitch_79
        :pswitch_69
        :pswitch_45
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_92
        :pswitch_0
        :pswitch_89
        :pswitch_52
        :pswitch_5f
        :pswitch_1
        :pswitch_14
        :pswitch_26
        :pswitch_37
        :pswitch_84
        :pswitch_8f
        :pswitch_0
        :pswitch_8e
        :pswitch_98
        :pswitch_99
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        -0x5d9fe8ab -> :sswitch_8
        -0x5c7edb84 -> :sswitch_b
        -0x4bfd3947 -> :sswitch_c
        -0x38cefab6 -> :sswitch_a
        -0x36978d55 -> :sswitch_4
        -0x34742384 -> :sswitch_7
        -0x2d47f4e1 -> :sswitch_5
        -0x2b582cae -> :sswitch_9
        0x3e05fd -> :sswitch_6
        0x7ed85f2 -> :sswitch_d
        0x2ea4b8a5 -> :sswitch_f
        0x3593cbd4 -> :sswitch_3
        0x3d337bfd -> :sswitch_1
        0x4ef9c1f9 -> :sswitch_10
        0x64034c9f -> :sswitch_11
        0x71560275 -> :sswitch_e
        0x77163a49 -> :sswitch_2
        0x7e3d73d9 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
    .end packed-switch

    :sswitch_data_1
    .sparse-switch
        -0x74a4d725 -> :sswitch_20
        -0x71206782 -> :sswitch_22
        -0x6c0db8af -> :sswitch_15
        -0x694bd3d6 -> :sswitch_1c
        -0x553c4d53 -> :sswitch_1b
        -0x4d525a40 -> :sswitch_19
        -0x4406e5f2 -> :sswitch_1e
        -0x39e13355 -> :sswitch_12
        -0x2de531be -> :sswitch_1a
        -0x1ab59b72 -> :sswitch_13
        -0xa2586fa -> :sswitch_21
        0x5ad79eb -> :sswitch_17
        0x5be9d3d -> :sswitch_16
        0x26581d58 -> :sswitch_1d
        0x36e6d3e0 -> :sswitch_1f
        0x4bd14915 -> :sswitch_14
        0x6c3b6517 -> :sswitch_18
    .end sparse-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch

    :sswitch_data_2
    .sparse-switch
        -0x6c43a0eb -> :sswitch_24
        -0x5eef4930 -> :sswitch_29
        -0x57f5d70e -> :sswitch_2d
        -0x55af2a6c -> :sswitch_27
        -0x42b9a7be -> :sswitch_30
        -0x3d0295e2 -> :sswitch_26
        -0x331a660a -> :sswitch_2b
        -0x1ad99baa -> :sswitch_2e
        -0x10b8615d -> :sswitch_25
        -0x53b1dd2 -> :sswitch_28
        0x3e90c48d -> :sswitch_32
        0x405a90ec -> :sswitch_2c
        0x53ef861d -> :sswitch_2f
        0x5bb25232 -> :sswitch_23
        0x6bef28f1 -> :sswitch_2a
        0x7c45f31f -> :sswitch_31
    .end sparse-switch

    :pswitch_data_3
    .packed-switch 0x0
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
    .end packed-switch

    :sswitch_data_3
    .sparse-switch
        -0x562f9482 -> :sswitch_35
        -0x4e3d6d40 -> :sswitch_3b
        -0x460411da -> :sswitch_39
        -0x39b5211e -> :sswitch_3f
        -0x37226d22 -> :sswitch_3a
        -0x3581de92 -> :sswitch_37
        -0x30c133a0 -> :sswitch_3c
        -0x28516cec -> :sswitch_3e
        -0x4e1daa7 -> :sswitch_38
        0x12bbc810 -> :sswitch_3d
        0x5f1771f4 -> :sswitch_34
        0x730fdeab -> :sswitch_36
        0x75020c0f -> :sswitch_33
    .end sparse-switch

    :pswitch_data_4
    .packed-switch 0x0
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
    .end packed-switch

    :sswitch_data_4
    .sparse-switch
        -0x7f682541 -> :sswitch_48
        -0x6f783fb9 -> :sswitch_49
        -0x51cc33cc -> :sswitch_47
        -0x4d8cc16d -> :sswitch_42
        -0x3c6ca389 -> :sswitch_44
        -0x3bc628df -> :sswitch_43
        -0x3a9ab315 -> :sswitch_41
        -0x374aace4 -> :sswitch_45
        -0x1c091992 -> :sswitch_4b
        0x19ef78a8 -> :sswitch_40
        0x6305badd -> :sswitch_4a
        0x692685a1 -> :sswitch_46
    .end sparse-switch

    :pswitch_data_5
    .packed-switch 0x0
        :pswitch_46
        :pswitch_47
        :pswitch_48
        :pswitch_49
        :pswitch_4a
        :pswitch_4b
        :pswitch_4c
        :pswitch_4d
        :pswitch_4e
        :pswitch_4f
        :pswitch_50
        :pswitch_51
    .end packed-switch

    :sswitch_data_5
    .sparse-switch
        -0x7f91d479 -> :sswitch_50
        -0x7c284bba -> :sswitch_4e
        -0x6f335556 -> :sswitch_4f
        -0x4cb7d87b -> :sswitch_56
        -0x2d0cb7a5 -> :sswitch_4d
        0xdc5fecf -> :sswitch_52
        0x33b94bbf -> :sswitch_4c
        0x367ce700 -> :sswitch_51
        0x465482c9 -> :sswitch_54
        0x552e154b -> :sswitch_53
        0x69712d6f -> :sswitch_55
        0x6ab4c78e -> :sswitch_57
    .end sparse-switch

    :pswitch_data_6
    .packed-switch 0x0
        :pswitch_53
        :pswitch_54
        :pswitch_55
        :pswitch_56
        :pswitch_57
        :pswitch_58
        :pswitch_59
        :pswitch_5a
        :pswitch_5b
        :pswitch_5c
        :pswitch_5d
        :pswitch_5e
    .end packed-switch

    :sswitch_data_6
    .sparse-switch
        -0x4e857510 -> :sswitch_5f
        -0x1c894ef7 -> :sswitch_5a
        -0xe2e3396 -> :sswitch_5c
        -0x9b47ac1 -> :sswitch_60
        0x17f43207 -> :sswitch_5e
        0x48803b14 -> :sswitch_59
        0x60a98cb9 -> :sswitch_5b
        0x65054427 -> :sswitch_5d
        0x75f9239b -> :sswitch_58
    .end sparse-switch

    :pswitch_data_7
    .packed-switch 0x0
        :pswitch_60
        :pswitch_61
        :pswitch_62
        :pswitch_63
        :pswitch_64
        :pswitch_65
        :pswitch_66
        :pswitch_67
        :pswitch_68
    .end packed-switch

    :sswitch_data_7
    .sparse-switch
        -0x74ddc0dd -> :sswitch_66
        -0x67f870ad -> :sswitch_65
        -0x499a7018 -> :sswitch_62
        -0x364e80b3 -> :sswitch_64
        0x9515810 -> :sswitch_61
        0x78a801b7 -> :sswitch_63
    .end sparse-switch

    :pswitch_data_8
    .packed-switch 0x0
        :pswitch_6a
        :pswitch_6b
        :pswitch_6c
        :pswitch_6d
        :pswitch_6e
        :pswitch_6f
    .end packed-switch

    :sswitch_data_8
    .sparse-switch
        -0x625ba203 -> :sswitch_67
        -0x534f8be2 -> :sswitch_68
        -0x5319be4a -> :sswitch_6d
        -0x4ebf90df -> :sswitch_6e
        -0x11927f68 -> :sswitch_6c
        0x52d2774 -> :sswitch_6b
        0x3962d1ce -> :sswitch_6a
        0x6422cbe9 -> :sswitch_69
    .end sparse-switch

    :pswitch_data_9
    .packed-switch 0x0
        :pswitch_71
        :pswitch_72
        :pswitch_73
        :pswitch_74
        :pswitch_75
        :pswitch_76
        :pswitch_77
        :pswitch_78
    .end packed-switch

    :sswitch_data_9
    .sparse-switch
        -0x74fa9afd -> :sswitch_6f
        -0x5319be4a -> :sswitch_76
        -0x4ebf90df -> :sswitch_70
        -0x3ce44687 -> :sswitch_72
        -0x3a6a65ad -> :sswitch_71
        -0x103e8c3d -> :sswitch_74
        0x292f3f94 -> :sswitch_75
        0x2eef3494 -> :sswitch_73
        0x65788769 -> :sswitch_78
        0x7d586159 -> :sswitch_77
    .end sparse-switch

    :pswitch_data_a
    .packed-switch 0x0
        :pswitch_7a
        :pswitch_7b
        :pswitch_7c
        :pswitch_7d
        :pswitch_7e
        :pswitch_7f
        :pswitch_80
        :pswitch_81
        :pswitch_82
        :pswitch_83
    .end packed-switch

    :sswitch_data_a
    .sparse-switch
        -0x3edf31d1 -> :sswitch_7c
        -0x15a386e9 -> :sswitch_79
        -0xc145ad8 -> :sswitch_7b
        0x4744a7b8 -> :sswitch_7a
    .end sparse-switch

    :pswitch_data_b
    .packed-switch 0x0
        :pswitch_85
        :pswitch_86
        :pswitch_87
        :pswitch_88
    .end packed-switch

    :sswitch_data_b
    .sparse-switch
        -0x66608807 -> :sswitch_7e
        -0x40efadf9 -> :sswitch_7f
        0x63cbc5bc -> :sswitch_7d
    .end sparse-switch

    :pswitch_data_c
    .packed-switch 0x0
        :pswitch_8a
        :pswitch_8b
        :pswitch_8c
    .end packed-switch

    :sswitch_data_c
    .sparse-switch
        -0x6e1bb3c9 -> :sswitch_80
        0x741c2b00 -> :sswitch_81
    .end sparse-switch

    :pswitch_data_d
    .packed-switch 0x0
        :pswitch_90
        :pswitch_91
    .end packed-switch

    :sswitch_data_d
    .sparse-switch
        -0x7bb5f0b1 -> :sswitch_83
        -0x3ecb9a99 -> :sswitch_86
        0x3ba3e2f0 -> :sswitch_82
        0x62658647 -> :sswitch_85
        0x6f38e3dc -> :sswitch_84
    .end sparse-switch

    :pswitch_data_e
    .packed-switch 0x0
        :pswitch_93
        :pswitch_94
        :pswitch_95
        :pswitch_96
        :pswitch_97
    .end packed-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
