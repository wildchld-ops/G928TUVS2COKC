.class public Lcom/android/server/telecom/secutils/AutoRedial;
.super Ljava/lang/Object;
.source "AutoRedial.java"


# instance fields
.field private final REDIAL_CALL_INIT_COUNT:I

.field private final REDIAL_CALL_MAX_COUNT:I

.field private mContext:Landroid/content/Context;

.field private mRedialCount:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/android/server/telecom/secutils/AutoRedial;->REDIAL_CALL_INIT_COUNT:I

    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->REDIAL_CALL_MAX_COUNT:I

    iput v1, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    iput-object p1, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mContext:Landroid/content/Context;

    return-void
.end method

.method private shouldMakeAutoRedial(Lcom/android/server/telecom/Call;I)Z
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "feature_multisim"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/android/server/telecom/secutils/TelecomUtilsMultiSIM;->getPhoneId(Lcom/android/server/telecom/Call;)I

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autoredial_mode_sim2"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_2

    move v0, v1

    :goto_1
    const-string v3, "auto_retry_enable"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mContext:Landroid/content/Context;

    invoke-static {v3, v0}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->shouldMakeAutoRedial(Landroid/content/Context;Z)Z

    move-result v0

    :cond_0
    const-string v3, "AutoRedial"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startAutoRedial : isRedialMode = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    new-array v5, v2, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-nez v0, :cond_5

    :cond_1
    :goto_2
    return v2

    :cond_2
    move v0, v2

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "autoredial_mode"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_4

    move v0, v1

    goto :goto_1

    :cond_4
    move v0, v2

    goto :goto_1

    :cond_5
    const/4 v0, 0x3

    if-eq p2, v0, :cond_6

    const-string v0, "AutoRedial"

    const-string v1, "startAutoRedial : previous state is not Dialing"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "AutoRedial"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isEmergencyCall = "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v3

    sparse-switch v3, :sswitch_data_0

    iget v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    move v2, v1

    goto :goto_2

    :sswitch_0
    const-string v1, "AutoRedial"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "startAutoRedial : DO not make redial in current disconnectedCause : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :cond_8
    move v0, v2

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_0
        0x3 -> :sswitch_0
        0x7 -> :sswitch_0
        0x10 -> :sswitch_0
        0x15 -> :sswitch_0
        0x24 -> :sswitch_0
        0xf8 -> :sswitch_0
    .end sparse-switch
.end method

.method private shouldMakeCsRedialE911(Lcom/android/server/telecom/Call;I)Z
    .locals 8

    const/4 v7, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    const-string v0, "cs_e911"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const-string v0, "AutoRedial"

    const-string v3, "shouldMakeCsRedialE911."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v4}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/SecCallExtra;->getSecCallExtra(Landroid/os/Bundle;)Lcom/android/services/telephony/common/SecCallExtra;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    if-eqz v3, :cond_0

    const-string v5, "AutoRedial"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Emergency : "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " Type = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " Domain = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " oldState = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " disconnectedCause = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v6, " !isWfcEmergencyCall = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->isWfcEmergencyCall()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v6, v2, [Ljava/lang/Object;

    invoke-static {v5, v0, v6}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/android/server/telecom/Call;->isEmergencyCall()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getType()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->getDomain()I

    move-result v0

    const/4 v5, 0x2

    if-ne v0, v5, :cond_0

    if-ne p2, v7, :cond_0

    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v0

    if-eq v7, v0, :cond_0

    invoke-virtual {v3}, Lcom/android/services/telephony/common/SecCallExtra;->isWfcEmergencyCall()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AutoRedial"

    const-string v3, "make CS REDIAL E911 CALL!"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v3, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v1

    goto/16 :goto_0

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public startAutoRedial(Lcom/android/server/telecom/Call;I)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/AutoRedial;->shouldMakeCsRedialE911(Lcom/android/server/telecom/Call;I)Z

    move-result v0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/secutils/AutoRedial;->shouldMakeAutoRedial(Lcom/android/server/telecom/Call;I)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_5

    :cond_0
    iget v1, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    const-string v1, "auto_retry_enable"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    const/16 v2, 0xa

    invoke-static {v1, v2}, Lcom/android/server/telecom/operator/usa/TelecomExtension;->recalculateRedialCount(II)I

    move-result v1

    iput v1, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    :cond_1
    invoke-static {v4}, Lcom/android/server/telecom/secutils/TelecomUtils;->getLastMoCallIntent(Z)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v2, Lcom/android/services/telephony/common/SecCallExtra;

    invoke-direct {v2}, Lcom/android/services/telephony/common/SecCallExtra;-><init>()V

    if-nez v0, :cond_2

    invoke-virtual {v2, v4}, Lcom/android/services/telephony/common/SecCallExtra;->setRedialCall(Z)V

    :cond_2
    const-string v0, "videocall"

    invoke-virtual {v1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "videocall"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_3
    const-string v0, "android.telecom.extra.OUTGOING_CALL_EXTRAS"

    invoke-static {v2}, Lcom/android/services/telephony/common/SecCallExtra;->createSecCallExtraBundle(Lcom/android/services/telephony/common/SecCallExtra;)Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/server/telecom/CallReceiver;->processOutgoingCallIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    :cond_4
    :goto_0
    return-void

    :cond_5
    iput v3, p0, Lcom/android/server/telecom/secutils/AutoRedial;->mRedialCount:I

    goto :goto_0
.end method
