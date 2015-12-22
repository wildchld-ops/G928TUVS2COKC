.class public Lcom/android/incallui/IMSErrorUtils;
.super Ljava/lang/Object;
.source "IMSErrorUtils.java"


# static fields
.field private static mPSBarringEventReceived:Z

.field private static simulateErrorCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/incallui/IMSErrorUtils;->mPSBarringEventReceived:Z

    sput v0, Lcom/android/incallui/IMSErrorUtils;->simulateErrorCount:I

    return-void
.end method

.method private static canDivertToVoLTE()Z
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isVolteIconPossible()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static divertToVoiceCall(Ljava/lang/String;ZI)V
    .locals 5

    const/4 v4, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "divertToVoiceCall: toVoLTE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL_PRIVILEGED"

    const-string v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p0, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    if-nez p1, :cond_1

    const-string v1, "cs_voice_call_outgoing"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_1
    const-string v1, "feature_lgt"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0x19f

    if-ne p2, v1, :cond_2

    const-string v1, "getNumFromIntentIfResultDataIsNull"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_2
    invoke-static {}, Lcom/android/incallui/TelecomAdapter;->getInstance()Lcom/android/incallui/TelecomAdapter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/TelecomAdapter;->storeSpeakerState(Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/incallui/InCallApp;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method public static getDisconnectCauseAction_DCM(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 13

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    const/4 v10, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const-string v2, ""

    const/4 v5, -0x1

    const/4 v9, 0x0

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v11

    if-eqz v11, :cond_2

    const/4 v1, 0x1

    :goto_0
    sparse-switch p1, :sswitch_data_0

    :goto_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, -0x1

    if-eq v5, v11, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v11, "toVoLTE"

    invoke-virtual {v6, v11, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "noti_type"

    invoke-virtual {v6, v11, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "message"

    invoke-virtual {v6, v11, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "number"

    invoke-virtual {v6, v11, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v11, "show_endscreen"

    invoke-virtual {v6, v11, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v11, "errorCode"

    invoke-virtual {v6, v11, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v11, "eng"

    sget-object v12, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "isVideoCall    : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "TOVOLTE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NOTI_TYPE      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "MESSAGE        : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "NUMBER         : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "errorCode      : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "   SIP_ERROR : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "SHOW_ENDSCREEN : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_1
    :goto_2
    return-object v6

    :cond_2
    const/4 v1, 0x0

    goto/16 :goto_0

    :sswitch_0
    if-eqz v1, :cond_3

    const v5, 0x7f0d0338

    const/4 v3, 0x3

    goto/16 :goto_1

    :cond_3
    const/4 v6, 0x0

    goto :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x1e0 -> :sswitch_0
        0x1e8 -> :sswitch_0
        0x7d1 -> :sswitch_0
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_KTT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 16

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_2

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v13

    if-eqz v13, :cond_3

    const/4 v3, 0x1

    :goto_1
    sparse-switch p1, :sswitch_data_0

    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, -0x1

    if-eq v7, v13, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    const-string v13, "toVoLTE"

    invoke-virtual {v8, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "noti_type"

    invoke-virtual {v8, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "message"

    invoke-virtual {v8, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "number"

    invoke-virtual {v8, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "show_endscreen"

    invoke-virtual {v8, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "eng"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoDivertSettings : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideoCall    : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOVOLTE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTI_TYPE      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MESSAGE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NUMBER         : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errorCode      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   SIP_ERROR : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SHOW_ENDSCREEN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_1
    return-object v8

    :cond_2
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_4

    const v7, 0x7f0d0261

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_4
    const v7, 0x7f0d0237

    goto :goto_3

    :sswitch_2
    if-eqz v3, :cond_5

    const v7, 0x7f0d0267

    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_5
    const v7, 0x7f0d0239

    goto :goto_4

    :sswitch_3
    if-eqz v3, :cond_6

    const v7, 0x7f0d0264

    :goto_5
    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_6
    const v7, 0x7f0d023a

    goto :goto_5

    :sswitch_4
    if-eqz v3, :cond_7

    const v7, 0x7f0d0262

    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_7
    const v7, 0x7f0d0238

    goto :goto_6

    :sswitch_5
    if-eqz v3, :cond_8

    const v7, 0x7f0d0268

    :goto_7
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f0d023b

    goto :goto_7

    :sswitch_6
    if-eqz v3, :cond_9

    const v7, 0x7f0d0282

    const/4 v5, 0x2

    :goto_8
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_9
    const v7, 0x7f0d023c

    const/4 v5, 0x2

    goto :goto_8

    :sswitch_7
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_8
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_9
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_a
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_b
    const/16 v11, 0x194

    goto/16 :goto_2

    :sswitch_c
    const/16 v11, 0x198

    goto/16 :goto_2

    :sswitch_d
    if-eqz v3, :cond_b

    if-eqz v1, :cond_a

    const v7, 0x7f0d0286

    const/4 v5, 0x2

    :goto_9
    const/16 v11, 0x19f

    goto/16 :goto_2

    :cond_a
    const v7, 0x7f0d0285

    const/4 v5, 0x4

    goto :goto_9

    :cond_b
    const v7, 0x7f0d0240

    const/4 v5, 0x2

    goto :goto_9

    :sswitch_e
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :sswitch_f
    if-eqz v3, :cond_c

    if-eqz v1, :cond_d

    const v7, 0x7f0d026a

    const/4 v5, 0x2

    :goto_a
    invoke-static {}, Lcom/android/incallui/IMSErrorUtils;->canDivertToVoLTE()Z

    move-result v12

    :cond_c
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :cond_d
    const v7, 0x7f0d0269

    const/4 v5, 0x4

    goto :goto_a

    :sswitch_10
    if-eqz v3, :cond_e

    const v7, 0x7f0d026b

    const/4 v5, 0x2

    :goto_b
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :cond_e
    const v7, 0x7f0d0249

    const/4 v5, 0x2

    goto :goto_b

    :sswitch_11
    if-eqz v3, :cond_f

    const v7, 0x7f0d028a

    :goto_c
    const/4 v5, 0x1

    const/16 v11, 0x1e4

    goto/16 :goto_2

    :cond_f
    const v7, 0x7f0d0242

    goto :goto_c

    :sswitch_12
    if-eqz v3, :cond_10

    const v7, 0x7f0d028b

    :goto_d
    const/4 v5, 0x1

    const/16 v11, 0x1e6

    goto/16 :goto_2

    :cond_10
    const v7, 0x7f0d0243

    goto :goto_d

    :sswitch_13
    const/16 v11, 0x1e7

    goto/16 :goto_2

    :sswitch_14
    const/16 v11, 0x1f3

    goto/16 :goto_2

    :sswitch_15
    if-eqz v3, :cond_11

    const v7, 0x7f0d026c

    :goto_e
    const/4 v5, 0x2

    const/16 v11, 0x1f4

    goto/16 :goto_2

    :cond_11
    const v7, 0x7f0d024a

    goto :goto_e

    :sswitch_16
    if-eqz v3, :cond_12

    const v7, 0x7f0d026d

    :goto_f
    const/4 v5, 0x2

    const/16 v11, 0x1f7

    goto/16 :goto_2

    :cond_12
    const v7, 0x7f0d024b

    goto :goto_f

    :sswitch_17
    if-eqz v3, :cond_13

    const v7, 0x7f0d026e

    :goto_10
    const/4 v5, 0x2

    const/16 v11, 0x1f8

    goto/16 :goto_2

    :cond_13
    const v7, 0x7f0d024c

    goto :goto_10

    :sswitch_18
    if-eqz v3, :cond_14

    const v7, 0x7f0d0290

    :goto_11
    const/4 v5, 0x1

    const/16 v11, 0x25b

    goto/16 :goto_2

    :cond_14
    const v7, 0x7f0d0248

    goto :goto_11

    :sswitch_19
    const/16 v11, 0x25e

    goto/16 :goto_2

    :sswitch_1a
    const/16 v11, 0x25e

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_0
        0x194 -> :sswitch_b
        0x198 -> :sswitch_c
        0x19f -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1f4 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x25b -> :sswitch_18
        0x25e -> :sswitch_19
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_3
        0x579 -> :sswitch_4
        0x6a5 -> :sswitch_5
        0x7d1 -> :sswitch_6
        0x835 -> :sswitch_1a
        0x836 -> :sswitch_14
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_KTT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 17

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const/4 v13, 0x0

    const/4 v11, 0x1

    const/4 v6, 0x0

    const-string v5, ""

    const/4 v8, -0x1

    const/4 v12, -0x1

    const/4 v3, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string v15, "videocall_settings"

    const/16 v16, 0x0

    invoke-static/range {v14 .. v16}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    if-nez v14, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v14

    if-eqz v14, :cond_5

    const/4 v4, 0x1

    :goto_1
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_2
    const/4 v14, -0x1

    if-eq v8, v14, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    :cond_1
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v14

    if-lez v14, :cond_2

    const/4 v14, -0x1

    if-eq v3, v14, :cond_2

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/incallui/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v7

    const-string v14, "toVoLTE"

    invoke-virtual {v9, v14, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v14, "noti_type"

    invoke-virtual {v9, v14, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v14, "message"

    invoke-virtual {v9, v14, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "number"

    invoke-virtual {v9, v14, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v14, "show_endscreen"

    invoke-virtual {v9, v14, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v14, "eng"

    sget-object v15, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SIP_ERROR EVENT ID: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/IMSErrorUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "autoDivertSettings : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "isVideoCall    : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TOVOLTE        : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NOTI_TYPE      : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "MESSAGE        : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "NUMBER         : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "errorCode      : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, "   SIP_ERROR : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "SHOW_ENDSCREEN : "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v9

    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v4, 0x0

    goto/16 :goto_1

    :sswitch_0
    if-eqz v4, :cond_6

    const v8, 0x7f0d0261

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_6
    const v8, 0x7f0d0237

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_1
    if-eqz v4, :cond_7

    const v8, 0x7f0d0267

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_7
    const v8, 0x7f0d0239

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v4, :cond_8

    const v8, 0x7f0d0295

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_8
    const v8, 0x7f0d023a

    const/4 v6, 0x2

    goto/16 :goto_2

    :sswitch_3
    if-eqz v4, :cond_9

    const v8, 0x7f0d0262

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_9
    const v8, 0x7f0d0238

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_4
    if-eqz v4, :cond_a

    const v8, 0x7f0d0268

    const/4 v6, 0x1

    goto/16 :goto_2

    :cond_a
    const v8, 0x7f0d023b

    const/4 v6, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v4, :cond_b

    const v8, 0x7f0d0296

    const/4 v6, 0x2

    :goto_3
    const/16 v12, 0x17c

    move v3, v12

    goto/16 :goto_2

    :cond_b
    const/4 v6, 0x5

    goto :goto_3

    :sswitch_6
    const/16 v12, 0x193

    move v3, v12

    goto/16 :goto_2

    :sswitch_7
    if-eqz v4, :cond_c

    const v8, 0x7f0d0297

    const/4 v6, 0x2

    :goto_4
    const/16 v12, 0x194

    move v3, v12

    goto/16 :goto_2

    :cond_c
    const/4 v6, 0x5

    goto :goto_4

    :sswitch_8
    const/16 v12, 0x198

    move v3, v12

    goto/16 :goto_2

    :sswitch_9
    if-eqz v4, :cond_e

    if-eqz v1, :cond_d

    const v8, 0x7f0d02aa

    const/4 v6, 0x2

    :goto_5
    const/16 v12, 0x19f

    goto/16 :goto_2

    :cond_d
    const v8, 0x7f0d02a9

    const/4 v6, 0x4

    goto :goto_5

    :cond_e
    const v8, 0x7f0d0240

    const/4 v6, 0x2

    goto :goto_5

    :sswitch_a
    const/16 v12, 0x1e0

    goto/16 :goto_2

    :sswitch_b
    if-eqz v4, :cond_f

    const v8, 0x7f0d028a

    const/4 v6, 0x1

    :goto_6
    const/16 v12, 0x1e4

    move v3, v12

    goto/16 :goto_2

    :cond_f
    const v8, 0x7f0d0242

    const/4 v6, 0x1

    goto :goto_6

    :sswitch_c
    if-eqz v4, :cond_10

    const v8, 0x7f0d0298

    const/4 v6, 0x1

    :goto_7
    const/16 v12, 0x1e6

    move v3, v12

    goto/16 :goto_2

    :cond_10
    const v8, 0x7f0d0243

    const/4 v6, 0x1

    goto :goto_7

    :sswitch_d
    const/16 v12, 0x1e7

    goto/16 :goto_2

    :sswitch_e
    if-eqz v4, :cond_11

    const v8, 0x7f0d0299

    const/4 v6, 0x2

    :goto_8
    const/16 v12, 0x1f3

    move v3, v12

    goto/16 :goto_2

    :cond_11
    const/4 v6, 0x5

    goto :goto_8

    :sswitch_f
    if-eqz v4, :cond_12

    const v8, 0x7f0d029a

    const/4 v6, 0x1

    :cond_12
    const/16 v12, 0x1f4

    move v3, v12

    goto/16 :goto_2

    :sswitch_10
    if-eqz v4, :cond_13

    const v8, 0x7f0d029b

    const/4 v6, 0x1

    :cond_13
    const/16 v12, 0x1f7

    move v3, v12

    goto/16 :goto_2

    :sswitch_11
    if-eqz v4, :cond_14

    const v8, 0x7f0d029c

    const/4 v6, 0x1

    :cond_14
    const/16 v12, 0x1f8

    move v3, v12

    goto/16 :goto_2

    :sswitch_12
    if-eqz v4, :cond_15

    const v8, 0x7f0d029d

    const/4 v6, 0x1

    :goto_9
    const/16 v12, 0x25b

    move v3, v12

    goto/16 :goto_2

    :cond_15
    const v8, 0x7f0d0248

    const/4 v6, 0x1

    goto :goto_9

    :sswitch_13
    if-eqz v4, :cond_16

    const v8, 0x7f0d029e

    const/4 v6, 0x2

    :goto_a
    const/16 v12, 0x25e

    move v3, v12

    goto/16 :goto_2

    :cond_16
    const/4 v6, 0x5

    goto :goto_a

    :sswitch_14
    if-eqz v4, :cond_0

    if-eqz v1, :cond_17

    const v8, 0x7f0d02c4

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_17
    const v8, 0x7f0d02c5

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_15
    if-eqz v4, :cond_0

    if-eqz v1, :cond_18

    const v8, 0x7f0d02c4

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_18
    const v8, 0x7f0d02c5

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_16
    if-eqz v4, :cond_0

    if-eqz v1, :cond_19

    const v8, 0x7f0d02c4

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_19
    const v8, 0x7f0d02c5

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_17
    if-eqz v4, :cond_0

    if-eqz v1, :cond_1a

    const v8, 0x7f0d02c4

    const/4 v6, 0x2

    goto/16 :goto_2

    :cond_1a
    const v8, 0x7f0d02c5

    const/4 v6, 0x4

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x198 -> :sswitch_8
        0x19f -> :sswitch_9
        0x1e0 -> :sswitch_a
        0x1e4 -> :sswitch_b
        0x1e6 -> :sswitch_c
        0x1e7 -> :sswitch_d
        0x1f4 -> :sswitch_f
        0x1f7 -> :sswitch_10
        0x1f8 -> :sswitch_11
        0x25b -> :sswitch_12
        0x25e -> :sswitch_13
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_14
        0x7d3 -> :sswitch_15
        0x7d4 -> :sswitch_16
        0x7d5 -> :sswitch_17
        0x836 -> :sswitch_e
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_LGT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 16

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v3, 0x1

    :goto_1
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, -0x1

    if-eq v7, v13, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "1544-0010"

    aput-object v15, v13, v14

    invoke-virtual {v2, v7, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    const-string v13, "toVoLTE"

    invoke-virtual {v8, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "noti_type"

    invoke-virtual {v8, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "message"

    invoke-virtual {v8, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "number"

    invoke-virtual {v8, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "show_endscreen"

    invoke-virtual {v8, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "errorCode"

    move/from16 v0, p1

    invoke-virtual {v8, v13, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "eng"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoDivertSettings : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideoCall    : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOVOLTE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTI_TYPE      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MESSAGE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NUMBER         : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errorCode      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   SIP_ERROR : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SHOW_ENDSCREEN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_2
    return-object v8

    :cond_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_0

    const v7, 0x7f0d0261

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v3, :cond_5

    const v7, 0x7f0d0263

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_5
    const v7, 0x7f0d0239

    goto :goto_3

    :sswitch_3
    if-eqz v3, :cond_0

    const v7, 0x7f0d0262

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_4
    const-string v13, "single_lte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_6

    const v7, 0x7f0d024d

    const/4 v5, 0x4

    const/4 v12, 0x1

    goto/16 :goto_2

    :cond_6
    if-eqz v3, :cond_0

    const v7, 0x7f0d0265

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_5
    const/16 v11, 0x17c

    goto/16 :goto_2

    :sswitch_6
    if-eqz v3, :cond_7

    const v7, 0x7f0d0282

    :goto_4
    const/4 v5, 0x1

    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_7
    const v7, 0x7f0d024e

    goto :goto_4

    :sswitch_7
    const-string v13, "single_lte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_9

    if-nez v3, :cond_8

    const v7, 0x7f0d024f

    :goto_5
    const/4 v5, 0x3

    const/16 v11, 0x193

    :goto_6
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f0d026f

    goto :goto_5

    :cond_9
    if-nez v3, :cond_a

    const v7, 0x7f0d024f

    :goto_7
    const/4 v5, 0x1

    goto :goto_6

    :cond_a
    const v7, 0x7f0d026f

    goto :goto_7

    :sswitch_8
    const-string v13, "single_lte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_c

    if-nez v3, :cond_b

    const v7, 0x7f0d0250

    :goto_8
    const/4 v5, 0x3

    :goto_9
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_b
    const v7, 0x7f0d0270

    goto :goto_8

    :cond_c
    if-nez v3, :cond_d

    const v7, 0x7f0d0251

    :goto_a
    const/4 v5, 0x1

    goto :goto_9

    :cond_d
    const v7, 0x7f0d0271

    goto :goto_a

    :sswitch_9
    const-string v13, "single_lte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    if-nez v3, :cond_e

    const v7, 0x7f0d0252

    :goto_b
    const/4 v5, 0x3

    :goto_c
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_e
    const v7, 0x7f0d0272

    goto :goto_b

    :cond_f
    if-nez v3, :cond_10

    const v7, 0x7f0d0253

    :goto_d
    const/4 v5, 0x1

    goto :goto_c

    :cond_10
    const v7, 0x7f0d0273

    goto :goto_d

    :sswitch_a
    const-string v13, "single_lte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_12

    if-nez v3, :cond_11

    const v7, 0x7f0d0254

    :goto_e
    const/4 v5, 0x3

    :goto_f
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_11
    const v7, 0x7f0d0274

    goto :goto_e

    :cond_12
    if-nez v3, :cond_13

    const v7, 0x7f0d0255

    :goto_10
    const/4 v5, 0x1

    goto :goto_f

    :cond_13
    const v7, 0x7f0d0275

    goto :goto_10

    :sswitch_b
    if-eqz v3, :cond_14

    const v7, 0x7f0d0276

    const/4 v5, 0x1

    :cond_14
    const/16 v11, 0x194

    goto/16 :goto_2

    :sswitch_c
    if-eqz v3, :cond_15

    const v7, 0x7f0d0277

    const/4 v5, 0x1

    :cond_15
    const/16 v11, 0x198

    goto/16 :goto_2

    :sswitch_d
    if-eqz v3, :cond_17

    if-eqz v1, :cond_16

    const v7, 0x7f0d0286

    const/4 v5, 0x2

    :goto_11
    invoke-static {}, Lcom/android/incallui/IMSErrorUtils;->canDivertToVoLTE()Z

    move-result v12

    :goto_12
    const/16 v11, 0x19f

    goto/16 :goto_2

    :cond_16
    const v7, 0x7f0d0278

    const/4 v5, 0x4

    goto :goto_11

    :cond_17
    const-string v13, "single_lte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_18

    const v7, 0x7f0d0256

    const/4 v5, 0x1

    goto :goto_12

    :cond_18
    const v7, 0x7f0d0257

    const/4 v5, 0x4

    goto :goto_12

    :sswitch_e
    if-eqz v3, :cond_19

    const v7, 0x7f0d0279

    const/4 v5, 0x1

    :cond_19
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :sswitch_f
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :sswitch_10
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :sswitch_11
    if-eqz v3, :cond_1a

    const v7, 0x7f0d028a

    const/4 v5, 0x1

    :cond_1a
    const/16 v11, 0x1e4

    goto/16 :goto_2

    :sswitch_12
    if-eqz v3, :cond_1b

    const v7, 0x7f0d028b

    const/4 v5, 0x1

    :cond_1b
    const/16 v11, 0x1e6

    goto/16 :goto_2

    :sswitch_13
    if-eqz v3, :cond_1c

    const v7, 0x7f0d027a

    const/4 v5, 0x1

    :cond_1c
    const/16 v11, 0x1e7

    goto/16 :goto_2

    :sswitch_14
    if-eqz v3, :cond_1d

    if-eqz v1, :cond_1e

    const v7, 0x7f0d028d

    const/4 v5, 0x2

    :cond_1d
    :goto_13
    const/16 v11, 0x1f3

    goto/16 :goto_2

    :cond_1e
    const v7, 0x7f0d028c

    const/4 v5, 0x4

    goto :goto_13

    :sswitch_15
    if-eqz v3, :cond_1f

    const v7, 0x7f0d027b

    const/4 v5, 0x1

    :cond_1f
    const/16 v11, 0x1f4

    goto/16 :goto_2

    :sswitch_16
    if-eqz v3, :cond_20

    const v7, 0x7f0d027c

    const/4 v5, 0x1

    :cond_20
    const/16 v11, 0x1f7

    goto/16 :goto_2

    :sswitch_17
    if-eqz v3, :cond_21

    const v7, 0x7f0d027d

    const/4 v5, 0x1

    :cond_21
    const/16 v11, 0x1f8

    goto/16 :goto_2

    :sswitch_18
    if-eqz v3, :cond_22

    const v7, 0x7f0d027e

    const/4 v5, 0x1

    :cond_22
    const/16 v11, 0x25b

    goto/16 :goto_2

    :sswitch_19
    if-eqz v3, :cond_23

    const v7, 0x7f0d027f

    const/4 v5, 0x1

    :cond_23
    const/16 v11, 0x25e

    goto/16 :goto_2

    :sswitch_1a
    const/16 v11, 0x25e

    goto/16 :goto_2

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_b
        0x198 -> :sswitch_c
        0x19f -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1f4 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x25b -> :sswitch_18
        0x25e -> :sswitch_19
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_0
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x835 -> :sswitch_1a
        0x836 -> :sswitch_14
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_LGT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 16

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    invoke-static {}, Lcom/android/incallui/IMSErrorUtils;->canDivertToVoLTE()Z

    move-result v12

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    const/4 v15, 0x1

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v3, 0x1

    :goto_1
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_1

    const/4 v13, -0x1

    if-eq v7, v13, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    const/4 v13, 0x1

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    const-string v15, "1544-0010"

    aput-object v15, v13, v14

    invoke-virtual {v2, v7, v13}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    const-string v13, "toVoLTE"

    invoke-virtual {v8, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "noti_type"

    invoke-virtual {v8, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "message"

    invoke-virtual {v8, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "number"

    invoke-virtual {v8, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "show_endscreen"

    invoke-virtual {v8, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "eng"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SIP_ERROR EVENT ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/IMSErrorUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoDivertSettings : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideoCall    : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOVOLTE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTI_TYPE      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MESSAGE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NUMBER         : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errorCode      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   SIP_ERROR : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SHOW_ENDSCREEN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_2
    return-object v8

    :cond_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_0

    const v7, 0x7f0d0261

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v3, :cond_5

    const v7, 0x7f0d029f

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_5
    const v7, 0x7f0d0239

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_3
    if-eqz v3, :cond_0

    const v7, 0x7f0d0262

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_4
    const-string v13, "single_lte"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_7

    if-eqz v3, :cond_6

    const v7, 0x7f0d02a0

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    const v7, 0x7f0d024d

    const/4 v5, 0x4

    goto/16 :goto_2

    :cond_7
    if-eqz v3, :cond_0

    const v7, 0x7f0d0265

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v3, :cond_8

    const v7, 0x7f0d02a1

    const/4 v5, 0x2

    :cond_8
    const/16 v11, 0x17c

    goto/16 :goto_2

    :sswitch_6
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_7
    if-eqz v3, :cond_9

    if-eqz v1, :cond_a

    const v7, 0x7f0d02a3

    const/4 v5, 0x2

    :cond_9
    :goto_3
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_a
    const v7, 0x7f0d02a2

    const/4 v5, 0x4

    goto :goto_3

    :sswitch_8
    if-eqz v3, :cond_b

    if-eqz v1, :cond_c

    const v7, 0x7f0d02a3

    const/4 v5, 0x2

    :cond_b
    :goto_4
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_c
    const v7, 0x7f0d02a2

    const/4 v5, 0x4

    goto :goto_4

    :sswitch_9
    if-eqz v3, :cond_d

    if-eqz v1, :cond_e

    const v7, 0x7f0d02a3

    const/4 v5, 0x2

    :cond_d
    :goto_5
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_e
    const v7, 0x7f0d02a2

    const/4 v5, 0x4

    goto :goto_5

    :sswitch_a
    if-eqz v3, :cond_f

    if-eqz v1, :cond_10

    const v7, 0x7f0d02a3

    const/4 v5, 0x2

    :cond_f
    :goto_6
    const/16 v11, 0x193

    goto/16 :goto_2

    :cond_10
    const v7, 0x7f0d02a2

    const/4 v5, 0x4

    goto :goto_6

    :sswitch_b
    if-eqz v3, :cond_11

    if-eqz v1, :cond_12

    const v7, 0x7f0d02a5

    const/4 v5, 0x2

    :cond_11
    :goto_7
    const/16 v11, 0x194

    goto/16 :goto_2

    :cond_12
    const v7, 0x7f0d02a4

    const/4 v5, 0x4

    goto :goto_7

    :sswitch_c
    if-eqz v3, :cond_13

    const v7, 0x7f0d02a6

    const/4 v5, 0x2

    :cond_13
    const/16 v11, 0x195

    goto/16 :goto_2

    :sswitch_d
    if-eqz v3, :cond_14

    const v7, 0x7f0d02a7

    const/4 v5, 0x2

    :cond_14
    const/16 v11, 0x196

    goto/16 :goto_2

    :sswitch_e
    if-eqz v3, :cond_15

    const v7, 0x7f0d02a8

    const/4 v5, 0x1

    :cond_15
    const/16 v11, 0x198

    goto/16 :goto_2

    :sswitch_f
    if-eqz v3, :cond_16

    if-eqz v1, :cond_17

    const v7, 0x7f0d02aa

    const/4 v5, 0x2

    :cond_16
    :goto_8
    const/16 v11, 0x19f

    goto/16 :goto_2

    :cond_17
    const v7, 0x7f0d02a9

    const/4 v5, 0x4

    goto :goto_8

    :sswitch_10
    if-eqz v3, :cond_18

    if-eqz v1, :cond_19

    const v7, 0x7f0d02ac

    const/4 v5, 0x2

    :cond_18
    :goto_9
    const/16 v11, 0x1a0

    goto/16 :goto_2

    :cond_19
    const v7, 0x7f0d02ab

    const/4 v5, 0x4

    goto :goto_9

    :sswitch_11
    if-eqz v3, :cond_1a

    if-eqz v1, :cond_1b

    const v7, 0x7f0d02ae

    const/4 v5, 0x2

    :cond_1a
    :goto_a
    const/16 v11, 0x1a4

    goto/16 :goto_2

    :cond_1b
    const v7, 0x7f0d02ad

    const/4 v5, 0x4

    goto :goto_a

    :sswitch_12
    if-eqz v3, :cond_1c

    if-eqz v1, :cond_1d

    const v7, 0x7f0d02b0

    const/4 v5, 0x2

    :cond_1c
    :goto_b
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :cond_1d
    const v7, 0x7f0d02af

    const/4 v5, 0x4

    goto :goto_b

    :sswitch_13
    if-eqz v3, :cond_1e

    const v7, 0x7f0d028a

    const/4 v5, 0x1

    :cond_1e
    const/16 v11, 0x1e4

    goto/16 :goto_2

    :sswitch_14
    if-eqz v3, :cond_1f

    const v7, 0x7f0d02b1

    const/4 v5, 0x1

    :cond_1f
    const/16 v11, 0x1e6

    goto/16 :goto_2

    :sswitch_15
    if-eqz v3, :cond_20

    const v7, 0x7f0d02b2

    const/4 v5, 0x1

    :cond_20
    const/16 v11, 0x1e7

    goto/16 :goto_2

    :sswitch_16
    if-eqz v3, :cond_21

    if-eqz v1, :cond_22

    const v7, 0x7f0d02b4

    const/4 v5, 0x2

    :cond_21
    :goto_c
    const/16 v11, 0x1e8

    goto/16 :goto_2

    :cond_22
    const v7, 0x7f0d02b3

    const/4 v5, 0x4

    goto :goto_c

    :sswitch_17
    if-eqz v3, :cond_23

    if-eqz v1, :cond_24

    const v7, 0x7f0d02b6

    const/4 v5, 0x2

    :cond_23
    :goto_d
    const/16 v11, 0x1f3

    goto/16 :goto_2

    :cond_24
    const v7, 0x7f0d02b5

    const/4 v5, 0x4

    goto :goto_d

    :sswitch_18
    if-eqz v3, :cond_25

    if-eqz v1, :cond_26

    const v7, 0x7f0d02b8

    const/4 v5, 0x2

    :cond_25
    :goto_e
    const/16 v11, 0x1f4

    goto/16 :goto_2

    :cond_26
    const v7, 0x7f0d02b7

    const/4 v5, 0x4

    goto :goto_e

    :sswitch_19
    if-eqz v3, :cond_27

    if-eqz v1, :cond_28

    const v7, 0x7f0d02ba

    const/4 v5, 0x2

    :cond_27
    :goto_f
    const/16 v11, 0x1f7

    goto/16 :goto_2

    :cond_28
    const v7, 0x7f0d02b9

    const/4 v5, 0x4

    goto :goto_f

    :sswitch_1a
    if-eqz v3, :cond_29

    if-eqz v1, :cond_2a

    const v7, 0x7f0d02bc

    const/4 v5, 0x2

    :cond_29
    :goto_10
    const/16 v11, 0x1f8

    goto/16 :goto_2

    :cond_2a
    const v7, 0x7f0d02bb

    const/4 v5, 0x4

    goto :goto_10

    :sswitch_1b
    if-eqz v3, :cond_2b

    const v7, 0x7f0d02bd

    const/4 v5, 0x1

    :cond_2b
    const/16 v11, 0x25b

    goto/16 :goto_2

    :sswitch_1c
    if-eqz v3, :cond_2c

    if-eqz v1, :cond_2d

    const v7, 0x7f0d02bf

    const/4 v5, 0x2

    :cond_2c
    :goto_11
    const/16 v11, 0x25c

    goto/16 :goto_2

    :cond_2d
    const v7, 0x7f0d02be

    const/4 v5, 0x4

    goto :goto_11

    :sswitch_1d
    if-eqz v3, :cond_2e

    if-eqz v1, :cond_2f

    const v7, 0x7f0d02c1

    const/4 v5, 0x2

    :cond_2e
    :goto_12
    const/16 v11, 0x25e

    goto/16 :goto_2

    :cond_2f
    const v7, 0x7f0d02c0

    const/4 v5, 0x4

    goto :goto_12

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_b
        0x195 -> :sswitch_c
        0x196 -> :sswitch_d
        0x198 -> :sswitch_e
        0x19f -> :sswitch_f
        0x1a0 -> :sswitch_10
        0x1a4 -> :sswitch_11
        0x1e0 -> :sswitch_12
        0x1e4 -> :sswitch_13
        0x1e6 -> :sswitch_14
        0x1e7 -> :sswitch_15
        0x1e8 -> :sswitch_16
        0x1f4 -> :sswitch_18
        0x1f7 -> :sswitch_19
        0x1f8 -> :sswitch_1a
        0x25b -> :sswitch_1b
        0x25c -> :sswitch_1c
        0x25e -> :sswitch_1d
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_0
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x836 -> :sswitch_17
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_SKT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 16

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v11, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_3

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v13

    if-eqz v13, :cond_4

    const/4 v3, 0x1

    :goto_1
    sparse-switch p1, :sswitch_data_0

    :goto_2
    :sswitch_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-nez v13, :cond_0

    const/4 v13, -0x1

    if-eq v7, v13, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_1

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/android/incallui/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    const-string v13, "toVoLTE"

    invoke-virtual {v8, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "noti_type"

    invoke-virtual {v8, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "message"

    invoke-virtual {v8, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "number"

    invoke-virtual {v8, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "show_endscreen"

    invoke-virtual {v8, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "eng"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoDivertSettings : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideoCall    : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOVOLTE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTI_TYPE      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MESSAGE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NUMBER         : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errorCode      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   SIP_ERROR : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SHOW_ENDSCREEN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_2
    return-object v8

    :cond_3
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_1
    if-eqz v3, :cond_5

    const v7, 0x7f0d0261

    :goto_3
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_5
    const v7, 0x7f0d0237

    goto :goto_3

    :sswitch_2
    if-eqz v3, :cond_6

    const v7, 0x7f0d0263

    :goto_4
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    const v7, 0x7f0d0239

    goto :goto_4

    :sswitch_3
    if-eqz v3, :cond_7

    const v7, 0x7f0d0262

    :goto_5
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_7
    const v7, 0x7f0d0238

    goto :goto_5

    :sswitch_4
    if-eqz v3, :cond_8

    const v7, 0x7f0d0265

    :goto_6
    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f0d023b

    goto :goto_6

    :sswitch_5
    if-eqz v3, :cond_a

    if-eqz v1, :cond_9

    const v7, 0x7f0d0281

    const/4 v5, 0x2

    :goto_7
    const/16 v11, 0x17c

    goto/16 :goto_2

    :cond_9
    const v7, 0x7f0d0280

    const/4 v5, 0x4

    goto :goto_7

    :cond_a
    const/4 v5, 0x5

    goto :goto_7

    :sswitch_6
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_7
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_8
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_9
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_a
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_b
    if-eqz v3, :cond_c

    if-eqz v1, :cond_b

    const v7, 0x7f0d0284

    const/4 v5, 0x2

    :goto_8
    const/16 v11, 0x194

    goto/16 :goto_2

    :cond_b
    const v7, 0x7f0d0283

    const/4 v5, 0x4

    goto :goto_8

    :cond_c
    const v7, 0x7f0d023d

    const/4 v5, 0x2

    goto :goto_8

    :sswitch_c
    if-eqz v3, :cond_d

    const v7, 0x7f0d0287

    :goto_9
    const/4 v5, 0x1

    const/16 v11, 0x198

    goto/16 :goto_2

    :cond_d
    const v7, 0x7f0d023e

    goto :goto_9

    :sswitch_d
    if-eqz v3, :cond_f

    if-eqz v1, :cond_e

    const v7, 0x7f0d0286

    const/4 v5, 0x2

    :goto_a
    const/16 v11, 0x19f

    goto/16 :goto_2

    :cond_e
    const v7, 0x7f0d0285

    const/4 v5, 0x4

    goto :goto_a

    :cond_f
    const v7, 0x7f0d023f

    const/4 v5, 0x2

    goto :goto_a

    :sswitch_e
    if-eqz v3, :cond_11

    if-eqz v1, :cond_10

    const v7, 0x7f0d0289

    const/4 v5, 0x2

    :goto_b
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :cond_10
    const v7, 0x7f0d0288

    const/4 v5, 0x4

    goto :goto_b

    :cond_11
    const v7, 0x7f0d0241

    const/4 v5, 0x1

    goto :goto_b

    :sswitch_f
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :sswitch_10
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :sswitch_11
    if-eqz v3, :cond_12

    const v7, 0x7f0d028a

    :goto_c
    const/4 v5, 0x1

    const/16 v11, 0x1e4

    goto/16 :goto_2

    :cond_12
    const v7, 0x7f0d0242

    goto :goto_c

    :sswitch_12
    if-eqz v3, :cond_13

    const v7, 0x7f0d028b

    :goto_d
    const/4 v5, 0x1

    const/16 v11, 0x1e6

    goto/16 :goto_2

    :cond_13
    const v7, 0x7f0d0243

    goto :goto_d

    :sswitch_13
    const/16 v11, 0x1e7

    goto/16 :goto_2

    :sswitch_14
    if-eqz v3, :cond_15

    if-eqz v1, :cond_14

    const v7, 0x7f0d028d

    const/4 v5, 0x2

    :goto_e
    const/16 v11, 0x1f3

    goto/16 :goto_2

    :cond_14
    const v7, 0x7f0d028c

    const/4 v5, 0x4

    goto :goto_e

    :cond_15
    const v7, 0x7f0d0244

    const/4 v5, 0x2

    goto :goto_e

    :sswitch_15
    if-eqz v3, :cond_16

    const v7, 0x7f0d028e

    const/4 v5, 0x1

    :goto_f
    const/16 v11, 0x1f4

    goto/16 :goto_2

    :cond_16
    const v7, 0x7f0d0245

    const/4 v5, 0x2

    goto :goto_f

    :sswitch_16
    if-eqz v3, :cond_17

    const v7, 0x7f0d028f

    const/4 v5, 0x1

    :goto_10
    const/16 v11, 0x1f7

    goto/16 :goto_2

    :cond_17
    const v7, 0x7f0d0247

    const/4 v5, 0x2

    goto :goto_10

    :sswitch_17
    if-eqz v3, :cond_18

    const v7, 0x7f0d0266

    const/4 v5, 0x1

    :goto_11
    const/16 v11, 0x1f8

    goto/16 :goto_2

    :cond_18
    const v7, 0x7f0d0246

    const/4 v5, 0x2

    goto :goto_11

    :sswitch_18
    if-eqz v3, :cond_19

    const v7, 0x7f0d0290

    :goto_12
    const/4 v5, 0x1

    const/16 v11, 0x25b

    goto/16 :goto_2

    :cond_19
    const v7, 0x7f0d0248

    goto :goto_12

    :sswitch_19
    const/16 v11, 0x25e

    goto/16 :goto_2

    :sswitch_1a
    if-eqz v3, :cond_1b

    if-eqz v1, :cond_1a

    const v7, 0x7f0d0292

    const/4 v5, 0x2

    :goto_13
    const/16 v11, 0x25e

    goto/16 :goto_2

    :cond_1a
    const v7, 0x7f0d0291

    const/4 v5, 0x4

    goto :goto_13

    :cond_1b
    const/4 v5, 0x5

    goto :goto_13

    nop

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_b
        0x198 -> :sswitch_c
        0x19f -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1f4 -> :sswitch_15
        0x1f7 -> :sswitch_16
        0x1f8 -> :sswitch_17
        0x25b -> :sswitch_18
        0x25e -> :sswitch_19
        0x44f -> :sswitch_1
        0x453 -> :sswitch_2
        0x45a -> :sswitch_0
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x835 -> :sswitch_1a
        0x836 -> :sswitch_14
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
        0x8fe -> :sswitch_7
        0x8ff -> :sswitch_8
        0x900 -> :sswitch_9
        0x901 -> :sswitch_a
    .end sparse-switch
.end method

.method public static getDisconnectCauseAction_SKT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;
    .locals 16

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const/4 v12, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v4, ""

    const/4 v7, -0x1

    const/4 v11, -0x1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string v14, "videocall_settings"

    const/4 v15, 0x0

    invoke-static {v13, v14, v15}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v13

    if-nez v13, :cond_4

    const/4 v1, 0x0

    :goto_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v13

    if-eqz v13, :cond_5

    const/4 v3, 0x1

    :goto_1
    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_2
    const/4 v13, -0x1

    if-eq v7, v13, :cond_1

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v2

    invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    :cond_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v13

    if-lez v13, :cond_2

    const/4 v13, -0x1

    if-eq v11, v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v11}, Lcom/android/incallui/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v6

    const-string v13, "toVoLTE"

    invoke-virtual {v8, v13, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "noti_type"

    invoke-virtual {v8, v13, v5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v13, "message"

    invoke-virtual {v8, v13, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "number"

    invoke-virtual {v8, v13, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v13, "show_endscreen"

    invoke-virtual {v8, v13, v10}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v13, "eng"

    sget-object v14, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SIP_ERROR EVENT ID: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-static/range {p1 .. p1}, Lcom/android/incallui/IMSErrorUtils;->getSIPErrorString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "autoDivertSettings : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "isVideoCall    : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOVOLTE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NOTI_TYPE      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "MESSAGE        : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "NUMBER         : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "errorCode      : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p1

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "   SIP_ERROR : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SHOW_ENDSCREEN : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_3
    return-object v8

    :cond_4
    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_5
    const/4 v3, 0x0

    goto/16 :goto_1

    :sswitch_0
    if-eqz v3, :cond_6

    const v7, 0x7f0d0261

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_6
    const v7, 0x7f0d0237

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_1
    if-eqz v3, :cond_7

    const v7, 0x7f0d0263

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_7
    const v7, 0x7f0d0239

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_2
    if-eqz v3, :cond_9

    if-eqz v1, :cond_8

    const v7, 0x7f0d0294

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_8
    const v7, 0x7f0d0293

    const/4 v5, 0x4

    goto/16 :goto_2

    :cond_9
    const/4 v5, 0x5

    goto/16 :goto_2

    :sswitch_3
    if-eqz v3, :cond_a

    const v7, 0x7f0d0262

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_a
    const v7, 0x7f0d0238

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_4
    if-eqz v3, :cond_b

    const v7, 0x7f0d0265

    const/4 v5, 0x1

    goto/16 :goto_2

    :cond_b
    const v7, 0x7f0d023b

    const/4 v5, 0x1

    goto/16 :goto_2

    :sswitch_5
    if-eqz v3, :cond_d

    if-eqz v1, :cond_c

    const v7, 0x7f0d0281

    const/4 v5, 0x2

    :goto_3
    const/16 v11, 0x17c

    goto/16 :goto_2

    :cond_c
    const v7, 0x7f0d0280

    const/4 v5, 0x4

    goto :goto_3

    :cond_d
    const/4 v5, 0x5

    goto :goto_3

    :sswitch_6
    const/16 v11, 0x193

    goto/16 :goto_2

    :sswitch_7
    if-eqz v3, :cond_f

    if-eqz v1, :cond_e

    const v7, 0x7f0d0284

    const/4 v5, 0x2

    :goto_4
    const/16 v11, 0x194

    goto/16 :goto_2

    :cond_e
    const v7, 0x7f0d0283

    const/4 v5, 0x4

    goto :goto_4

    :cond_f
    const v7, 0x7f0d023d

    const/4 v5, 0x2

    goto :goto_4

    :sswitch_8
    if-eqz v3, :cond_10

    const v7, 0x7f0d0287

    const/4 v5, 0x1

    :goto_5
    const/16 v11, 0x198

    goto/16 :goto_2

    :cond_10
    const v7, 0x7f0d023e

    const/4 v5, 0x1

    goto :goto_5

    :sswitch_9
    if-eqz v3, :cond_12

    if-eqz v1, :cond_11

    const v7, 0x7f0d0286

    const/4 v5, 0x2

    :goto_6
    const/16 v11, 0x19f

    goto/16 :goto_2

    :cond_11
    const v7, 0x7f0d0285

    const/4 v5, 0x4

    goto :goto_6

    :cond_12
    const v7, 0x7f0d023f

    const/4 v5, 0x2

    goto :goto_6

    :sswitch_a
    if-eqz v3, :cond_14

    if-eqz v1, :cond_13

    const v7, 0x7f0d0289

    const/4 v5, 0x2

    :goto_7
    const/16 v11, 0x1e0

    goto/16 :goto_2

    :cond_13
    const v7, 0x7f0d0288

    const/4 v5, 0x4

    goto :goto_7

    :cond_14
    const v7, 0x7f0d0258

    const/4 v5, 0x2

    goto :goto_7

    :sswitch_b
    if-eqz v3, :cond_15

    const v7, 0x7f0d028a

    const/4 v5, 0x1

    :goto_8
    const/16 v11, 0x1e4

    goto/16 :goto_2

    :cond_15
    const v7, 0x7f0d0242

    const/4 v5, 0x1

    goto :goto_8

    :sswitch_c
    if-eqz v3, :cond_16

    const v7, 0x7f0d028b

    const/4 v5, 0x1

    :goto_9
    const/16 v11, 0x1e6

    goto/16 :goto_2

    :cond_16
    const v7, 0x7f0d0243

    const/4 v5, 0x1

    goto :goto_9

    :sswitch_d
    const/16 v11, 0x1e7

    goto/16 :goto_2

    :sswitch_e
    if-eqz v3, :cond_18

    if-eqz v1, :cond_17

    const v7, 0x7f0d028d

    const/4 v5, 0x2

    :goto_a
    const/16 v11, 0x1f3

    goto/16 :goto_2

    :cond_17
    const v7, 0x7f0d028c

    const/4 v5, 0x4

    goto :goto_a

    :cond_18
    const v7, 0x7f0d0244

    const/4 v5, 0x2

    goto :goto_a

    :sswitch_f
    if-eqz v3, :cond_19

    const v7, 0x7f0d028e

    const/4 v5, 0x1

    :goto_b
    const/16 v11, 0x1f4

    goto/16 :goto_2

    :cond_19
    const v7, 0x7f0d0245

    const/4 v5, 0x2

    goto :goto_b

    :sswitch_10
    if-eqz v3, :cond_1a

    const v7, 0x7f0d028f

    const/4 v5, 0x1

    :cond_1a
    const/16 v11, 0x1f7

    goto/16 :goto_2

    :sswitch_11
    if-eqz v3, :cond_1b

    const v7, 0x7f0d0266

    const/4 v5, 0x1

    :cond_1b
    const/16 v11, 0x1f8

    goto/16 :goto_2

    :sswitch_12
    if-eqz v3, :cond_1c

    const v7, 0x7f0d0290

    const/4 v5, 0x1

    :goto_c
    const/16 v11, 0x25b

    goto/16 :goto_2

    :cond_1c
    const v7, 0x7f0d0248

    const/4 v5, 0x1

    goto :goto_c

    :sswitch_13
    if-eqz v3, :cond_1e

    if-eqz v1, :cond_1d

    const v7, 0x7f0d0292

    const/4 v5, 0x2

    :goto_d
    const/16 v11, 0x25e

    goto/16 :goto_2

    :cond_1d
    const v7, 0x7f0d0291

    const/4 v5, 0x4

    goto :goto_d

    :cond_1e
    const v7, 0x7f0d0259

    const/4 v5, 0x2

    goto :goto_d

    :sswitch_14
    if-eqz v3, :cond_0

    if-eqz v1, :cond_1f

    const v7, 0x7f0d02c2

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_1f
    const v7, 0x7f0d02c3

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_15
    if-eqz v3, :cond_0

    if-eqz v1, :cond_20

    const v7, 0x7f0d02c2

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_20
    const v7, 0x7f0d02c3

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_16
    if-eqz v3, :cond_0

    if-eqz v1, :cond_21

    const v7, 0x7f0d02c2

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_21
    const v7, 0x7f0d02c3

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_17
    if-eqz v3, :cond_0

    if-eqz v1, :cond_22

    const v7, 0x7f0d02c2

    const/4 v5, 0x2

    goto/16 :goto_2

    :cond_22
    const v7, 0x7f0d02c3

    const/4 v5, 0x4

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x198 -> :sswitch_8
        0x19f -> :sswitch_9
        0x1e0 -> :sswitch_a
        0x1e4 -> :sswitch_b
        0x1e6 -> :sswitch_c
        0x1e7 -> :sswitch_d
        0x1f4 -> :sswitch_f
        0x1f7 -> :sswitch_10
        0x1f8 -> :sswitch_11
        0x25b -> :sswitch_12
        0x25e -> :sswitch_13
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_14
        0x7d3 -> :sswitch_15
        0x7d4 -> :sswitch_16
        0x7d5 -> :sswitch_17
        0x836 -> :sswitch_e
    .end sparse-switch
.end method

.method private static getError(I)Ljava/lang/String;
    .locals 3

    const-string v0, ""

    if-lez p0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getPSBaringAction(Lcom/android/incallui/Call;)Landroid/os/Bundle;
    .locals 15

    const-string v12, "getPSBaringAction"

    invoke-static {v12}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    const/4 v11, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    const-string v3, ""

    const/4 v6, -0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/incallui/InCallApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    const-string v13, "videocall_settings"

    const/4 v14, 0x0

    invoke-static {v12, v13, v14}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v12

    if-nez v12, :cond_3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getSecCall()Lcom/android/incallui/secui/SecCall;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/incallui/secui/SecCall;->getType()I

    move-result v12

    if-eqz v12, :cond_4

    const/4 v2, 0x1

    :goto_1
    if-eqz v2, :cond_7

    const-string v12, "dcm_volte_popup_message"

    invoke-static {v12}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_5

    const v6, 0x7f0d0338

    const/4 v4, 0x3

    :goto_2
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-nez v12, :cond_0

    const/4 v12, -0x1

    if-eq v6, v12, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v12

    if-lez v12, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v10}, Lcom/android/incallui/IMSErrorUtils;->getError(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getNumber()Ljava/lang/String;

    move-result-object v5

    const-string v12, "toVoLTE"

    invoke-virtual {v7, v12, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "noti_type"

    invoke-virtual {v7, v12, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v12, "message"

    invoke-virtual {v7, v12, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "number"

    invoke-virtual {v7, v12, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v12, "show_endscreen"

    invoke-virtual {v7, v12, v9}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v12, "eng"

    sget-object v13, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "autoDivertSettings : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "isVideoCall    : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "TOVOLTE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NOTI_TYPE      : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "   0:NONE, 1:TOAST, 2:TOAST_DIVERT, 3:DIALOG 4:DIALOG_DIVERT 5:SILENT_DIVERT"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "MESSAGE        : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "NUMBER         : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "SHOW_ENDSCREEN : "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;)V

    :cond_2
    return-object v7

    :cond_3
    const/4 v0, 0x1

    goto/16 :goto_0

    :cond_4
    const/4 v2, 0x0

    goto/16 :goto_1

    :cond_5
    if-eqz v0, :cond_6

    const v6, 0x7f0d0281

    const/4 v4, 0x2

    goto/16 :goto_2

    :cond_6
    const v6, 0x7f0d0280

    const/4 v4, 0x4

    goto/16 :goto_2

    :cond_7
    const/4 v4, 0x5

    goto/16 :goto_2
.end method

.method public static getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 5

    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string v2, "0"

    if-eqz v0, :cond_0

    const-string v3, "\\, "

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v3, v1

    const/4 v4, 0x1

    if-le v3, v4, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->translateDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v2, v1, v3

    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    return v3
.end method

.method private static getSIPErrorString(I)Ljava/lang/String;
    .locals 3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return-object v0

    :sswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_SESSION_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_END_CALL_NW_HANDOVER"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_INVITE_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "RTP_TIME_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DATA_CONNECTION_LOST"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ALTERNATIVE_SERVICES"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_FORBIDDEN"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_FOUND"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "METHOD_NOT_ALLOWED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REQUEST_TIMEOUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNSUPPORTED_MEDIA_TYPE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "UNSUPPORTED_URI_SCHEME"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BAD_EXTENSION"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "TEMPORARILY_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_TEMP_UNAVAILABLE_WITH_380_CAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_TEMP_UNAVAILABLE_WITH_415_CAUSE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_11
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "ADDRESS_INCOMPLETE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "BUSY_HERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_13
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "REQUEST_TERMINATED"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_14
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE_HERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_15
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NETWORK_UNREACHABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_16
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVER_INTERNAL_ERROR"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_17
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVICE_UNAVAILABLE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "SERVER_TIME_OUT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_19
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DECLINE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "DOES_NOT_EXIST_ANYWHERE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "NOT_ACCEPTABLE2"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "CALL_NOT_ACCEPTABLE_DIVERT"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_TIMER_F"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_REG_403"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_REG_423"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "MAKECALL_REG_FAILURE_GENERAL"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x17c -> :sswitch_5
        0x194 -> :sswitch_7
        0x195 -> :sswitch_8
        0x196 -> :sswitch_9
        0x198 -> :sswitch_a
        0x19f -> :sswitch_b
        0x1a0 -> :sswitch_c
        0x1a4 -> :sswitch_d
        0x1e0 -> :sswitch_e
        0x1e4 -> :sswitch_11
        0x1e6 -> :sswitch_12
        0x1e7 -> :sswitch_13
        0x1e8 -> :sswitch_14
        0x1f4 -> :sswitch_16
        0x1f7 -> :sswitch_17
        0x1f8 -> :sswitch_18
        0x25b -> :sswitch_19
        0x25c -> :sswitch_1a
        0x25e -> :sswitch_1b
        0x44f -> :sswitch_0
        0x453 -> :sswitch_1
        0x45a -> :sswitch_2
        0x579 -> :sswitch_3
        0x6a5 -> :sswitch_4
        0x7d1 -> :sswitch_6
        0x7d2 -> :sswitch_1d
        0x7d3 -> :sswitch_1e
        0x7d4 -> :sswitch_1f
        0x7d5 -> :sswitch_20
        0x835 -> :sswitch_1c
        0x836 -> :sswitch_15
        0x89a -> :sswitch_f
        0x89b -> :sswitch_10
    .end sparse-switch
.end method

.method public static getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I
    .locals 2

    invoke-virtual {p0}, Landroid/telecom/DisconnectCause;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/IMSErrorUtils;->getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/DisconnectCause;->disconnectCauseId(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private static getTelephonyDisconnectCause(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, ", "

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-lez v1, :cond_0

    add-int/lit8 v2, v1, -0x1

    aget-object p0, v0, v2

    :cond_0
    return-object p0
.end method

.method public static handleCallFailError(Landroid/os/Bundle;)V
    .locals 8

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleCallFailError "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v6, v7}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;Z)V

    if-eqz p0, :cond_0

    const-string v6, "noti_type"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    const-string v6, "message"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v6, "number"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "toVoLTE"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v6, "show_endscreen"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    const-string v6, "errorCode"

    invoke-virtual {p0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {v1}, Lcom/android/incallui/IMSErrorUtils;->showIMSErrorToast(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v6, "support_uicc_mobility"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isLGTSIM()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_2
    invoke-static {v1}, Lcom/android/incallui/IMSErrorUtils;->showIMSErrorToast(Ljava/lang/String;)V

    invoke-static {v3, v5, v0}, Lcom/android/incallui/IMSErrorUtils;->divertToVoiceCall(Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_2
    invoke-static {v1}, Lcom/android/incallui/IMSErrorUtils;->showIMSErrorDialog(Ljava/lang/String;)V

    goto :goto_0

    :pswitch_3
    const-string v6, "support_uicc_mobility"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    const-string v6, "feature_skt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "feature_ktt"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    :cond_3
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isLGTSIM()Z

    move-result v6

    if-nez v6, :cond_0

    :cond_4
    invoke-static {v1, v3, v5, v0}, Lcom/android/incallui/IMSErrorUtils;->showIMSErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_4
    invoke-static {v3, v5, v0}, Lcom/android/incallui/IMSErrorUtils;->divertToVoiceCall(Ljava/lang/String;ZI)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static handleDisconnectCause(Lcom/android/incallui/Call;)Z
    .locals 5

    const/4 v3, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {p0}, Lcom/android/incallui/Call;->getTelecommCall()Landroid/telecom/Call;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call;->getDetails()Landroid/telecom/Call$Details;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telecom/Call$Details;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v1

    invoke-static {v1}, Lcom/android/incallui/IMSErrorUtils;->getSIPErrorFromDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v2

    const/4 v0, 0x0

    const-string v4, "enabled"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/incallui/IMSErrorUtils;->isPSBarringEventReceived()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-static {p0}, Lcom/android/incallui/IMSErrorUtils;->getPSBaringAction(Lcom/android/incallui/Call;)Landroid/os/Bundle;

    move-result-object v0

    invoke-static {v3}, Lcom/android/incallui/IMSErrorUtils;->setPSBarringEventReceived(Z)V

    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v0}, Lcom/android/incallui/IMSErrorUtils;->handleCallFailError(Landroid/os/Bundle;)V

    :cond_3
    const-string v4, "support_mobilecarrier"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isCarrierPhoneMode()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0}, Lcom/android/incallui/InCallUtils;->isVideoCall(Lcom/android/incallui/Call;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {p0, v0}, Lcom/android/incallui/IMSErrorUtils;->handleVideoEndScreen(Lcom/android/incallui/Call;Landroid/os/Bundle;)Z

    move-result v3

    goto :goto_0

    :cond_4
    if-lez v2, :cond_2

    const-string v4, "support_uicc_mobility"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string v4, "feature_kor_open"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    invoke-static {p0, v2}, Lcom/android/incallui/IMSErrorUtils;->getDisconnectCauseAction_SKT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-static {p0, v2}, Lcom/android/incallui/IMSErrorUtils;->getDisconnectCauseAction_KTT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_7
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, v2}, Lcom/android/incallui/IMSErrorUtils;->getDisconnectCauseAction_LGT_UICC(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_8
    const-string v4, "feature_skt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-static {p0, v2}, Lcom/android/incallui/IMSErrorUtils;->getDisconnectCauseAction_SKT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_9
    const-string v4, "feature_ktt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {p0, v2}, Lcom/android/incallui/IMSErrorUtils;->getDisconnectCauseAction_KTT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_a
    const-string v4, "feature_lgt"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-static {p0, v2}, Lcom/android/incallui/IMSErrorUtils;->getDisconnectCauseAction_LGT(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_1

    :cond_b
    const-string v4, "handle_sip_error_code_dcm"

    invoke-static {v4}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {p0, v2}, Lcom/android/incallui/IMSErrorUtils;->getDisconnectCauseAction_DCM(Lcom/android/incallui/Call;I)Landroid/os/Bundle;

    move-result-object v0

    goto/16 :goto_1
.end method

.method public static handleVideoEndScreen(Lcom/android/incallui/Call;Landroid/os/Bundle;)Z
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string v4, "noti_type"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :cond_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/Call;->getDisconnectCause()Landroid/telecom/DisconnectCause;

    move-result-object v4

    invoke-static {v4}, Lcom/android/incallui/IMSErrorUtils;->getTelephonyDisconnectCause(Landroid/telecom/DisconnectCause;)I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    :cond_1
    move v2, v3

    :goto_0
    return v2

    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVideoEndScreen : noti_type("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :sswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleVideoEndScreen : DisconnectCause("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x11 -> :sswitch_0
        0x12 -> :sswitch_0
        0x25 -> :sswitch_0
        0x28 -> :sswitch_0
        0x2b -> :sswitch_0
        0xc8 -> :sswitch_0
    .end sparse-switch
.end method

.method public static isPSBarringEventReceived()Z
    .locals 1

    sget-boolean v0, Lcom/android/incallui/IMSErrorUtils;->mPSBarringEventReceived:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "[IMSErrorUtils]"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "[IMSErrorUtils]"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static setPSBarringEventReceived(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/incallui/IMSErrorUtils;->mPSBarringEventReceived:Z

    return-void
.end method

.method public static showIMSErrorDialog(Ljava/lang/String;)V
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showIMSErrorDialog: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/secutils/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "error_message"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v2, "sendStartUpErrorViaATCommand"

    invoke-static {v2, v4}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static showIMSErrorDialog_Divert(Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 5

    const/4 v4, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showIMSErrorDialog_Divert: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/incallui/InCallApp;->getInstance()Lcom/android/incallui/InCallApp;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/incallui/secutils/SecErrorDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "error_message"

    invoke-virtual {v1, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "number"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "to_volte"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v2, "feature_lgt"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x19f

    if-ne p3, v2, :cond_0

    const-string v2, "errorCode"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_0
    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v2, "sendStartUpErrorViaATCommand"

    invoke-static {v2, v4}, Lcom/android/incallui/IMSErrorUtils;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method public static showIMSErrorToast(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/android/incallui/InCallUtils;->displayToast(Ljava/lang/String;I)V

    return-void
.end method
