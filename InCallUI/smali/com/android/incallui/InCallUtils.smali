.class public Lcom/android/incallui/InCallUtils;
.super Ljava/lang/Object;
.source "InCallUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/incallui/InCallUtils$CallForwardingState;
    }
.end annotation


# static fields
.field private static ONEHAND_MODE:Ljava/lang/String;

.field private static isCameraoffSmartAnswer:Z

.field public static isExecuteMoveTaskToBack:Z

.field private static isFullScreen:Z

.field private static mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

.field private static mIsInitLTEVideoCallMenuShow:Z

.field private static mIsLTEVideoCallMenuShow:Z

.field private static mMarkAsAddCall:Z

.field private static mPrevHQTShowState:Z

.field private static mToast:Landroid/widget/Toast;

.field private static mediaPlayer:Landroid/media/MediaPlayer;

.field public static sIsCallForwardingState:Lcom/android/incallui/InCallUtils$CallForwardingState;

.field private static sMakeMergeAfterAnswer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/incallui/InCallUtils;->mMarkAsAddCall:Z

    const-string v0, "onehand_dialer_enabled"

    sput-object v0, Lcom/android/incallui/InCallUtils;->ONEHAND_MODE:Ljava/lang/String;

    sput-boolean v1, Lcom/android/incallui/InCallUtils;->isFullScreen:Z

    sput-boolean v1, Lcom/android/incallui/InCallUtils;->isCameraoffSmartAnswer:Z

    sput-boolean v1, Lcom/android/incallui/InCallUtils;->mPrevHQTShowState:Z

    sput-boolean v1, Lcom/android/incallui/InCallUtils;->mIsInitLTEVideoCallMenuShow:Z

    sput-boolean v1, Lcom/android/incallui/InCallUtils;->mIsLTEVideoCallMenuShow:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/incallui/InCallUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    sget-object v0, Lcom/android/incallui/InCallUtils$CallForwardingState;->INVALID:Lcom/android/incallui/InCallUtils$CallForwardingState;

    sput-object v0, Lcom/android/incallui/InCallUtils;->sIsCallForwardingState:Lcom/android/incallui/InCallUtils$CallForwardingState;

    sput-boolean v1, Lcom/android/incallui/InCallUtils;->isExecuteMoveTaskToBack:Z

    sput-boolean v1, Lcom/android/incallui/InCallUtils;->sMakeMergeAfterAnswer:Z

    return-void
.end method

.method public static CheckDisplayPLettrering()Z
    .locals 8

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v0, 0x0

    if-nez v1, :cond_0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "oneline_greeting"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v5, "ims_support_multimedia_caller_id"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "photoring_reject_all"

    invoke-static {v5, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "photoring reject all : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-nez v3, :cond_2

    const-string v4, "false"

    :goto_1
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-ne v3, v7, :cond_3

    const/4 v0, 0x0

    :cond_1
    :goto_2
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CheckDisplayPLettrering, bEnableLettering : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    goto :goto_0

    :cond_2
    const-string v4, "true"

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMcidBlockedNumber()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    if-ne v2, v7, :cond_5

    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_6
    const/4 v0, 0x1

    goto :goto_2
.end method

.method public static IsTelkomSelIndonesiaOperator()Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "phone"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v4

    const-string v5, "51010"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-ne v4, v2, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const-string v2, "InCallUtils"

    const-string v4, "telephonyManager is null"

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0
.end method

.method public static IsUriExist(Landroid/net/Uri;)Z
    .locals 5

    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    const/4 v2, 0x1

    :cond_1
    :goto_1
    return v2

    :catch_0
    move-exception v0

    const-string v2, "InCallUtils"

    const-string v3, "IsUriExist : IOException"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_2
    const-string v2, "InCallUtils"

    const-string v3, "IsUriExist : FileNotFoundException"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v3, "InCallUtils"

    const-string v4, "IsUriExist : IOException"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_2
    throw v2

    :catch_3
    move-exception v0

    const-string v3, "InCallUtils"

    const-string v4, "IsUriExist : IOException"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method static synthetic access$002(Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    sput-object p0, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method public static broadcastCallName(Landroid/content/Context;)V
    .locals 8

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.sec.android.phone.permission.TRANSPORTING_CALLER_NAME"

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/InCallUtils;->getCallName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getOutgoingOrActive()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/InCallUtils;->getCallName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    invoke-static {p0, v6}, Lcom/android/incallui/InCallUtils;->getCallName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    const-string v6, "InCallUtils"

    const-string v7, "broadcastCallName "

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5}, Landroid/content/Intent;-><init>()V

    const-string v6, "com.android.phone.CALLER_NAME"

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "incoming"

    invoke-virtual {v5, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "active"

    invoke-virtual {v5, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "background"

    invoke-virtual {v5, v6, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v6, "com.sec.android.phone.permission.TRANSPORTING_CALLER_NAME"

    invoke-virtual {p0, v5, v6}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static canAddCallForVoLTE()Z
    .locals 4

    const/4 v2, 0x0

    const-string v3, "disable_add_call"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "common_volte_hk"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static canSupportHoldForVoLTE()Z
    .locals 1

    const-string v0, "feature_lgt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static changeNameForRAD(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    const v4, 0x7f0d033d

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "+82263439000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0d033c

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "changeNameForRAD number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_1
    const-string v3, "+82232100404"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v3, "+82263439000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0d0339

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "+82221900901"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0d033e

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_4
    const-string v3, "feature_lgt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "+82234167010"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const v3, 0x7f0d033f

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_5
    const-string v3, "+82232100404"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static changeNameForSKT(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p0, :cond_0

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "1521044"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f0d0339

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    const-string v3, "0000"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isFindService()Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0d033a

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public static checkAndMakeMergeAfterAnswer(Lcom/android/incallui/Call;)V
    .locals 4

    const-string v2, "InCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndMakeMergeAfterAnswer call.getState() "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " sMakeMergeAfterAnswer : "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v3, Lcom/android/incallui/InCallUtils;->sMakeMergeAfterAnswer:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "china_cdma_call"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_0
    :goto_1
    return-void

    :cond_1
    const-string v1, "null"

    goto :goto_0

    :cond_2
    sget-boolean v1, Lcom/android/incallui/InCallUtils;->sMakeMergeAfterAnswer:Z

    if-eqz v1, :cond_0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telecom/Call;->getConferenceableCalls()Ljava/util/List;

    move-result-object v0

    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndMakeMergeAfterAnswer conferenceableCalls  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndMakeMergeAfterAnswer "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->merge(Ljava/lang/String;)V

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->setMergeAfterAnswer(Z)V

    goto :goto_1
.end method

.method public static checkEmergencyCall(Lcom/android/incallui/Call;)Z
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    :cond_0
    return v2
.end method

.method public static checkIMSCapability(I)Z
    .locals 9

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/16 v1, 0x2000

    const/4 v0, 0x4

    :try_start_0
    sget-object v6, Lcom/android/incallui/InCallUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-eqz v6, :cond_0

    sget-object v6, Lcom/android/incallui/InCallUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    sget-object v8, Lcom/sec/ims/options/CapabilityRefreshType;->DISABLED:Lcom/sec/ims/options/CapabilityRefreshType;

    invoke-virtual {v8}, Lcom/sec/ims/options/CapabilityRefreshType;->ordinal()I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lcom/sec/ims/options/CapabilityManager;->getCapabilitiesByNumber(Ljava/lang/String;I)Lcom/sec/ims/options/Capabilities;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    :cond_0
    if-eqz v3, :cond_1

    sparse-switch p0, :sswitch_data_0

    :cond_1
    :goto_0
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capability : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v4

    :sswitch_0
    :try_start_1
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {v3, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capabilities has : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {v3, v6}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capabilities available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_MMTEL_VIDEO:I

    invoke-virtual {v3, v8}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0

    :sswitch_1
    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-virtual {v3, v6}, Lcom/sec/ims/options/Capabilities;->hasFeature(I)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capabilities has : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget v6, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-virtual {v3, v6}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "capabilities available : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    sget v8, Lcom/sec/ims/options/Capabilities;->FEATURE_CHAT:I

    invoke-virtual {v3, v8}, Lcom/sec/ims/options/Capabilities;->isFeatureAvailable(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1

    const/4 v4, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v4, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Landroid/os/RemoteException;->printStackTrace()V

    goto/16 :goto_0

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_1
        0x2000 -> :sswitch_0
    .end sparse-switch
.end method

.method public static checkPrimaryEmergencyCall()Z
    .locals 7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-boolean v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    :cond_0
    return v3
.end method

.method public static createCapabilityManager(Landroid/content/Context;)V
    .locals 1

    const-string v0, "ims_capability_check_on_call_end"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/ims/options/CapabilityManager;

    invoke-direct {v0, p0}, Lcom/sec/ims/options/CapabilityManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/incallui/InCallUtils;->mCapabilityManager:Lcom/sec/ims/options/CapabilityManager;

    :cond_0
    return-void
.end method

.method public static deInitIsVZWLTEVideoCallMenuShow()V
    .locals 3

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/InCallUtils;->mIsInitLTEVideoCallMenuShow:Z

    const-string v0, "InCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "deInitIsVZWLTEVideoCallMenuShow - mIsInitLTEVideoCallMenuShow "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-boolean v2, Lcom/android/incallui/InCallUtils;->mIsInitLTEVideoCallMenuShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public static deleteFile(Ljava/lang/String;)V
    .locals 2

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    goto :goto_0
.end method

.method public static displayCtcCallTimeDuration(Lcom/android/incallui/Call;)Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ctc_call_time_duration_for_six_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const-string v1, "InCallUtils"

    const-string v2, "displayCtcCallTimeDuration Six mode device and cdma call"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCtcCallTimeDuration = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v1, "ctc_call_time_duration"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static displayCtcSubscriberName()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ctc_call_time_duration_for_six_mode"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "displayCtcSubscriberName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const-string v1, "ctc_call_time_duration"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static displayToast(I)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/incallui/InCallUtils;->displayToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static displayToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/android/incallui/InCallUtils;->displayToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static displayToast(Ljava/lang/String;I)V
    .locals 1

    sget-object v0, Lcom/android/incallui/InCallUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/incallui/InCallUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0, p0}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    sget-object v0, Lcom/android/incallui/InCallUtils;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->setShowForAllUsers()V

    sget-object v0, Lcom/android/incallui/InCallUtils;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/incallui/InCallUtils;->mToast:Landroid/widget/Toast;

    goto :goto_0
.end method

.method public static displayToastLong(I)V
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/InCallApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/incallui/InCallUtils;->displayToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static displayToastLong(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/InCallUtils;->displayToast(Ljava/lang/String;I)V

    return-void
.end method

.method public static forceWakeUpScreen(Landroid/content/Context;)V
    .locals 4

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isDreaming()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "InCallUtils"

    const-string v2, "forceWakeUpScreen"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->wakeUp(J)V

    :cond_1
    return-void
.end method

.method public static getAliveParticipantNumber()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    const/4 v0, 0x0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getAliveParticipantNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getAudioMode()I
    .locals 1

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/AudioModeProvider;->getAudioMode()I

    move-result v0

    return v0
.end method

.method public static getBgCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;)Lcom/android/incallui/Call;
    .locals 2

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public static getCallCardDialingString()Ljava/lang/String;
    .locals 5

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f0d0132

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "feature_kor"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isDialToKoreaForRAD()Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f0d0133

    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_0
    const-string v3, "support_period_mark"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u2026"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method private static getCallName(Landroid/content/Context;Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 6

    const/4 v2, 0x0

    if-nez p1, :cond_0

    const/4 v3, 0x0

    :goto_0
    return-object v3

    :cond_0
    invoke-static {p0}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getCallName: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getInstance()Lcom/android/incallui/coreapps/CoreAppsContactManager;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/incallui/coreapps/CoreAppsContactManager;->getCoreAppsContact(Ljava/lang/String;)Lcom/android/incallui/coreapps/CoreAppsContact;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v3, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v2, v1, Lcom/android/incallui/coreapps/CoreAppsContact;->mName:Ljava/lang/String;

    :cond_2
    move-object v3, v2

    goto :goto_0
.end method

.method public static getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;
    .locals 4

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eq v0, p1, :cond_0

    move-object v1, v0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eq v0, p1, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    if-eq v0, p1, :cond_2

    move-object v1, v0

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    const-string v2, "china_cdma_call"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaLatestCallFromId()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getCdmaEarliestCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_4

    if-eq v0, p1, :cond_4

    move-object v1, v0

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_5

    if-eq v0, p1, :cond_5

    move-object v1, v0

    goto :goto_0

    :cond_5
    if-nez p2, :cond_7

    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_6

    if-eq v0, p1, :cond_6

    move-object v1, v0

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_7

    if-eq v0, p1, :cond_7

    move-object v1, v0

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_8

    if-eq v0, p1, :cond_8

    move-object v1, v0

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public static getCallType()I
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v1

    return v1
.end method

.method public static getCallType(Lcom/android/incallui/Call;)I
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getCallerInfoQueryProjection(Landroid/net/Uri;)[Ljava/lang/String;
    .locals 6

    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v0, 0x0

    const-string v3, "content://com.android.contacts/data/phones"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "InCallUtils"

    const-string v4, "\'data/phones\' URI; using RawContacts.CONTACT_ID"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    :goto_0
    const/16 v3, 0xe

    new-array v1, v3, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "data_id"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    aput-object v0, v1, v3

    const/4 v3, 0x2

    const-string v4, "display_name"

    aput-object v4, v1, v3

    const/4 v3, 0x3

    const-string v4, "number"

    aput-object v4, v1, v3

    const/4 v3, 0x4

    const-string v4, "normalized_number"

    aput-object v4, v1, v3

    const/4 v3, 0x5

    const-string v4, "label"

    aput-object v4, v1, v3

    const/4 v3, 0x6

    const-string v4, "type"

    aput-object v4, v1, v3

    const/4 v3, 0x7

    const-string v4, "lookup"

    aput-object v4, v1, v3

    const/16 v3, 0x8

    const-string v4, "photo_uri"

    aput-object v4, v1, v3

    const/16 v3, 0x9

    const-string v4, "custom_ringtone"

    aput-object v4, v1, v3

    const/16 v3, 0xa

    const-string v4, "send_to_voicemail"

    aput-object v4, v1, v3

    const/16 v3, 0xb

    const-string v4, "photo_thumb_uri"

    aput-object v4, v1, v3

    const/16 v3, 0xc

    const-string v4, "photo_file_id"

    aput-object v4, v1, v3

    const/16 v3, 0xd

    const-string v4, "is_sim"

    aput-object v4, v1, v3

    :goto_1
    return-object v1

    :cond_0
    const-string v3, "content://com.android.contacts/data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "InCallUtils"

    const-string v4, "\'data\' URI; using Data.CONTACT_ID"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "contact_id"

    goto :goto_0

    :cond_1
    const-string v3, "content://com.android.contacts/phone_lookup"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "InCallUtils"

    const-string v4, "\'phone_lookup\' URI; using PhoneLookup._ID"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_id"

    goto :goto_0

    :cond_2
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected prefix for contactRef \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_1
.end method

.method public static getCallerSize(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCallCount(Lcom/android/incallui/Call;)I

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "$"

    const-string v4, ","

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCallCount(Lcom/android/incallui/Call;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getCameraTask()Landroid/app/ActivityManager$RunningTaskInfo;
    .locals 8

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "activity"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    const/16 v6, 0xa

    invoke-virtual {v0, v6}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    const/4 v1, 0x0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.app.camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.sec.android.app.magnifier"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_1

    iget-object v6, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "com.cyworld.camera"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    :cond_1
    move-object v1, v5

    :cond_2
    return-object v1
.end method

.method public static getCircledBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 11

    const/4 v7, 0x0

    :try_start_0
    invoke-static {p0, p1, p1, v7}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v1, -0xffff01

    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    new-instance v5, Landroid/graphics/Rect;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v9

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v10

    invoke-direct {v5, v7, v8, v9, v10}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v7, 0x1

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    int-to-float v7, v7

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    div-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    int-to-float v9, v9

    invoke-virtual {v0, v7, v8, v9, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v0, p0, v5, v5, v4}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-object v6

    :catch_0
    move-exception v2

    const-string v7, "InCallUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCircledBitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    :catch_1
    move-exception v3

    const-string v7, "InCallUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getCircledBitmap: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getCircledDrawable(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;
    .locals 14

    const/4 v3, 0x0

    :try_start_0
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v10, 0x0

    invoke-static {v0, p1, p1, v10}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v10, v11, v12}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v9

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v9}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const v2, -0xffff01

    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    new-instance v8, Landroid/graphics/Rect;

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    invoke-direct {v8, v10, v11, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v10, 0x1

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    invoke-virtual {v7, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    int-to-float v10, v10

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    div-int/lit8 v11, v11, 0x2

    int-to-float v11, v11

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    div-int/lit8 v12, v12, 0x2

    int-to-float v12, v12

    invoke-virtual {v1, v10, v11, v12, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v10, Landroid/graphics/PorterDuffXfermode;

    sget-object v11, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v10, v11}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, v0, v8, v8, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    new-instance v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v4, v9}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_1

    move-object v3, v4

    :goto_0
    return-object v4

    :catch_0
    move-exception v5

    const-string v10, "InCallUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCircledDrawable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const/4 v4, 0x0

    goto :goto_0

    :catch_1
    move-exception v6

    const-string v10, "InCallUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "getCircledDrawable: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static getConnectionCallId(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 2

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getConnectionCallId()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getDelayForDisconnect(Lcom/android/incallui/Call;)I
    .locals 6

    const/4 v5, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-static {v2, p0, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "InCallUtils"

    const-string v3, "getDelayForDisconnect: alive call is exist"

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    const/16 v1, 0xdac

    :cond_1
    :goto_1
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getDelayForDisconnect: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_0
    const/16 v1, 0xdac

    const-string v2, "usa_cdma_emergency_concept"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0, v1}, Lcom/android/incallui/operator/usa/InCallUIExtension;->getDelayForDisconnect(Lcom/android/incallui/Call;I)I

    move-result v1

    goto :goto_1

    :pswitch_1
    const/4 v1, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public static getDisconnectingOrDisconnectedCall(Lcom/android/incallui/CallList;)Lcom/android/incallui/Call;
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    move-object v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    move-object v1, v0

    goto :goto_0
.end method

.method public static getDomain()I
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getDomain(Lcom/android/incallui/Call;)I

    move-result v1

    return v1
.end method

.method public static getDomain(Lcom/android/incallui/Call;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getDomain()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getExtraVolumeLocation()I
    .locals 4

    const/4 v0, 0x2

    const-string v1, "support_swis"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/SwisHelper;->needToShow()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "support_switch_button"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getExtraVolumeLocation = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getFirstCallState()I
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    :cond_0
    return v1
.end method

.method public static getForwardingNumber(Lcom/android/incallui/Call;Landroid/content/Context;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getForwardingNumber()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getCurrentCountryIso(Landroid/content/Context;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getForwardingNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static getFrameSize()Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getFrameSize(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getFrameSize(Lcom/android/incallui/Call;)Ljava/lang/String;
    .locals 3

    const-string v0, "NONE"

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    const-string v0, "QCIF"

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "qvga_portrait_resolution_support"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    const-string v0, "QVGA"

    goto :goto_0

    :cond_3
    const-string v0, "QVGALAND"

    goto :goto_0

    :cond_4
    const/4 v2, 0x4

    if-eq v1, v2, :cond_5

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    const-string v0, "VGALAND"

    goto :goto_0

    :cond_6
    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    const-string v0, "HD720"

    goto :goto_0

    :cond_7
    const-string v0, "VGA"

    goto :goto_0
.end method

.method public static getHasBeenVideoCall()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getHasBeenVideoCall()Z

    move-result v2

    :cond_0
    return v2
.end method

.method public static getLineCtrlEvent(Lcom/android/incallui/Call;)B
    .locals 5

    const/4 v0, 0x0

    const-string v2, "ctc_call_time_duration"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isLineCtrl()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    int-to-byte v0, v2

    :cond_0
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getLineCtrlEvent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getLinkedinHelper()Lcom/android/incallui/sns/SecLinkedInHelper;
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getLinkedHelper()Lcom/android/incallui/sns/SecLinkedInHelper;

    move-result-object v1

    goto :goto_0
.end method

.method public static getLookupKeyForIMSConference(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getIMSConferenceCallParticipantLookupKey()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, p0

    :cond_0
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getLookupKeyForIMSConference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getNameForIMSConference()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getNameForIMSConference()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getNameForIMSConference(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getIMSConferenceCallParticipantNumber()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, p0

    :cond_0
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNameForIMSConference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getNumberForIMSConference()Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getNumberForIMSConference()Ljava/lang/String;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public static getNumberForIMSConference(I)Ljava/lang/String;
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getIMSConferenceCallParticipantName()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, p0

    :cond_0
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getNumberForIMSConference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static getOneHandDirection(Landroid/content/Context;)I
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_direction"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOriginalNumber()Ljava/lang/String;
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->isRadConvertNumber()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    :cond_0
    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getRadOriginalNumber()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    return-object v1
.end method

.method public static getPhoneNumber()Ljava/lang/String;
    .locals 8

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v5, "emergency_find_lost_phone"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_3

    iget-boolean v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isEmergency:Z

    if-nez v5, :cond_2

    iget-boolean v5, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->isVoiceMail:Z

    if-eqz v5, :cond_3

    :cond_2
    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    goto :goto_0

    :cond_3
    const-string v5, "roaming_auto_dial"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "feature_lgt"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    const-string v5, "disable_roaming_multi_imsi"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCallNumberConverted()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getOriginalNumber()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_4
    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/contacts/common/util/TelephonyManagerUtils;->getVoiceMailAlphaTag(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public static getPhotoUriForIMSConference(I)Landroid/net/Uri;
    .locals 7

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v3, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getIMSConferenceCallParticipantPhotoUri()[Ljava/lang/String;

    move-result-object v4

    aget-object v1, v4, p0

    :cond_0
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getPhotoUriForIMSConference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    :cond_1
    return-object v3
.end method

.method public static getPrevHQTShowState()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/InCallUtils;->mPrevHQTShowState:Z

    return v0
.end method

.method public static getPrimaryCallerName()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v4, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :cond_0
    :goto_0
    return-object v3

    :cond_1
    iget-object v3, v1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPrimaryOriginalPhoneNumber()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    :cond_0
    return-object v3
.end method

.method public static getPrimaryPhoneNumber()Ljava/lang/String;
    .locals 7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Lcom/android/incallui/ContactInfoCache;->getInstance(Landroid/content/Context;)Lcom/android/incallui/ContactInfoCache;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/incallui/ContactInfoCache;->getInfo(Ljava/lang/String;)Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    :cond_0
    return-object v3
.end method

.method public static getRadDisplayNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 8

    const/16 v5, 0x8

    new-array v3, v5, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "+82"

    aput-object v6, v3, v5

    const/4 v5, 0x1

    const-string v6, "+0082"

    aput-object v6, v3, v5

    const/4 v5, 0x2

    const-string v6, "0082"

    aput-object v6, v3, v5

    const/4 v5, 0x3

    const-string v6, "+082"

    aput-object v6, v3, v5

    const/4 v5, 0x4

    const-string v6, "082"

    aput-object v6, v3, v5

    const/4 v5, 0x5

    const-string v6, "82"

    aput-object v6, v3, v5

    const/4 v5, 0x6

    const-string v6, "00682"

    aput-object v6, v3, v5

    const/4 v5, 0x7

    const-string v6, "+00682"

    aput-object v6, v3, v5

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-le v5, v6, :cond_1

    move-object v0, v3

    array-length v2, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v2, :cond_1

    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p0, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v5, "InCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getRadDisplayNumber: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public static getSecCallExtra(Landroid/telecom/Call;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 3

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telecom/Call$Details;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Landroid/telecom/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getSpamCallTagName(I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03aa

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :pswitch_1
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03af

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03b0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03ad

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_6
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03ae

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d03b1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public static getSpamCount()I
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpamCount : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSpamCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSpamCount()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getSpamNumber()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpamNumber : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSpamNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSpamNumber()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public static getSpamReportOwn()I
    .locals 1

    const/16 v0, 0x3b

    return v0
.end method

.method public static getSpamTagName()Ljava/lang/String;
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpamTagName : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSpamTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSpamTagName()Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method public static getSpamTagType()I
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "SpamTagType : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSpamTagType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getSpamTagType()I

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, -0x1

    goto :goto_0
.end method

.method public static getStateForIMSConference(I)I
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v2, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->setIMSConferenceCallParticipantState()[I

    move-result-object v3

    aget v2, v3, p0

    :cond_0
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getStateForIMSConference = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public static getTtsPhoneNumber(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v4, 0x30

    if-lt v0, v4, :cond_0

    const/16 v4, 0x39

    if-le v0, v4, :cond_1

    :cond_0
    const/16 v4, 0x2b

    if-eq v0, v4, :cond_1

    const/16 v4, 0x2a

    if-eq v0, v4, :cond_1

    const/16 v4, 0x23

    if-ne v0, v4, :cond_2

    :cond_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    add-int/lit8 v4, v3, -0x1

    if-ge v1, v4, :cond_2

    const/16 v4, 0x20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static getVideoResolution()I
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getVideoResolution(Lcom/android/incallui/Call;)I

    move-result v1

    return v1
.end method

.method public static getVideoResolution(Lcom/android/incallui/Call;)I
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getVideoResolution()I

    move-result v0

    :cond_0
    return v0
.end method

.method public static getVoiceMailNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    const-string v2, "phone"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getVoicetalkLocale()Ljava/util/Locale;
    .locals 9

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMirrorLinkModeOn()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarAppRunning()Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicetalk_language"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_7

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    :cond_1
    :goto_1
    const-string v6, "en-gb_GB"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v4, "en_GB"

    :cond_2
    const-string v6, "feature_hktw"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "zh"

    invoke-virtual {v4, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v4, "en-US"

    :cond_3
    const-string v6, "-"

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x2

    array-length v7, v3

    if-ne v6, v7, :cond_9

    new-instance v5, Ljava/util/Locale;

    const/4 v6, 0x0

    aget-object v6, v3, v6

    const/4 v7, 0x1

    aget-object v7, v3, v7

    invoke-direct {v5, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVoicetalkLocale - previousLocale : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " voiceLocale : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " voicetalkLocale : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    :cond_4
    const-string v6, "feature_chn"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    const-string v6, "HK"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_5

    const-string v6, "TW"

    invoke-virtual {v6, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    :cond_5
    const-string v4, "en-US"

    goto :goto_0

    :cond_6
    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_0

    :cond_7
    const-string v6, "v-es-LA"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string v4, "es"

    goto/16 :goto_1

    :cond_8
    const-string v6, "feature_chn"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "zh_CN"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v4, "zh-CN"

    goto/16 :goto_1

    :cond_9
    new-instance v5, Ljava/util/Locale;

    invoke-virtual {v2}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/util/Locale;->getVariant()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v4, v6, v7}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static getWideBandAMR()I
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getWideBandAMR()I

    move-result v0

    return v0
.end method

.method public static getisSpam()Z
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSpam : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getisSpam()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getisSpam()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static hasAliveVideoCall()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->hasVideoCall(Z)Z

    move-result v0

    return v0
.end method

.method public static hasIncomingCall()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasLiveCallToDisplay(Lcom/android/incallui/CallList;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static hasOutgoingCall()Z
    .locals 3

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static hasVideoCall()Z
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->hasVideoCall(Z)Z

    move-result v0

    return v0
.end method

.method public static hasVideoCall(Z)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isActiveVideoCall()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isAvailableIMSConferenceInfo()Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isReceivedCall()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v1, 0x1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isAvailablePSVT()Z
    .locals 1

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isServiceRegistered(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailableVoLTE()Z
    .locals 1

    const-string v0, "common_volte"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isServiceRegistered(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isBluetoothAvailable()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->isBluetoothAvailable()Z

    move-result v0

    return v0
.end method

.method public static isCSVideoCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isCSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isCSVideoCall(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getDomain(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    if-ne v1, v3, :cond_1

    const/4 v4, 0x3

    if-ne v0, v4, :cond_1

    move v2, v3

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isCVOEnabled()Z
    .locals 6

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getCVOStatus()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "phoneapp.cvo.simulation"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_2

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1

    :cond_2
    const-string v3, "phoneapp.cvo.simulation"

    invoke-static {v3, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    const/16 v4, 0xc

    if-ne v3, v4, :cond_1

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isCallForwardingState()Z
    .locals 6

    const/4 v3, 0x1

    sget-object v4, Lcom/android/incallui/InCallUtils;->sIsCallForwardingState:Lcom/android/incallui/InCallUtils$CallForwardingState;

    sget-object v5, Lcom/android/incallui/InCallUtils$CallForwardingState;->INVALID:Lcom/android/incallui/InCallUtils$CallForwardingState;

    if-ne v4, v5, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v4, "audio"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v4, "call_forwarding"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "InCallUtils"

    const-string v5, "isCallForwardingState() SideSync true"

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-object v4, Lcom/android/incallui/InCallUtils$CallForwardingState;->STARTED:Lcom/android/incallui/InCallUtils$CallForwardingState;

    sput-object v4, Lcom/android/incallui/InCallUtils;->sIsCallForwardingState:Lcom/android/incallui/InCallUtils$CallForwardingState;

    :cond_0
    :goto_0
    sget-object v4, Lcom/android/incallui/InCallUtils;->sIsCallForwardingState:Lcom/android/incallui/InCallUtils$CallForwardingState;

    sget-object v5, Lcom/android/incallui/InCallUtils$CallForwardingState;->STARTED:Lcom/android/incallui/InCallUtils$CallForwardingState;

    if-ne v4, v5, :cond_2

    :goto_1
    return v3

    :cond_1
    sget-object v4, Lcom/android/incallui/InCallUtils$CallForwardingState;->STOPPED:Lcom/android/incallui/InCallUtils$CallForwardingState;

    sput-object v4, Lcom/android/incallui/InCallUtils;->sIsCallForwardingState:Lcom/android/incallui/InCallUtils$CallForwardingState;

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static isCallNumberConverted()Z
    .locals 6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->isRadConvertNumber()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isCameraAppRunning()Z
    .locals 9

    const/4 v6, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v7, "activity"

    invoke-virtual {v2, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    const/4 v1, 0x0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, "com.sec.android.app.camera"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, "com.sec.android.app.magnifier"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    iget-object v7, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v8, "com.cyworld.camera"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    :cond_1
    move-object v1, v4

    :cond_2
    if-eqz v1, :cond_4

    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0x64

    if-eq v7, v8, :cond_3

    iget v7, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v8, 0xc8

    if-ne v7, v8, :cond_4

    :cond_3
    const-string v7, "InCallUtils"

    const-string v8, "Camera Application is visible in background"

    invoke-static {v7, v8, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v6

    :cond_4
    const-string v6, "InCallUtils"

    const-string v7, "Camera is not visible "

    invoke-static {v6, v7}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v6, 0x0

    goto :goto_0
.end method

.method public static isCameraForeground(Landroid/content/Context;)Z
    .locals 5

    const/4 v4, 0x1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "disable_incoming_call_popup_during_camera"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "InCallUtils"

    const-string v2, "isCameraForeground: DISABLE_INCOMING_CALL_POPUP_DURING_CAMERA"

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "com.sec.android.app.camera"

    invoke-static {p0, v1}, Lcom/android/incallui/PackageHelpers;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "com.sec.android.app.ma.recorder"

    invoke-static {p0, v1}, Lcom/android/incallui/PackageHelpers;->isTopActivityRunningEx(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCameraForeground: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isCameraoffSmartAnswer()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/InCallUtils;->isCameraoffSmartAnswer:Z

    return v0
.end method

.method public static isCarrierPhoneMode()Z
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarrierPhoneMode()Z

    move-result v0

    return v0
.end method

.method public static isCdmaMultipartyCall()Z
    .locals 7

    const/4 v6, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_2

    move v0, v3

    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_3

    move v1, v3

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-eqz v5, :cond_4

    move v2, v3

    :goto_2
    const-string v5, "china_cdma_call"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v5

    if-eq v5, v6, :cond_1

    :cond_0
    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v5

    if-ne v5, v6, :cond_5

    :cond_1
    :goto_3
    return v3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    move v1, v4

    goto :goto_1

    :cond_4
    move v2, v4

    goto :goto_2

    :cond_5
    move v3, v4

    goto :goto_3
.end method

.method public static isChecked3GHDVoiceForKT()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isHDVoicePrefered()Z

    move-result v1

    const-string v2, "hd_voice_network_prefer"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKTSIM()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isRoamingArea()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isFlightMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isClearCoverClosed()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AccessoryEventHandler;->isCoverClosed()Z

    move-result v1

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/AccessoryEventHandler;->getCoverType()I

    move-result v2

    const/16 v5, 0x8

    if-ne v2, v5, :cond_1

    move v0, v3

    :goto_0
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    const-string v5, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isClearCoverClosed "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    :goto_1
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    :goto_2
    return v3

    :cond_1
    move v0, v4

    goto :goto_0

    :cond_2
    move v2, v4

    goto :goto_1

    :cond_3
    move v3, v4

    goto :goto_2
.end method

.method public static isConferenceCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVolteGroupCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCoverClosed()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/AccessoryEventHandler;->getInstance()Lcom/android/incallui/AccessoryEventHandler;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/AccessoryEventHandler;->isCoverClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCoverClosed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_0
    return v0
.end method

.method public static isCoverClosed(Landroid/content/Context;)Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v0

    return v0
.end method

.method public static isDeviceOn3G()Z
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "phone"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v2

    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isDeviceOn3G() type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x3

    if-eq v2, v3, :cond_0

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    const/16 v3, 0x9

    if-eq v2, v3, :cond_0

    const/16 v3, 0xa

    if-eq v2, v3, :cond_0

    const/16 v3, 0xf

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static isDeviceOnLTE()Z
    .locals 7

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v4, "phone"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    const-string v4, "connectivity"

    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v3

    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDeviceOnLTE() type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/16 v4, 0xd

    if-ne v3, v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public static isDialToKoreaForRAD()Z
    .locals 5

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isDialToKoreaForRAD: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isDialToKoreaForRAD()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isDialToKoreaForRAD()Z

    move-result v2

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isDowngradeCall(Lcom/android/incallui/Call;)Z
    .locals 4

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isDowngradeCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isDowngradeCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isDowngradeCall()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isDreaming()Z
    .locals 3

    const-string v2, "dreams"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/service/dreams/IDreamManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/dreams/IDreamManager;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Landroid/service/dreams/IDreamManager;->isDreaming()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isEasyModeOn()Z
    .locals 1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v0

    return v0
.end method

.method public static isEmergencyMode(Landroid/content/Context;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode(Landroid/content/Context;)Z

    move-result v0

    goto :goto_0
.end method

.method public static isEncryptionMode()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "trigger_restart_min_framework"

    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1"

    const-string v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEncryptionMode :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isExistFile(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isFindService()Ljava/lang/Boolean;
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x0

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :try_start_0
    const-string v3, "emergency_find_lost_phone"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v3, Ljava/io/File;

    const-string v4, "/efs/sec_efs/sktdm_mem/lawlock.txt"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x20

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    :cond_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "ON"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_0
    move-object v3, v2

    :goto_1
    return-object v3

    :catch_0
    move-exception v0

    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "can not open file : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_0
.end method

.method public static isFindServiceNumber(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 2

    if-eqz p0, :cond_1

    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "+82263439000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "1521044"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public static isFlightMode(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "airplane_mode_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isFolerClosed()Z
    .locals 6

    const/4 v1, 0x0

    const-string v3, "support_folder_hardkey"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isFolerClosed "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public static isForwardingPresentation(Lcom/android/incallui/Call;)Z
    .locals 6

    const/4 v0, 0x0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getForwardingPresentation()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isForwardingPresentation : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public static isFullScreenMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/InCallUtils;->isFullScreen:Z

    return v0
.end method

.method public static isHDConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 7

    const/4 v3, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getChildCallIds()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/secui/SecCall;->getHDIcon()I

    move-result v4

    if-nez v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    :cond_1
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isHDConferenceCall, retValue : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v3

    :cond_2
    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static isHoldStateOfTheOtherParty(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->getHoldStateOfTheOtherParty()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isIMSConferenceCMCCUIDisplay()Z
    .locals 1

    const-string v0, "ims_voice_conference_cmcc_tbd"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIMSConferenceCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isIMSConferenceCall(Lcom/android/incallui/Call;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isIMSConferenceCall()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIMSConferenceCallCount(Lcom/android/incallui/Call;)I
    .locals 5

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getIMSConferenceCallParticipantCount()I

    move-result v0

    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isIMSConferenceCallCount = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isIMSConferenceMaxCallCount()I
    .locals 1

    const-string v0, "ims_voice_conference_cmcc"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x9

    goto :goto_0
.end method

.method public static isIMSLandscapeConfCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isIMSLandscapeConfCall(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIncomingVideoCall()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImsRegistered()Z
    .locals 8

    const/4 v5, 0x0

    const-string v4, "enabled"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    move v4, v5

    :goto_0
    return v4

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    move v4, v5

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x7

    :try_start_0
    invoke-static {v4, v1}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    if-nez v3, :cond_2

    move v4, v5

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "InCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isImsRegistered:RuntimeException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    invoke-interface {v3}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v4

    goto :goto_0
.end method

.method public static isInLockTaskMode()Z
    .locals 5

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    if-nez v1, :cond_1

    const-string v3, "InCallUtils"

    const-string v4, "isInLockTaskMode : context is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v3, "activity"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isInLockTaskMode()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v2, "InCallUtils"

    const-string v3, "isInLockTaskMode is ture"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x1

    goto :goto_0
.end method

.method public static isIncomingMissedCall()Z
    .locals 7

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    :cond_0
    const/4 v4, 0x5

    if-ne v2, v4, :cond_1

    move v1, v3

    :goto_0
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIncomingMissedCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIncomingRejectedCall()Z
    .locals 7

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/CallList;->getDisconnectedCall()Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v2, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/DisconnectCause;->getCode()I

    move-result v2

    :cond_0
    const/4 v4, 0x6

    if-ne v2, v4, :cond_1

    move v1, v3

    :goto_0
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isIncomingRejectedCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isIncomingVideoCall()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isIntIncomingCall(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x3

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v5, "phone"

    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkOperator()Ljava/lang/String;

    move-result-object v2

    const/4 v1, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v6, :cond_0

    const/4 v5, 0x0

    invoke-virtual {v2, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_0
    if-eqz p0, :cond_2

    const-string v5, "00"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    const-string v5, "+"

    invoke-virtual {p0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    :cond_1
    const-string v5, "450"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    const/4 v3, 0x1

    :cond_2
    return v3
.end method

.method public static isIntentRegistered(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 6

    const/4 v2, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/high16 v3, 0x10000

    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isIntentRegistered: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isKTSIM()Z
    .locals 3

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "2"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45008"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isKeyguardLocked(Landroid/content/Context;)Z
    .locals 4

    const/4 v1, 0x1

    const-string v2, "keyguard"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "InCallUtils"

    const-string v3, "isKeyguardLocked - true"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1

    :cond_0
    const-string v2, "InCallUtils"

    const-string v3, "isKeyguardLocked - false"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isKeyguardSecureLocked()Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v4, "keyguard"

    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/KeyguardManager;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v2, "InCallUtils"

    const-string v4, "isKeyguardSecureLocked - true"

    invoke-static {v2, v4, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    move v2, v3

    goto :goto_0

    :cond_1
    const-string v4, "InCallUtils"

    const-string v5, "isKeyguardSecureLocked - false"

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isKidsModeRunning()Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "kids_home_mode"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static isKioskMode()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/PersonaManager;->isKioskModeEnabled(Landroid/content/Context;)Z

    move-result v1

    return v1
.end method

.method public static isLGTSIM()Z
    .locals 3

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45006"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isLTEVideoCallEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v2, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallEnabled()Z

    move-result v0

    :cond_0
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isLTEVideoCallEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public static isLiveCall(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0x9

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/16 v2, 0xa

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isMobileKeyboardCovered()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    const-string v3, "support_mobile_keyboard"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v3, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-ne v3, v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isMobileKeyboardCovered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_1
    return v1
.end method

.method public static isModifyProgressing()Z
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isModifyProgressing(Z)Z

    move-result v0

    return v0
.end method

.method public static isModifyProgressing(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->isModifyProgressing()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isModifyProgressing(Z)Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3, p0}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isModifyProgressing(Lcom/android/incallui/Call;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isMtConfCall(Lcom/android/incallui/Call;)Z
    .locals 5

    const-string v2, "enable_conference_info_banner"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteConference()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    :goto_1
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isMtConfCall result :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const-string v2, "InCallUtils"

    const-string v3, "isMtConfCall call is null"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public static isMultipartyCall()Z
    .locals 7

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getActiveCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_0

    move v0, v4

    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_1

    move v1, v4

    :goto_1
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/CallList;->getSecondBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v6

    if-eqz v6, :cond_2

    move v2, v4

    :goto_2
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCdmaMultipartyCall()Z

    move-result v6

    if-eqz v6, :cond_3

    :goto_3
    return v5

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    move v1, v5

    goto :goto_1

    :cond_2
    move v2, v5

    goto :goto_2

    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_6

    :cond_4
    if-eqz v1, :cond_5

    if-nez v2, :cond_6

    :cond_5
    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    :cond_6
    move v3, v4

    :goto_4
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isMultipartyCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v5, v3

    goto :goto_3

    :cond_7
    move v3, v5

    goto :goto_4
.end method

.method public static isOneHandModeOn()Z
    .locals 2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isOnehandModeOn()Z

    move-result v0

    const-string v1, "support_penwindow_callscreen"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "support_onehand_operation"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecUiAdapter;->isPenMultiWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static isOtaMode()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "ota_mode_disable_expand"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "true"

    const-string v2, "ril.domesticOtaStart"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isOtaMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0
.end method

.method public static isOutgoingVideoCall()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v0

    :cond_0
    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isPSDomain()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPSDomain(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isPSDomain(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getDomain(Lcom/android/incallui/Call;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    move v0, v1

    :cond_0
    :goto_0
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isPSDomain : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPSVideoCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPSVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isPSVideoCall(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isPSVoiceCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isPSVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isPSVoiceCall(Lcom/android/incallui/Call;)Z
    .locals 4

    const/4 v2, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getDomain(Lcom/android/incallui/Call;)I

    move-result v1

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v0

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v3

    if-nez v3, :cond_1

    const/4 v2, 0x1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isPrimaryConferenceCall()Z
    .locals 12

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getSencodActiveCall()Lcom/android/incallui/Call;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->getBackgroundCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-nez v0, :cond_3

    move v6, v8

    :goto_0
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_0

    if-nez v6, :cond_1

    :cond_0
    if-nez v2, :cond_4

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_1
    move v3, v8

    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/android/incallui/Call;->isConferenceCall()Z

    move-result v9

    if-eqz v9, :cond_5

    if-eqz v6, :cond_5

    move v4, v8

    :goto_2
    if-eqz v3, :cond_6

    invoke-static {v2}, Lcom/android/incallui/InCallUtils;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_2
    :goto_3
    return v7

    :cond_3
    move v6, v7

    goto :goto_0

    :cond_4
    move v3, v7

    goto :goto_1

    :cond_5
    move v4, v7

    goto :goto_2

    :cond_6
    if-eqz v4, :cond_7

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isCallDisconnectingOrDisconnected(Lcom/android/incallui/Call;)Z

    move-result v9

    if-nez v9, :cond_2

    :cond_7
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/CallList;->hasTwoActiveCall()Z

    move-result v5

    if-eqz v2, :cond_8

    invoke-virtual {v2}, Lcom/android/incallui/Call;->getPhoneType()I

    move-result v9

    const/4 v10, 0x2

    if-ne v9, v10, :cond_8

    const/4 v5, 0x0

    :cond_8
    const-string v9, "InCallUtils"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isPrimaryConferenceCall isPrimaryConference:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,isPrimaryConference2:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " ,isPrimaryConferenceWithTwoActiveCall:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v3, :cond_9

    if-nez v4, :cond_9

    if-eqz v5, :cond_2

    :cond_9
    move v7, v8

    goto :goto_3
.end method

.method public static isQvgaLandscapeVideoCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isQvgaLandscapeVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isQvgaLandscapeVideoCall(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "feature_ktt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "QVGALAND"

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getFrameSize(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isRTLMode()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v3

    if-ne v3, v6, :cond_0

    const/4 v1, 0x1

    :cond_0
    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isRTLMode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v1
.end method

.method public static isReceivedCall()Z
    .locals 6

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->isReceivedCall()Z

    move-result v1

    :cond_0
    return v1
.end method

.method public static isRoamingArea()Z
    .locals 1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/TelecomAdapter;->isRoamingArea()Z

    move-result v0

    return v0
.end method

.method public static isSKTSIM()Z
    .locals 3

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "4"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "45005"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isScreenOn()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    invoke-virtual {v1}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v2

    return v2
.end method

.method public static isSecUi()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public static isServiceRegistered(I)Z
    .locals 8

    const/4 v3, 0x0

    const-string v5, "enabled"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x7

    :try_start_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getFeatureMask()I

    move-result v4

    :cond_0
    and-int v5, v4, p0

    if-ne v5, p0, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    :catch_0
    move-exception v1

    const-string v5, "InCallUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isServiceRegistered:RuntimeException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static isShowCallDetailsEpdgIcon()Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v4

    const/4 v5, 0x0

    invoke-static {v4, v5, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_1

    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEpdgCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x4

    if-eq v4, v5, :cond_0

    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    const-string v2, "InCallUtils"

    const-string v4, "secCallExtra : null"

    invoke-static {v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v2, v3

    goto :goto_0
.end method

.method public static isShowCallDetailsEpdgIcon(Lcom/android/incallui/Call;)Z
    .locals 4

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getEpdgCall : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const-string v1, "InCallUtils"

    const-string v2, "secCallExtra : null"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isShowCallDetailsHDIcon()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isShowCallDetailsHDIcon(Lcom/android/incallui/Call;)Z
    .locals 7

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v3

    :cond_0
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHDIcon : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getHDIcon()I

    move-result v4

    if-ne v4, v2, :cond_2

    move v1, v2

    :goto_1
    const-string v4, "vzw_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getEpdgCall : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getEpdgCall()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    and-int/2addr v1, v2

    :cond_1
    move v3, v1

    goto :goto_0

    :cond_2
    move v1, v3

    goto :goto_1

    :cond_3
    move v2, v3

    goto :goto_2
.end method

.method public static isShowHDVoiceIcon()Z
    .locals 2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getFirstCall()Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isShowHDVoiceIcon(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isShowHDVoiceIcon(Lcom/android/incallui/Call;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v4, "InCallUtils"

    const-string v5, "isShowHDVoiceIcon() call is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "InCallUtils"

    const-string v5, "isShowHDVoiceIcon() secCall is null"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->getWideBandAMR()I

    move-result v4

    if-eqz v4, :cond_5

    const/4 v2, 0x1

    :goto_1
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isShowHDVoiceIcon() isWBMode :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, "feature_kor_open"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSKTSIM()Z

    move-result v4

    if-eqz v4, :cond_8

    :cond_2
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    move v1, v0

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    goto :goto_1

    :cond_6
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_7

    const/4 v0, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_8
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_9

    const-string v4, "feature_kor_open"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_c

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isLGTSIM()Z

    move-result v4

    if-eqz v4, :cond_c

    :cond_9
    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_a

    const/4 v0, 0x0

    goto :goto_2

    :cond_a
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-eqz v4, :cond_b

    if-eqz v2, :cond_b

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_c
    const-string v4, "feature_chn"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isIncoming(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isDialing(I)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_e

    :cond_d
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_e
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x3

    if-eq v4, v5, :cond_f

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0x8

    if-ne v4, v5, :cond_4

    :cond_f
    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_10
    const-string v4, "feature_dcm"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_14

    if-eqz v2, :cond_13

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_13

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_12

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_11

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/16 v5, 0xd

    if-ne v4, v5, :cond_12

    :cond_11
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_12
    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_13
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_14
    const-string v4, "singapore_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_15

    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_15
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    invoke-static {v4}, Lcom/android/incallui/Call$State;->isConnectingOrConnected(I)Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_4

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_16
    const-string v4, "tmo_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_17

    const-string v4, "mpcs_volte_ui"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    :cond_17
    if-eqz v2, :cond_18

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_18
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_19
    const-string v4, "hdvoice_call_status"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1b

    if-eqz v2, :cond_1a

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_1a
    const/4 v0, 0x0

    goto/16 :goto_2

    :cond_1b
    if-eqz v2, :cond_1c

    const/4 v0, 0x1

    goto/16 :goto_2

    :cond_1c
    const/4 v0, 0x0

    goto/16 :goto_2
.end method

.method public static isShowHighQualitySoundText(I)Z
    .locals 5

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getWideBandAMR()I

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getPrevHQTShowState()Z

    move-result v1

    if-nez v1, :cond_3

    const/16 v1, 0x9

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    if-ne p0, v2, :cond_3

    :cond_0
    const-string v1, "InCallUtils"

    const-string v2, "isShowHighQualitySoundText false"

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_1
    :goto_0
    const/4 v1, 0x3

    if-ne p0, v1, :cond_4

    invoke-static {v4}, Lcom/android/incallui/InCallUtils;->setPrevHQTShowState(Z)V

    :cond_2
    :goto_1
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isShowHighQualitySoundText state:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " result :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0

    :cond_3
    const/4 v1, 0x6

    if-eq p0, v1, :cond_1

    const/16 v1, 0xd

    if-eq p0, v1, :cond_1

    if-eq p0, v2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    if-nez v0, :cond_2

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->setPrevHQTShowState(Z)V

    goto :goto_1
.end method

.method public static isShowVZWVoLTEUI()Z
    .locals 2

    const-string v1, "vzw_volte_ui"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVZWLTEVideoCallMenuShow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isSrvccConference(Ljava/lang/String;)Z
    .locals 4

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    const-string v1, "Conference call"

    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSrvccConference : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isStartPopupServiceWhenMakeCallFromOtherApp()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v2, 0x0

    const-string v3, "support_mobilecarrier"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "InCallUtils"

    const-string v4, "do not start popup service when carrier-phone mode"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v2

    :cond_1
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOn()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEasyModeOnEnhanced()Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    const-string v3, "InCallUtils"

    const-string v4, "Popup service is not supported in easy mode."

    invoke-static {v3, v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCoverClosed()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isStartPopupServiceWhenMakeCallFromOtherApp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isStartPopupServiceWhenMakeCallFromOtherApp()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->isStartPopupServiceWhenMakeCallFromOtherApp()Z

    move-result v2

    goto :goto_0
.end method

.method public static isSupportCallTransfer()Z
    .locals 2

    const/4 v0, 0x0

    const-string v1, "support_call_transfer"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "feature_kor_open"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isKTSIM()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportDialpad()Z
    .locals 2

    const/4 v0, 0x1

    const-string v1, "ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "support_folder_hardkey"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSupportRotation()Z
    .locals 4

    const/4 v0, 0x0

    const-string v1, "support_rotation"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "volte_cvo_feature"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCVOEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "InCallUtils"

    const-string v2, "Disabled since cvo is false"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static isSupportRotationOnlyCamera()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportRotation()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    :cond_0
    :goto_0
    return v0

    :cond_1
    const-string v1, "support_rotation_only_camera"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCSVideoCall()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string v1, "ui_for_kor"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isQvgaLandscapeVideoCall()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isIMSLandscapeConfCall()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVgaLandscapeVideoCall()Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isSwisMode()Z
    .locals 4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->getSwisState()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    goto :goto_0
.end method

.method public static isTalkBackEnabled(Landroid/content/Context;)Z
    .locals 11

    const/4 v8, 0x0

    const/16 v1, 0x3a

    const-string v0, "com.google.android.marvin.talkback"

    const-string v2, "com.samsung.android.app.talkback"

    new-instance v7, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x3a

    invoke-direct {v7, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v8

    :cond_1
    const/4 v6, 0x0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string v10, "enabled_accessibility_services"

    invoke-static {v9, v10}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    :cond_2
    if-nez v6, :cond_3

    const-string v6, ""

    :cond_3
    move-object v3, v7

    invoke-virtual {v3, v6}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v3}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_4

    const-string v9, "com.google.android.marvin.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    :cond_5
    const-string v9, "com.samsung.android.app.talkback"

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "com.samsung.android.app.talkback/com.samsung.android.app.talkback.TalkBackService"

    invoke-virtual {v6, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    :cond_6
    const/4 v8, 0x1

    goto :goto_0
.end method

.method public static isUltraPowerSavingMode(Landroid/content/Context;)Z
    .locals 7

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/emergencymode/EmergencyManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/emergencymode/EmergencyManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sec/android/emergencymode/EmergencyManager;->isEmergencyMode()Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v4, 0x200

    invoke-virtual {v1, v4}, Lcom/sec/android/emergencymode/EmergencyManager;->checkModeType(I)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :goto_0
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isUltraPowerSavingMode : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isVZWLTEVideoCallMenuShow()Z
    .locals 6

    const/4 v5, 0x1

    sget-boolean v2, Lcom/android/incallui/InCallUtils;->mIsInitLTEVideoCallMenuShow:Z

    if-eqz v2, :cond_0

    sget-boolean v2, Lcom/android/incallui/InCallUtils;->mIsLTEVideoCallMenuShow:Z

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v2, v0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isLTEVideoCallMenuShow()Z

    move-result v2

    sput-boolean v2, Lcom/android/incallui/InCallUtils;->mIsLTEVideoCallMenuShow:Z

    sput-boolean v5, Lcom/android/incallui/InCallUtils;->mIsInitLTEVideoCallMenuShow:Z

    :cond_1
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVZWLTEVideoCallMenuShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/InCallUtils;->mIsLTEVideoCallMenuShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mIsInitLTEVideoCallMenuShow:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-boolean v4, Lcom/android/incallui/InCallUtils;->mIsInitLTEVideoCallMenuShow:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sget-boolean v2, Lcom/android/incallui/InCallUtils;->mIsLTEVideoCallMenuShow:Z

    goto :goto_0
.end method

.method private static isValidNumber(C)Z
    .locals 2

    const/4 v0, 0x1

    const/16 v1, 0x30

    if-lt p0, v1, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/16 v1, 0x23

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2a

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2d

    if-eq p0, v1, :cond_0

    const/16 v1, 0x28

    if-eq p0, v1, :cond_0

    const/16 v1, 0x29

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2c

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2f

    if-eq p0, v1, :cond_0

    const/16 v1, 0x4e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x2e

    if-eq p0, v1, :cond_0

    const/16 v1, 0x20

    if-eq p0, v1, :cond_0

    const/16 v1, 0x3b

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isValidPhoneNumber(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isValidNumber(C)Z

    move-result v4

    if-eqz v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isVgaLandscapeVideoCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVgaLandscapeVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isVgaLandscapeVideoCall(Lcom/android/incallui/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "VGALAND"

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getFrameSize(Lcom/android/incallui/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isVideoCall(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v0

    :cond_0
    return v0
.end method

.method public static isVoLTEFeatureEnabled(Landroid/content/Context;)Z
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-static {v2, p0}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isVoLTEFeatureEnabled()Z

    move-result v0

    :cond_0
    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVoLTEFeatureEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    return v0
.end method

.method public static isVoLTESettingsEnabled()I
    .locals 9

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v6, "connectivity"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isVoLTEFeatureEnabled(Landroid/content/Context;)Z

    move-result v4

    invoke-static {v1}, Lcom/android/incallui/InCallUtils;->isLTEVideoCallEnabled(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getMobileDataEnabled()Z

    move-result v3

    const-string v6, "InCallUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isVoLTESettingsEnabled isVoLTEFeatureEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / isLTEVideoCallEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " / isMobileDataEnabled: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v5, 0x0

    if-nez v2, :cond_1

    const/4 v5, 0x1

    :cond_0
    :goto_0
    return v5

    :cond_1
    if-nez v4, :cond_2

    const/4 v5, 0x2

    goto :goto_0

    :cond_2
    if-nez v3, :cond_0

    const/4 v5, 0x3

    goto :goto_0
.end method

.method public static isVoWIFIRegistered()Z
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v8

    const-string v9, "CscFeature_RIL_SupportEpdg"

    invoke-virtual {v8, v9}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v8, "phone"

    invoke-virtual {v0, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v5

    const/16 v8, 0x12

    if-ne v5, v8, :cond_2

    move v3, v6

    :goto_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isImsRegistered()Z

    move-result v2

    const-string v8, "InCallUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isNetworkTypeIWLAN="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isImsRegistered="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_3

    if-eqz v2, :cond_3

    :goto_2
    move v7, v6

    goto :goto_0

    :cond_2
    move v3, v7

    goto :goto_1

    :cond_3
    move v6, v7

    goto :goto_2
.end method

.method public static isVoiceCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVoiceCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isVoiceCall(Lcom/android/incallui/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getCallType(Lcom/android/incallui/Call;)I

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVolteGroupCall()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->isVolteGroupCall(Lcom/android/incallui/Call;)Z

    move-result v1

    return v1
.end method

.method public static isVolteGroupCall(Lcom/android/incallui/Call;)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isVolteGroupCall : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteGroupCall()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->isVolteGroupCall()I

    move-result v3

    if-ne v3, v1, :cond_0

    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_0
.end method

.method public static isVolteIconPossible()Z
    .locals 11

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableVoLTE()Z

    move-result v8

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailablePSVT()Z

    move-result v9

    and-int v3, v8, v9

    const/4 v1, 0x1

    const-string v8, "feature_lgt"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "default_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const/4 v1, 0x0

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_type"

    invoke-static {v8, v9, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isDeviceOnLTE()Z

    move-result v2

    const-string v8, "common_volte"

    invoke-static {v8}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isAvailableVoLTE()Z

    move-result v4

    const-string v8, "InCallUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "isRegistered = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isVolteSupported = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " voicecall_type = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isLTEConnected = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    if-ne v6, v4, :cond_2

    if-nez v5, :cond_2

    if-eqz v2, :cond_2

    :goto_0
    return v6

    :cond_2
    move v6, v7

    goto :goto_0

    :cond_3
    const-string v6, "InCallUtils"

    const-string v8, "isVolteIconPossible end false "

    invoke-static {v6, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v6, v7

    goto :goto_0
.end method

.method public static isWiredHeadsetOn()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v2

    return v2
.end method

.method public static makeGoToSleepWithNoLockSound()V
    .locals 6

    const-string v2, "power"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v1

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v1, v2, v3, v4, v5}, Landroid/os/IPowerManager;->goToSleep(JII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public static markAsAddCall(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/InCallUtils;->mMarkAsAddCall:Z

    return-void
.end method

.method public static moveCameraTaskToBack()V
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCameraTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->moveTaskToBack(I)V

    const/4 v2, 0x1

    sput-boolean v2, Lcom/android/incallui/InCallUtils;->isExecuteMoveTaskToBack:Z

    const-string v2, "InCallUtils"

    const-string v3, "Camera is move to back"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "InCallUtils"

    const-string v3, " Failed !! moveTaskToBack"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static moveCameraTaskToFront()V
    .locals 6

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getCameraTask()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    sget-boolean v2, Lcom/android/incallui/InCallUtils;->isExecuteMoveTaskToBack:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v2

    iget v3, v0, Landroid/app/ActivityManager$RunningTaskInfo;->id:I

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v2, v3, v4, v5}, Landroid/app/IActivityManager;->moveTaskToFront(IILandroid/os/Bundle;)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/incallui/InCallUtils;->isExecuteMoveTaskToBack:Z

    const-string v2, "InCallUtils"

    const-string v3, "Camera is move to front "

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v1

    const-string v2, "InCallUtils"

    const-string v3, " Failed !! moveTaskCameraToFront"

    invoke-static {v2, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static needToDisableForKnox(I)Z
    .locals 5

    const/4 v1, 0x1

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/incallui/InCallPresenter;->getKnoxCustomDisabledItems()I

    move-result v0

    and-int/lit16 v2, v0, 0xff

    const/16 v3, 0xff

    if-ne v2, v3, :cond_0

    const-string v2, "InCallUtils"

    const-string v3, "needToDisableMenuForKnox: CALL_SCREEN_ALL"

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_0
    return v1

    :cond_0
    and-int v2, v0, p0

    if-eqz v2, :cond_1

    const-string v2, "InCallUtils"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "needToDisableMenuForKnox: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/incallui/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static needToNotifyDetailsChanged(Lcom/android/incallui/Call;Landroid/telecom/Call;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const/4 v4, 0x0

    :goto_0
    return v4

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->getSecCallExtra()Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v2

    invoke-static {p1}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Landroid/telecom/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v1

    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isPSDomain()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_2

    if-eqz v1, :cond_2

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v5

    if-eq v4, v5, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-virtual {v3}, Lcom/android/incallui/secui/SecCall;->isVideoCall()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2}, Lcom/android/services/telephony/common/SecCallExtra;->getVideoResolution()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/services/telephony/common/SecCallExtra;->getVideoResolution()I

    move-result v5

    if-eq v4, v5, :cond_2

    const/4 v0, 0x1

    :cond_2
    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "needToNotifyDetailsChanged: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v0

    goto :goto_0
.end method

.method public static needToShowCustomOutgoingAnimation()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVideoCall()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isEasyModeOn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isCarModeOn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isMirrorLinkModeOn()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v3

    invoke-static {v3, v0, v2}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v3

    if-nez v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public static needToShowMultiparty()Z
    .locals 4

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMultipartyCall()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isPrimaryConferenceCall()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    :goto_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_3

    const/4 v0, 0x0

    :cond_1
    :goto_1
    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "needToShowMultiparty: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getPendingOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getOutgoingCall()Lcom/android/incallui/Call;

    move-result-object v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static needToShowVoiceControlNotification()Z
    .locals 3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getState()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isVoiceControlOn()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/TelecomAdapter;->shouldVibrate()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static needToUpdateEmerencyCallState(Lcom/android/incallui/Call;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->getSecCallExtra(Lcom/android/incallui/Call;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getUpdateEmerencyCallState()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static playCameraSound(I)V
    .locals 10

    const-string v1, "cam_start"

    const-string v2, "cam_stop"

    const-string v0, "cam_click"

    move-object v6, v0

    packed-switch p0, :pswitch_data_0

    :goto_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "android.resource://com.android.incallui/raw/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v7, "InCallUtils"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "PlayCameraSound filePath  : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->stop()V

    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->release()V

    const/4 v7, 0x0

    sput-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    new-instance v7, Landroid/media/MediaPlayer;

    invoke-direct {v7}, Landroid/media/MediaPlayer;-><init>()V

    sput-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    :try_start_0
    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v7, v3, v8}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x7

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->prepare()V

    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setLooping(Z)V

    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v7}, Landroid/media/MediaPlayer;->start()V

    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v8, Lcom/android/incallui/InCallUtils$2;

    invoke-direct {v8}, Lcom/android/incallui/InCallUtils$2;-><init>()V

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    sget-object v7, Lcom/android/incallui/InCallUtils;->mediaPlayer:Landroid/media/MediaPlayer;

    new-instance v8, Lcom/android/incallui/InCallUtils$3;

    invoke-direct {v8}, Lcom/android/incallui/InCallUtils$3;-><init>()V

    invoke-virtual {v7, v8}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :pswitch_0
    move-object v6, v1

    goto/16 :goto_0

    :pswitch_1
    move-object v6, v2

    goto/16 :goto_0

    :pswitch_2
    move-object v6, v0

    goto/16 :goto_0

    :catch_0
    move-exception v4

    const-string v7, "InCallUtils"

    const-string v8, "media player failed"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static pokeUserActivity(Landroid/content/Context;)V
    .locals 4

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v3, v1}, Landroid/os/PowerManager;->userActivity(JZ)V

    return-void
.end method

.method public static putOneHandDirection(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "onehand_direction"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static sendBroadcastDiapadStateforUWA(Landroid/content/Context;Z)V
    .locals 6

    const-string v3, "support_uwa"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    return-void

    :cond_0
    const-string v0, "com.uplus.agent.action.CalllDialpad"

    const/4 v1, 0x0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v3, "CallDialpadopen"

    invoke-virtual {v1, v3, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    new-instance v2, Landroid/content/Intent;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v2, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    invoke-virtual {p0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "send broadcast UWA intent action : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", extra : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static sendBroadcastToTGroupOn(Ljava/lang/String;)V
    .locals 4

    const-string v1, "support_tgroupon"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "InCallUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "sendBroadcastToTGroupOn()..."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.skt.tgroupon.action.NOTIFY_CALL_SCREEN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "mode"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp;->sendBroadcast(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public static sendNotificationToSmartDeviceAgent(Lcom/android/incallui/Call;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 7

    const/4 v6, 0x4

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    if-eq v4, v6, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getState()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_2

    :cond_0
    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumberPresentation()I

    move-result v3

    const/4 v1, 0x0

    new-instance v2, Landroid/content/Intent;

    const-string v4, "com.android.phone.sda.action.RINGING"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.nttdocomo.android.smartdeviceagent"

    const-string v5, "com.nttdocomo.android.smartdeviceagent.RingingReceiver"

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "com.android.phone.sda.extra.CALL_TYPE"

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-nez p1, :cond_5

    const-string v4, "com.android.phone.sda.extra.PHONE_NUMBER"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v4, 0x7f0d0126

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const v4, 0x7f0d0127

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_1
    :goto_1
    const-string v4, "com.android.phone.sda.extra.NAME"

    invoke-virtual {v2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDA Name: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v4, "InCallUtils"

    const-string v5, "Ringing intent send to Smart Device Agent"

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    :cond_4
    if-ne v3, v6, :cond_1

    const v4, 0x7f0d0128

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_5
    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    if-eqz v4, :cond_7

    const-string v4, "com.android.phone.sda.extra.PHONE_NUMBER"

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDA originNumber: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->originalNumber:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_2
    iget-object v1, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->name:Ljava/lang/String;

    goto :goto_1

    :cond_7
    iget-object v4, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    if-eqz v4, :cond_6

    const-string v4, "com.android.phone.sda.extra.PHONE_NUMBER"

    iget-object v5, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v4, "InCallUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SDA number: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p1, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->number:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method public static setCallForwardingState(Z)V
    .locals 3

    const-string v0, "InCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCallForwardingState() SideSync : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/incallui/InCallUtils$CallForwardingState;->STARTED:Lcom/android/incallui/InCallUtils$CallForwardingState;

    sput-object v0, Lcom/android/incallui/InCallUtils;->sIsCallForwardingState:Lcom/android/incallui/InCallUtils$CallForwardingState;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/android/incallui/InCallUtils$CallForwardingState;->STOPPED:Lcom/android/incallui/InCallUtils$CallForwardingState;

    sput-object v0, Lcom/android/incallui/InCallUtils;->sIsCallForwardingState:Lcom/android/incallui/InCallUtils$CallForwardingState;

    goto :goto_0
.end method

.method public static setCameraoffSmartAnswer(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/InCallUtils;->isCameraoffSmartAnswer:Z

    return-void
.end method

.method public static setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;
    .locals 6

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/incallui/InCallApp;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iput-object p0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    const/4 v3, 0x0

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setConfigurationLocale - previousLocale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " locale : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method public static varargs setDescriptionToView(Landroid/view/View;[I)V
    .locals 7

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget v4, v0, v2

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v6

    invoke-virtual {v6, v4}, Lcom/android/incallui/InCallApp;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static varargs setDescriptionToView(Landroid/view/View;[Ljava/lang/String;)V
    .locals 7

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    const/4 v1, 0x0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_1

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static setFullScreenMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/InCallUtils;->isFullScreen:Z

    return-void
.end method

.method public static setMergeAfterAnswer(Z)V
    .locals 3

    const-string v0, "InCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMergeAfterAnswer - merge : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)V

    sput-boolean p0, Lcom/android/incallui/InCallUtils;->sMakeMergeAfterAnswer:Z

    return-void
.end method

.method public static setPrevHQTShowState(Z)V
    .locals 3

    const-string v0, "InCallUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPrevHQTShowState status : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sput-boolean p0, Lcom/android/incallui/InCallUtils;->mPrevHQTShowState:Z

    return-void
.end method

.method public static setReportSpamNumber(Ljava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/incallui/TelecomAdapter;->setReportSpamNumber(Ljava/lang/String;)V

    return-void
.end method

.method public static setRippleSize(Landroid/view/View;II)V
    .locals 11

    const/4 v7, -0x1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    if-eq v6, v7, :cond_0

    if-ne v5, v7, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    div-int/lit8 v1, v6, 0x2

    div-int/lit8 v2, v5, 0x2

    div-int/lit8 v4, p1, 0x2

    div-int/lit8 v3, p2, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v7, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v7, :cond_0

    sub-int v7, v1, v4

    sub-int v8, v2, v3

    add-int v9, v1, v4

    add-int v10, v2, v3

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method

.method public static setRippleSize(Landroid/view/View;IIII)V
    .locals 9

    const/4 v5, -0x1

    if-eqz p0, :cond_0

    if-eq p1, v5, :cond_0

    if-ne p2, v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    div-int/lit8 v1, p1, 0x2

    div-int/lit8 v2, p2, 0x2

    div-int/lit8 v4, p3, 0x2

    div-int/lit8 v3, p4, 0x2

    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getCurrent()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v5, v0, Landroid/graphics/drawable/RippleDrawable;

    if-eqz v5, :cond_0

    sub-int v5, v1, v4

    sub-int v6, v2, v3

    add-int v7, v1, v4

    add-int v8, v2, v3

    invoke-virtual {v0, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    goto :goto_0
.end method

.method public static setRippleSizeWithViewWidth(Landroid/view/View;II)V
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    new-instance v1, Lcom/android/incallui/InCallUtils$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/incallui/InCallUtils$1;-><init>(Landroid/view/View;II)V

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method

.method public static setVoicetalkLocale()Ljava/util/Locale;
    .locals 1

    invoke-static {}, Lcom/android/incallui/InCallUtils;->getVoicetalkLocale()Ljava/util/Locale;

    move-result-object v0

    invoke-static {v0}, Lcom/android/incallui/InCallUtils;->setConfigurationLocale(Ljava/util/Locale;)Ljava/util/Locale;

    move-result-object v0

    return-object v0
.end method

.method public static translateDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 6

    const/4 v4, 0x1

    const/4 v2, -0x1

    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    return v2

    :cond_0
    const-string v3, "\\, "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    if-ne v3, v4, :cond_1

    const/4 v3, 0x0

    aget-object v0, v1, v3

    :goto_1
    if-nez v0, :cond_3

    const-string v3, "InCallUtils"

    const-string v4, "translateDisconnectCause: reason is null"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    array-length v3, v1

    if-le v3, v4, :cond_2

    aget-object v0, v1, v4

    goto :goto_1

    :cond_2
    const-string v3, "InCallUtils"

    const-string v4, "translateDisconnectCause: result.length is 0"

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {v0}, Landroid/telephony/DisconnectCause;->disconnectCauseId(Ljava/lang/String;)I

    move-result v2

    const-string v3, "InCallUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "telephonyDisconnectCause: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " -> "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
