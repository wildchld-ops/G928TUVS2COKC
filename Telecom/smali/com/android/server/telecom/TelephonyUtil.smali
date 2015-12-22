.class public final Lcom/android/server/telecom/TelephonyUtil;
.super Ljava/lang/Object;
.source "TelephonyUtil.java"


# static fields
.field private static final DEFAULT_EMERGENCY_PHONE_ACCOUNT_HANDLE:Landroid/telecom/PhoneAccountHandle;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/android/server/telecom/TelephonyUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/TelephonyUtil;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/telecom/PhoneAccountHandle;

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "E"

    invoke-direct {v0, v1, v2}, Landroid/telecom/PhoneAccountHandle;-><init>(Landroid/content/ComponentName;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/telecom/TelephonyUtil;->DEFAULT_EMERGENCY_PHONE_ACCOUNT_HANDLE:Landroid/telecom/PhoneAccountHandle;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getDefaultEmergencyPhoneAccount()Landroid/telecom/PhoneAccount;
    .locals 2

    sget-object v0, Lcom/android/server/telecom/TelephonyUtil;->DEFAULT_EMERGENCY_PHONE_ACCOUNT_HANDLE:Landroid/telecom/PhoneAccountHandle;

    const-string v1, "E"

    invoke-static {v0, v1}, Landroid/telecom/PhoneAccount;->builder(Landroid/telecom/PhoneAccountHandle;Ljava/lang/CharSequence;)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v0

    const/16 v1, 0x16

    invoke-virtual {v0, v1}, Landroid/telecom/PhoneAccount$Builder;->setCapabilities(I)Landroid/telecom/PhoneAccount$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/PhoneAccount$Builder;->build()Landroid/telecom/PhoneAccount;

    move-result-object v0

    return-object v0
.end method

.method static isPstnComponentName(Landroid/content/ComponentName;)Z
    .locals 3

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.android.phone"

    const-string v2, "com.android.services.telephony.TelephonyConnectionService"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static shouldProcessAsEmergency(Landroid/content/Context;Landroid/net/Uri;)Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    const-string v2, "check_clir_prefix"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->removeClirPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0

    :cond_2
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/telephony/PhoneNumberUtils;->isPotentialLocalEmergencyNumber(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_3
    move v0, v1

    goto :goto_0
.end method
