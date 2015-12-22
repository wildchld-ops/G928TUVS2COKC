.class public Lcom/android/server/telecom/CallReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CallReceiver.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/telecom/CallReceiver;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private static disconnectCallAndShowErrorDialog(Landroid/content/Context;Lcom/android/server/telecom/Call;I)V
    .locals 6

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->disconnect()V

    new-instance v5, Landroid/content/Intent;

    const-class v0, Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {v5, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    sparse-switch p2, :sswitch_data_0

    move v0, v1

    move v3, v4

    :goto_0
    if-eq v3, v4, :cond_0

    const-string v4, "error_message_id"

    invoke-virtual {v5, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    if-eq v0, v2, :cond_1

    const/high16 v0, 0x10000000

    invoke-virtual {v5, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v5, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    return-void

    :sswitch_0
    const v0, 0x7f08001e

    move v3, v0

    move v0, v1

    goto :goto_0

    :sswitch_1
    move v0, v2

    move v3, v4

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v2, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2, v0, v1}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x7 -> :sswitch_0
        0x26 -> :sswitch_0
        0x2c -> :sswitch_1
    .end sparse-switch
.end method

.method static getCallsManager()Lcom/android/server/telecom/CallsManager;
    .locals 1

    invoke-static {}, Lcom/android/server/telecom/CallsManager;->getInstance()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    return-object v0
.end method

.method private static isPotentialInCallMMICode(Landroid/net/Uri;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tel"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    :cond_0
    const-string v2, "2"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v3, :cond_2

    :cond_1
    const-string v2, "3"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "4"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "5"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method static processIncomingCallIntent(Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x0

    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Rejecting incoming call due to null phone account"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_2

    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Rejecting incoming call due to null component name"

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const-string v2, "android.telecom.extra.INCOMING_CALL_EXTRAS"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v1, "android.telecom.extra.INCOMING_CALL_EXTRAS"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v1

    :cond_3
    if-nez v1, :cond_4

    :cond_4
    sget-object v2, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v3, "Processing incoming call from connection service [%s]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallReceiver;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/server/telecom/CallsManager;->processIncomingCallIntent(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method public static processOutgoingCallIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 12

    const-string v0, "feature_usa"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->processOutgoingCallIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const-string v0, "international_call_service"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRoamingArea()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1, p0}, Lcom/android/server/telecom/operator/OperatorUtils;->getInternationalServiceIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const-string v0, "roaming_auto_dial"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {p1, p0}, Lcom/android/server/telecom/operator/kor/RoamingAutoDialExtension;->processOutgoingCallIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v1, "SEC_PRODUCT_FEATURE_KNOX_SUPPORT_MDM"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lcom/android/server/telecom/restrictionpolicy/MdmExtension;->processOutgoingCallIntent(Landroid/content/Intent;Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v4

    if-nez v4, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {p0, v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isRestrictedOutgoingCallIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v1, "onReceive - restricted call intent"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    invoke-static {p0, v4}, Lcom/android/server/telecom/CallReceiver;->shouldPreventDuplicateVideoCall(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    const-string v0, "ltn_auto_csp"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "voicemail"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v0, "AutoCSP"

    const-string v5, "Check if AutoCSP Service is available"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0, v5, v7}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/TelecomGlobals;->getAutoCSP()Lcom/android/server/telecom/IAutoCSP;

    move-result-object v0

    if-eqz v0, :cond_7

    :try_start_0
    invoke-interface {v0}, Lcom/android/server/telecom/IAutoCSP;->isAutoCSPEnabled()Z

    move-result v5

    if-eqz v5, :cond_1e

    invoke-interface {v0, v3}, Lcom/android/server/telecom/IAutoCSP;->getAutoCSPNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtils;->setmShowAutoCspPopup(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :try_start_1
    const-string v1, "tel"

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    move-object v1, v0

    :cond_7
    :goto_2
    const-string v0, "feature_ctc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_8
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "processOutgoingCallIntent() scheme = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uriString = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "voicemail"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isUriNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "sip"

    :goto_3
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    move-object v2, v0

    :cond_9
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handle = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0, v3, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v0, "prohibit_second_call_in_emergency_call"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/android/server/telecom/CallReceiver;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/CallsManager;->getActiveCall()Lcom/android/server/telecom/Call;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_b

    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v1, "Currently EMERGENCY_CALL connection -- ignore this call"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/telecom/CallReceiver;->showErrorDialog(Landroid/content/Context;I)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :goto_4
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_2

    :cond_a
    const-string v0, "tel"

    goto :goto_3

    :cond_b
    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {v4, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_c

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->selectAccountBySimSlotIDExtra(Landroid/content/Intent;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    :cond_c
    const/4 v3, 0x0

    const-string v5, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_d

    const-string v3, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-virtual {v4, v3}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    :cond_d
    if-nez v3, :cond_e

    :cond_e
    const/4 v5, 0x0

    invoke-static {}, Lcom/android/server/telecom/CallReceiver;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/telecom/CallsManager;->getRingingCall()Lcom/android/server/telecom/Call;

    move-result-object v7

    if-eqz v7, :cond_f

    invoke-static {v7}, Lcom/android/server/telecom/secutils/TelecomUtils;->getPhoneTypeFromCall(Lcom/android/server/telecom/Call;)I

    move-result v7

    const/4 v8, 0x1

    if-ne v7, v8, :cond_f

    const-string v7, "feature_ctc"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    const/4 v5, 0x1

    :cond_f
    const-string v7, "voicemail"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_12

    if-eqz v5, :cond_10

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/telecom/CallReceiver;->showErrorDialog(Landroid/content/Context;I)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_10
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoiceCallSubId(Landroid/content/Intent;)I

    move-result v5

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_11

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_12

    :cond_11
    sget-object v0, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    const-string v1, "processOutgoingCallIntent no voice mail number "

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/telephony/SubscriptionManager;->setDefaultVoiceSubId(I)V

    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/android/server/telecom/CallReceiver;->showErrorDialog(Landroid/content/Context;I)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_12
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->isOutgoingVideoCall(Landroid/content/Intent;)Z

    move-result v5

    const-string v7, "tel"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_13

    invoke-static {p0, v4, v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkToInitiateOutgoingCall(Landroid/content/Context;Landroid/content/Intent;Z)I

    move-result v6

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkAndParseNumberDuringCSVTCall(Landroid/content/Intent;)Z

    move-result v7

    sget-object v8, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "checkToInitiateOutgoingCall = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v8, v9, v10}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v8, 0x4

    if-ne v6, v8, :cond_14

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->removeVideoCallExtra(Landroid/content/Intent;)V

    const/4 v5, 0x0

    :cond_13
    invoke-static {p0, v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->checkForLGTCDMA(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v6

    if-eqz v6, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_14
    if-eqz v6, :cond_13

    if-nez v7, :cond_13

    invoke-static {p0, v6}, Lcom/android/server/telecom/CallReceiver;->showErrorDialog(Landroid/content/Context;I)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_15
    invoke-static {p0, v2, v4, v3, v5}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeOutgoingSecCallExtra(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    move-result-object v3

    const-string v5, "is_default_dialer"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    const-string v6, "ip_call"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_16

    const-string v6, "outbarringpwright"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v6

    invoke-static {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v7

    if-eqz v7, :cond_16

    invoke-virtual {v7}, Lcom/android/services/telephony/common/SecCallExtra;->IsIPCall()Z

    move-result v7

    if-eqz v7, :cond_16

    if-nez v6, :cond_16

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->getVoiceCallSubId(Landroid/content/Intent;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeIpCallNum(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "tel"

    const/4 v6, 0x0

    invoke-static {v2, v1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :cond_16
    move-object v6, v2

    invoke-static {}, Lcom/android/server/telecom/CallReceiver;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v6, v0, v3}, Lcom/android/server/telecom/CallsManager;->startOutgoingCall(Landroid/net/Uri;Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)Lcom/android/server/telecom/Call;

    move-result-object v3

    if-eqz v3, :cond_1c

    new-instance v0, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;

    invoke-static {}, Lcom/android/server/telecom/CallReceiver;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v2

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;-><init>(Landroid/content/Context;Lcom/android/server/telecom/CallsManager;Lcom/android/server/telecom/Call;Landroid/content/Intent;Z)V

    const-string v1, "feature_multisim"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-static {v3}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getSubId(Lcom/android/server/telecom/Call;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->processIntent(I)I

    move-result v0

    move v1, v0

    :goto_5
    if-nez v1, :cond_18

    const/4 v0, 0x1

    :goto_6
    invoke-static {v6}, Lcom/android/server/telecom/CallReceiver;->isPotentialInCallMMICode(Landroid/net/Uri;)Z

    move-result v2

    if-eqz v2, :cond_19

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_17
    invoke-virtual {v0}, Lcom/android/server/telecom/NewOutgoingCallIntentBroadcaster;->processIntent()I

    move-result v0

    move v1, v0

    goto :goto_5

    :cond_18
    const/4 v0, 0x0

    goto :goto_6

    :cond_19
    if-nez v0, :cond_1a

    if-eqz v3, :cond_1a

    invoke-static {p0, v3, v1}, Lcom/android/server/telecom/CallReceiver;->disconnectCallAndShowErrorDialog(Landroid/content/Context;Lcom/android/server/telecom/Call;I)V

    invoke-static {v4}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendFailureResponse(Landroid/content/Intent;)V

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_1a
    if-eqz v0, :cond_1b

    invoke-static {v4}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendSuccessResponse(Landroid/content/Intent;)V

    :cond_1b
    :goto_7
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_1c
    const-string v0, "videocall"

    const/4 v1, 0x0

    invoke-virtual {v4, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-static {}, Lcom/android/server/telecom/LowBatteryManager;->getInstance()Lcom/android/server/telecom/LowBatteryManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/telecom/LowBatteryManager;->isLowBatt()Z

    move-result v0

    if-eqz v0, :cond_1d

    :goto_8
    invoke-static {v4}, Lcom/android/server/telecom/operator/usa/ATCommandReceiver;->sendFailureResponse(Landroid/content/Intent;)V

    goto :goto_7

    :cond_1d
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/server/telecom/CallReceiver;->showErrorDialog(Landroid/content/Context;I)V

    goto :goto_8

    :catch_1
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    goto/16 :goto_4

    :cond_1e
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private processUnknownCallIntent(Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/telecom/PhoneAccountHandle;

    if-nez v0, :cond_0

    const-string v0, "Rejecting unknown call due to null phone account"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/telecom/PhoneAccountHandle;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v0, "Rejecting unknown call due to null component name"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/android/server/telecom/Log;->w(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v1, "android.telecom.extra.UNKNOWN_CALL_HANDLE"

    invoke-virtual {v2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v1, p1, v2, v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->makeOutgoingSecCallExtra(Landroid/content/Context;Landroid/net/Uri;Landroid/content/Intent;Landroid/os/Bundle;Z)Landroid/os/Bundle;

    invoke-static {}, Lcom/android/server/telecom/CallReceiver;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1, v0, v2}, Lcom/android/server/telecom/CallsManager;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private static shouldPreventDuplicateVideoCall(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/server/telecom/CallReceiver;->getCallsManager()Lcom/android/server/telecom/CallsManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/telecom/CallsManager;->hasVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static showErrorDialog(Landroid/content/Context;I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v2, -0x1

    const v1, 0x7f080027

    const/4 v3, 0x0

    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/android/server/telecom/ErrorDialogActivity;

    invoke-direct {v4, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    move v0, v2

    :goto_0
    if-ne v0, v1, :cond_2

    invoke-static {v1}, Lcom/android/server/telecom/secutils/TelecomUtils;->displayToast(I)V

    :goto_1
    return-void

    :pswitch_1
    move v0, v1

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->getInstance()Lcom/android/server/telecom/TelecomGlobals;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/telecom/TelecomGlobals;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "videocall_settings"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-nez v5, :cond_0

    move v0, v3

    :cond_0
    if-eqz v0, :cond_1

    const v0, 0x7f080081

    goto :goto_0

    :cond_1
    const v0, 0x7f080082

    goto :goto_0

    :pswitch_3
    const v0, 0x7f080083

    goto :goto_0

    :pswitch_4
    const-string v5, "show_missing_voicemail"

    invoke-virtual {v4, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move v0, v2

    goto :goto_0

    :pswitch_5
    const v0, 0x7f080094

    goto :goto_0

    :pswitch_6
    const v0, 0x7f0800cd

    goto :goto_0

    :pswitch_7
    const v0, 0x7f0800ce

    goto :goto_0

    :pswitch_8
    const v0, 0x7f0800cf

    goto :goto_0

    :pswitch_9
    const v0, 0x7f0800d0

    goto :goto_0

    :pswitch_a
    const v0, 0x7f080095

    goto :goto_0

    :pswitch_b
    const v0, 0x7f080096

    goto :goto_0

    :cond_2
    if-eq v0, v2, :cond_3

    const-string v1, "error_message_id"

    invoke-virtual {v4, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_3
    const/high16 v0, 0x10000000

    invoke-virtual {v4, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v4, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/telecom/CallReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ActivityNotFoundException: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v0, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v0, "is_unknown_call"

    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    const-string v1, "onReceive - isUnknownCall: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {p0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)V

    const-string v1, "processNewCallCallIntent"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/telecom/CallReceiver;->processUnknownCallIntent(Landroid/content/Intent;)V

    :goto_0
    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/telecom/CallReceiver;->processOutgoingCallIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    goto :goto_0
.end method
