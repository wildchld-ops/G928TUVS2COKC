.class public Lcom/android/phone/PhoneUtilsCommon;
.super Ljava/lang/Object;
.source "PhoneUtilsCommon.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/PhoneUtilsCommon$3;
    }
.end annotation


# static fields
.field private static final COUNT_PROJECTION:[Ljava/lang/String;

.field private static mPostDialStrAfterPause:Ljava/lang/String;

.field private static mToast:Landroid/widget/Toast;

.field private static mWB:Z

.field private static sIsMySoundListening:Z

.field private static sIsVoiceCallEq:Z

.field private static final sSContextListener:Landroid/hardware/scontext/SContextListener;

.field private static sSContextManager:Landroid/hardware/scontext/SContextManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsCommon;->sIsVoiceCallEq:Z

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, " count(*) "

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->COUNT_PROJECTION:[Ljava/lang/String;

    new-instance v0, Lcom/android/phone/PhoneUtilsCommon$1;

    invoke-direct {v0}, Lcom/android/phone/PhoneUtilsCommon$1;-><init>()V

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    sput-boolean v2, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    return-void
.end method

.method private static IsVoiceCallEqOff(I)Z
    .locals 3

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    if-ne p0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_1

    if-nez p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static XSP_IsSingtel()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneUtilsCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simOperator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "52501"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "52502"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "XSP_IsSingtel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v5}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic access$000(Ljava/lang/String;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    return-void
.end method

.method static canEnableNoiseSuppression(Landroid/content/Context;)Z
    .locals 11

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v9, "audio"

    invoke-virtual {p0, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v9

    iget-object v2, v9, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v0}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v6

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v5

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v4

    const-string v9, "canEnableNoiseSuppression:"

    invoke-static {v9, v8}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "speaker= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " isWBMode = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isWBMode()Z

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "headset= "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " bt = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    const-string v9, "noise_suppression"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    :cond_0
    :goto_0
    return v7

    :cond_1
    if-eqz v6, :cond_2

    const-string v9, "noise_suppression_support_speaker"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_2
    if-nez v6, :cond_3

    if-nez v5, :cond_0

    if-nez v4, :cond_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isWBMode()Z

    move-result v9

    if-eqz v9, :cond_4

    const-string v9, "enable_noise_reduction_in_wbamr"

    invoke-static {v9}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_0

    :cond_4
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "### fgCall.getCallRadioTech(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getCallRadioTech()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "### bgCall.getCallRadioTech(): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getCallRadioTech()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v8}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    const-string v9, "epdg"

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getCallRadioTech()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    const-string v9, "epdg"

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getCallRadioTech()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    :cond_5
    const-string v9, "### inside False "

    invoke-static {v9, v8}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_6
    move v7, v8

    goto :goto_0
.end method

.method static displayToast(I)V
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneGlobals;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->displayToast(Ljava/lang/String;)V

    return-void
.end method

.method static displayToast(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->mToast:Landroid/widget/Toast;

    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static getInternationalVoicecallTypeValue(Landroid/content/ContentResolver;)I
    .locals 2

    const-string v1, "volte_settings_in_mobile_networks"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    const-string v1, "international_voicecall_type"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static getRejectMessageCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 18

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    new-instance v12, Landroid/database/MatrixCursor;

    const/4 v13, 0x4

    new-array v13, v13, [Ljava/lang/String;

    const/16 v16, 0x0

    const-string v17, "_id"

    aput-object v17, v13, v16

    const/16 v16, 0x1

    const-string v17, "REJECT_MESSAGE"

    aput-object v17, v13, v16

    const/16 v16, 0x2

    const-string v17, "EDIT_CHECKED"

    aput-object v17, v13, v16

    const/16 v16, 0x3

    const-string v17, "REMIND_TIME"

    aput-object v17, v13, v16

    invoke-direct {v12, v13}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v13

    if-eqz v13, :cond_2

    :cond_0
    const/4 v11, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    const/4 v13, 0x2

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const/4 v13, 0x1

    if-ne v6, v13, :cond_3

    const/4 v10, 0x1

    :goto_0
    if-eqz v10, :cond_4

    const-string v13, "PhoneUtilsCommon"

    const-string v16, "Edited"

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-interface {v0, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    :goto_1
    if-eqz v11, :cond_1

    const/4 v13, 0x4

    new-array v3, v13, [Ljava/lang/Object;

    const/4 v13, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v13

    const/4 v13, 0x1

    aput-object v11, v3, v13

    const/4 v13, 0x2

    const/16 v16, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v13

    const/4 v13, 0x3

    const/16 v16, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    aput-object v16, v3, v13

    invoke-virtual {v12, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    if-nez v13, :cond_0

    :cond_2
    :goto_2
    return-object v12

    :cond_3
    const/4 v10, 0x0

    goto :goto_0

    :cond_4
    const-wide/16 v16, 0x1

    sub-long v14, v8, v16

    const-string v13, "modify_reject_message_for_kor"

    invoke-static {v13}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_5

    sget-object v13, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgListKor:[I

    long-to-int v0, v14

    move/from16 v16, v0

    aget v7, v13, v16

    :goto_3
    invoke-virtual {v4, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const-string v13, "PhoneUtilsCommon"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "Not Edited, Use Default valuerejectMessage = "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v5

    const-string v13, "PhoneUtilsCommon"

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, "getRejectMessageCursor exception "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v17

    invoke-static {v13, v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_2

    :cond_5
    :try_start_1
    sget-object v13, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[I

    long-to-int v0, v14

    move/from16 v16, v0

    aget v7, v13, v16
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3
.end method

.method public static getRejectMessageIconModeCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 22

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    new-instance v15, Landroid/database/MatrixCursor;

    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    const-string v21, "_id"

    aput-object v21, v19, v20

    const/16 v20, 0x1

    const-string v21, "TITLE"

    aput-object v21, v19, v20

    const/16 v20, 0x2

    const-string v21, "REJECT_MESSAGE"

    aput-object v21, v19, v20

    const/16 v20, 0x3

    const-string v21, "EDIT_CHECKED"

    aput-object v21, v19, v20

    const/16 v20, 0x4

    const-string v21, "ICON_ID"

    aput-object v21, v19, v20

    const/16 v20, 0x5

    const-string v21, "REMIND_TIME"

    aput-object v21, v19, v20

    const/16 v20, 0x6

    const-string v21, "POSITION"

    aput-object v21, v19, v20

    move-object/from16 v0, v19

    invoke-direct {v15, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    if-eqz p0, :cond_2

    :try_start_0
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v19

    if-eqz v19, :cond_2

    :cond_0
    const/4 v14, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v12

    const/16 v19, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v8, v0, :cond_3

    const/4 v11, 0x1

    :goto_0
    if-eqz v11, :cond_4

    const-string v19, "PhoneUtilsCommon"

    const-string v20, "Edited"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const/16 v19, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x2

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v14

    :goto_1
    if-eqz v14, :cond_1

    const/16 v19, 0x7

    move/from16 v0, v19

    new-array v5, v0, [Ljava/lang/Object;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x1

    aput-object v18, v5, v19

    const/16 v19, 0x2

    aput-object v14, v5, v19

    const/16 v19, 0x3

    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x4

    const/16 v20, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x5

    const/16 v20, 0x5

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v19

    const/16 v19, 0x6

    const/16 v20, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    aput-object v20, v5, v19

    invoke-virtual {v15, v5}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    :cond_1
    invoke-interface/range {p0 .. p0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v19

    if-nez v19, :cond_0

    :cond_2
    :goto_2
    return-object v15

    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_0

    :cond_4
    const-wide/16 v20, 0x1

    sub-long v16, v12, v20

    sget-object v19, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgTitleList:[Ljava/lang/String;

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aget-object v10, v19, v20

    sget-object v19, Lcom/android/phone/callsettings/RejectCallWithMsgDB;->defaultRejectMsgList:[I

    move-wide/from16 v0, v16

    long-to-int v0, v0

    move/from16 v20, v0

    aget v9, v19, v20

    invoke-virtual {v6, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const-string v20, "string"

    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v10, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v19

    move/from16 v0, v19

    invoke-virtual {v6, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v18

    const-string v19, "PhoneUtilsCommon"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Not Edited, Iconmode Use Default valuerejectMessage = "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, "title"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v7

    const-string v19, "PhoneUtilsCommon"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "getRejectMessageIconModeCursor exception "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto/16 :goto_2
.end method

.method private static getVoiceCallEqParamValue(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const-string v0, "0"

    :goto_0
    return-object v0

    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_1
    const-string v0, "4"

    goto :goto_0

    :pswitch_2
    const-string v0, "5"

    goto :goto_0

    :pswitch_3
    const-string v0, "0"

    goto :goto_0

    :cond_0
    packed-switch p0, :pswitch_data_1

    const-string v0, "0"

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x0

    goto :goto_0

    :pswitch_5
    const-string v0, "4"

    goto :goto_0

    :pswitch_6
    const-string v0, "5"

    goto :goto_0

    :pswitch_7
    const-string v0, "0"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_5
        :pswitch_6
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public static getVoiceEqListValue()I
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->getVoiceEqListValue(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static getVoiceEqListValue(Landroid/content/Context;)I
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-static {p0}, Lcom/android/services/telephony/common/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v8

    if-nez v8, :cond_5

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hearing_revision"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_eq_list_value"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090014

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVoiceEqListValue_noCallPose : isHearingRevisionOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " eqListValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    if-eq v2, v10, :cond_0

    if-ne v2, v11, :cond_2

    :cond_0
    move v5, v7

    :goto_0
    if-lez v4, :cond_4

    if-nez v5, :cond_4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v8, "hearing_direction"

    const/4 v9, -0x1

    invoke-static {v6, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x3

    const-string v6, "getVoiceEqListValue : My sound is on! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    :cond_1
    :goto_1
    move v3, v2

    :goto_2
    return v3

    :cond_2
    move v5, v6

    goto :goto_0

    :cond_3
    if-ne v0, v7, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x4

    const-string v6, "getVoiceEqListValue : My sound is on! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    if-nez v4, :cond_1

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voicecall_eq_list_value"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    const-string v6, "getVoiceEqListValue : My sound is off! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "hearing_revision"

    invoke-static {v8, v9, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_eq_list_value"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f09000e

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    array-length v8, v1

    if-lt v2, v8, :cond_6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "voicecall_eq_list_value"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x3

    const-string v8, "change eqListValue for upgrade "

    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    :cond_6
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "getVoiceEqListValue : isHearingRevisionOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " eqListValue = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    if-lez v4, :cond_8

    if-eqz v2, :cond_8

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voicecall_eq_list_value"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x0

    const-string v6, "getVoiceEqListValue : My sound is on! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    :cond_7
    :goto_3
    move v3, v2

    goto/16 :goto_2

    :cond_8
    if-nez v4, :cond_7

    if-nez v2, :cond_7

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "voicecall_eq_list_value"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v2, 0x3

    const-string v6, "getVoiceEqListValue : My sound is off! change eqlist value"

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private static initVoiceCallEq(Lcom/android/phone/PhoneGlobals;)V
    .locals 4

    const-string v1, "dha=0,0,0,0,0,0,0,0,0,0,0,0,0,0"

    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    const-string v2, "dha=0,0,0,0,0,0,0,0,0,0,0,0,0,0"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    const-string v2, "initVoiceCallEq (dha=0,0,0,0,0,0,0,0,0,0,0,0,0,0)"

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    const/4 v2, 0x0

    sput-boolean v2, Lcom/android/phone/PhoneUtilsCommon;->sIsVoiceCallEq:Z

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->stopMySoundDirectionListening(Landroid/content/Context;)V

    return-void
.end method

.method public static isAvailablePSVT()Z
    .locals 1

    const-string v0, "common_vt"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isServiceRegistered(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isAvailableVoLTE()Z
    .locals 1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isSupportVoLTE()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isServiceRegistered(I)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCIFVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_CIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method static isExtraVolOn(Landroid/content/Context;)Z
    .locals 13

    const/4 v9, 0x0

    const/4 v12, 0x1

    const-string v10, "extra_volume"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_1

    :cond_0
    :goto_0
    return v9

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v1, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    sget-object v10, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v10, :cond_2

    if-nez v5, :cond_2

    const-string v10, "isExtraVolOn: return false :: fgCallState != Call.State.ACTIVE"

    invoke-static {v10, v12}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    const-string v10, "audio"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v7

    invoke-virtual {v0}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v6

    if-nez v7, :cond_3

    if-eqz v6, :cond_4

    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isExtraVolOn: headset= "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " bt = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    const/4 v9, 0x0

    const-string v10, "extraVolume"

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isExtraVolOn: extraButtonOn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    const-string v10, "true"

    invoke-virtual {v2, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const-string v10, "audioParam;extraVolume"

    invoke-virtual {v0, v10}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "isExtraVolOn: isPossibleSoundPath = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v12}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    const-string v10, "true"

    invoke-virtual {v8, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v9, 0x1

    goto/16 :goto_0
.end method

.method public static isFactoryMode()Z
    .locals 7

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v2, 0x0

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "SHOULD_SHUT_DOWN"

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const-string v4, "PhoneUtilsCommon"

    const-string v5, "Factory mode is enabled by Case #1"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_0
    if-nez v3, :cond_1

    const-string v5, "999999999999999"

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "phone"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "PhoneUtilsCommon"

    const-string v5, "Factory mode is enabled by Case #2"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    :cond_1
    if-nez v3, :cond_2

    :try_start_0
    new-instance v4, Ljava/io/File;

    const-string v5, "/efs/FactoryApp/factorymode"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 v5, 0x20

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_3

    const-string v4, "ON"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v4, "PhoneUtilsCommon"

    const-string v5, "Not factory mode"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v3

    :catch_0
    move-exception v1

    const-string v2, "OFF"

    const-string v4, "PhoneUtilsCommon"

    const-string v5, "cannot open file : /efs/FactoryApp/factorymode"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    const-string v4, "PhoneUtilsCommon"

    const-string v5, "Factory mode is enabled by Case #3"

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x1

    goto :goto_1
.end method

.method public static isHD720VideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HD720VIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isHDVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_HDVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_TX:Lcom/android/internal/telephony/Call$CallType;

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VIDEO_SHARE_RX:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    const-string v1, "PhoneUtilsCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isHDVideoCall - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isIMSRegistered()Z
    .locals 7

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v5, "common_volte"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->getIMSPhone(Lcom/android/internal/telephony/CallManager;)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/ServiceState;->getState()I

    move-result v5

    if-nez v5, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    if-nez v0, :cond_1

    move v2, v4

    goto :goto_0

    :cond_1
    const/4 v5, 0x7

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    if-nez v1, :cond_2

    move v2, v4

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->isRegistered()Z

    move-result v2

    goto :goto_0
.end method

.method public static isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->isHDVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->isCIFVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->isHD720VideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-static {p0}, Lcom/android/phone/PhoneUtilsCommon;->isVideoConfCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    goto :goto_0
.end method

.method public static isInternationalRoaming(Lcom/android/internal/telephony/Phone;)Z
    .locals 3

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isInternationalRoaming, isInternationalRoaming: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static isMM1_VOLTE()Z
    .locals 5

    const/4 v0, 0x0

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneUtilsCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simOperator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "52503"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static isOnVoLTECall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 6

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v4, v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isImsCall()Z

    move-result v4

    if-eqz v4, :cond_0

    :cond_2
    const/4 v3, 0x1

    goto :goto_0
.end method

.method public static isOnVoLTEVideoCall(Lcom/android/internal/telephony/CallManager;)Z
    .locals 8

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v5, v6, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    const-string v5, "PhoneUtilsCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fgCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", bgCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", rCall = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v4}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    invoke-static {v1}, Lcom/android/phone/PhoneUtilsCommon;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-static {v2}, Lcom/android/phone/PhoneUtilsCommon;->isIMSVideoCall(Lcom/android/internal/telephony/Call;)Z

    move-result v5

    if-eqz v5, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0
.end method

.method public static isPackageInstalled(Ljava/lang/String;)Z
    .locals 5

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v4, 0x0

    :try_start_0
    invoke-virtual {v2, p0, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method public static isPossibleEnableMySound()Z
    .locals 8

    const/4 v5, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v6, "audio"

    invoke-virtual {v2, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v4

    invoke-virtual {v1}, Landroid/media/AudioManager;->isBluetoothScoOn()Z

    move-result v3

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v6, 0x7f0a044c

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->displayToast(I)V

    :goto_0
    return v5

    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    const v6, 0x7f0a044f

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->displayToast(I)V

    goto :goto_0

    :cond_1
    const-string v6, "support_voice_eq_bt_headset"

    invoke-static {v6}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v0, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v6, v7, :cond_3

    if-eqz v3, :cond_2

    const v6, 0x7f0a044e

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->displayToast(I)V

    goto :goto_0

    :cond_2
    if-eqz v4, :cond_3

    const v6, 0x7f0a044d

    invoke-static {v6}, Lcom/android/phone/PhoneUtilsCommon;->displayToast(I)V

    goto :goto_0

    :cond_3
    const/4 v5, 0x1

    goto :goto_0
.end method

.method public static isPossibleEnableMySoundWithoutToast()Z
    .locals 2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static isQCIFVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QCIFVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isQVGAVideoCall(Lcom/android/internal/telephony/Call;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_QVGAVIDEO:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static isRJIOSimInserted()Z
    .locals 5

    const/4 v1, 0x1

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "PhoneUtilsCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simOperator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "405857"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405874"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405840"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405854"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405855"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405856"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405858"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405859"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405860"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405861"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405862"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405863"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405864"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405865"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405866"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405867"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405868"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405869"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405870"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405871"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405872"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "405873"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
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
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

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
    const-string v5, "PhoneUtilsCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isServiceRegistered is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v3

    :catch_0
    move-exception v1

    const-string v5, "PhoneUtilsCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isServiceRegistered:RuntimeException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isSupportVoLTE()Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    if-eqz v3, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v0, 0x0

    const-string v3, "enabled"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->isServiceAvailable(ILandroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v1, "PhoneUtilsCommon"

    const-string v3, "isSupportVoLTE is true."

    invoke-static {v1, v3, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    move v1, v2

    goto :goto_0

    :cond_1
    const-string v3, "PhoneUtilsCommon"

    const-string v4, "isSupportVoLTE is false."

    invoke-static {v3, v4, v2}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method public static isSupportVoWiFi()Z
    .locals 6

    const/4 v5, 0x1

    const/4 v0, 0x0

    const-string v2, "support_wfc"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "show_wifi_calling_menu"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "gsm.sim.operator.numeric"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "PhoneUtilsCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simOperator = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    const-string v2, "22803"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    const-string v2, "common_volte_in"

    invoke-static {v2}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isRJIOSimInserted()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    :goto_1
    const-string v2, "PhoneUtilsCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRJIOSimInserted() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isRJIOSimInserted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->i(Ljava/lang/String;Ljava/lang/String;Z)I

    :cond_1
    const-string v2, "PhoneUtilsCommon"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isSupportVoWiFi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static isVideoConfCall(Lcom/android/internal/telephony/Call;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public static isVoLTECall(Lcom/android/internal/telephony/Call;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/Call;->getCallType()Lcom/android/internal/telephony/Call$CallType;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Call$CallType;->IMS_CALL_VOICE:Lcom/android/internal/telephony/Call$CallType;

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    :cond_1
    const-string v1, "PhoneUtilsCommon"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVoLTECall - "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static isVoLTESettingEnabled()Z
    .locals 5

    const-string v3, "common_volte"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x7

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/commonimsinterface/imsinterface/CommonIMSInterface;->getInstance(ILandroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;

    const-string v3, "feature_skt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getServiceStatus()Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    const-string v3, "feature_ktt"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "support_uicc_mobility"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v3

    if-eqz v3, :cond_2

    if-eqz v2, :cond_0

    invoke-interface {v2}, Lcom/samsung/commonimsinterface/imsinterface/IMSInterfaceForGeneral;->getServiceStatus()Z

    move-result v1

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v1

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtilsCommon;->isIMSRegistered()Z

    move-result v1

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isVoiceCallEqEnabled(Landroid/content/Context;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v3, 0x0

    const-string v0, "com.sec.hearingadjust"

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v6, "com.sec.hearingadjust"

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v4

    const/4 v3, 0x1

    :cond_0
    if-eqz v3, :cond_1

    const-string v5, "mysound_music_only"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v3, 0x0

    :cond_1
    move v5, v3

    :goto_0
    return v5

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v6, "LOG_TAG"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Exception : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0
.end method

.method static isWBMode()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isWBMode - mWB : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneUtilsCommon;->mWB:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->mWB:Z

    return v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhoneUtilsCommon"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "PhoneUtilsCommon"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public static naturalSoundBroadcast(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_natural_sound"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "naturalSoundBroadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone.NATURAL_SOUND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method public static noiseReductionBroadcast(Landroid/content/Context;I)V
    .locals 5

    const/4 v4, 0x1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "call_noise_reduction"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "noiseReductionBroadcast: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v4}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.phone.NOISE_REDUCTION"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "value"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const-string v2, "com.android.phone"

    const-string v3, "REDU"

    if-lt p1, v4, :cond_0

    const-string v1, "on"

    :goto_0
    invoke-static {p0, v2, v3, v1}, Lcom/android/phone/utils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "off"

    goto :goto_0
.end method

.method public static onPostDialChars(Landroid/os/AsyncResult;C)V
    .locals 8

    const/4 v4, 0x0

    iget-object v0, p0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    if-eqz v0, :cond_0

    iget-object v3, p0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection$PostDialState;

    invoke-static {}, Lcom/android/services/utils/SecTelecomAdapter;->getInstance()Lcom/android/services/utils/SecTelecomAdapter;

    move-result-object v1

    const-string v5, "PhoneUtilsCommon"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onPostDialChars = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v5, Lcom/android/phone/PhoneUtilsCommon$3;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    if-eqz v1, :cond_0

    const-string v5, ""

    invoke-virtual {v1, v3, v5, p1, v4}, Lcom/android/services/utils/SecTelecomAdapter;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;Ljava/lang/String;CZ)V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, p1, v4}, Lcom/android/services/utils/SecTelecomAdapter;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;Ljava/lang/String;CZ)V

    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/PhoneUtilsCommon;->mPostDialStrAfterPause:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, p1, v4}, Lcom/android/services/utils/SecTelecomAdapter;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;Ljava/lang/String;CZ)V

    goto :goto_0

    :pswitch_3
    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v3, v5, p1, v4}, Lcom/android/services/utils/SecTelecomAdapter;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;Ljava/lang/String;CZ)V

    goto :goto_0

    :pswitch_4
    if-eqz v1, :cond_0

    const/4 v2, 0x0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    const/4 v2, 0x1

    :goto_1
    const-string v4, "PhoneUtilsCommon"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "anna onPostDialChars = show  : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, p1, v2}, Lcom/android/services/utils/SecTelecomAdapter;->onPostDialAction(Lcom/android/internal/telephony/Connection$PostDialState;Ljava/lang/String;CZ)V

    goto :goto_0

    :cond_3
    move v2, v4

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public static queryCount(Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;)I
    .locals 9

    const/4 v7, 0x0

    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    :try_start_0
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    if-nez v7, :cond_1

    const/4 v0, 0x0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_0
    :goto_0
    return v0

    :cond_1
    :try_start_1
    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I
    :try_end_1
    .catch Landroid/database/CursorWindowAllocationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_2
    :goto_1
    move v0, v6

    goto :goto_0

    :catch_0
    move-exception v8

    :try_start_2
    const-string v0, "PhoneUtilsCommon"

    const-string v1, "queryCount() : CursorWindowAllocationException caught"

    invoke-static {v0, v1}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v7, :cond_2

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v0

    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0
.end method

.method public static setAudioEffect(Z)V
    .locals 3

    const/4 v2, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setAudioEffect : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v2}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->isVoiceCallEqEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, v2}, Lcom/android/phone/PhoneUtilsCommon;->setVoiceCallEq(ZZ)V

    :cond_0
    return-void
.end method

.method public static setHideLandscapeIndicatorBar(Landroid/app/Activity;)V
    .locals 4

    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    if-eqz v2, :cond_0

    if-eqz v0, :cond_2

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit16 v2, v2, 0x400

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x1

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    and-int/lit16 v2, v2, -0x401

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, -0x2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    and-int/lit8 v2, v2, -0x3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->samsungFlags:I

    goto :goto_1
.end method

.method public static setVoiceCallEq(ZZ)V
    .locals 13

    const/4 v12, -0x1

    const/4 v9, 0x1

    const-string v10, "menu_simplification"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const-string v10, "audio"

    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneGlobals;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v10

    iget-object v2, v10, Lcom/android/phone/PhoneGlobals;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v10

    sget-object v11, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v10, v11, :cond_2

    const-string v10, "PhoneUtilsCommon"

    const-string v11, "- setVoiceCallEq : IDLE state"

    invoke-static {v10, v11, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    const/4 p0, 0x0

    :cond_2
    if-eqz p0, :cond_a

    sget-boolean v10, Lcom/android/phone/PhoneUtilsCommon;->sIsVoiceCallEq:Z

    if-eqz v10, :cond_3

    if-nez p1, :cond_3

    const-string v10, "PhoneUtilsCommon"

    const-string v11, "- setVoiceCallEq : already activated"

    invoke-static {v10, v11, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_3
    const-string v10, "support_safetycare"

    invoke-static {v10}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isSafetyAssistanceMode()Z

    move-result v10

    if-eqz v10, :cond_4

    const-string v10, "PhoneUtilsCommon"

    const-string v11, "- setVoiceCallEq : don\'t use setVoiceCallEq in emergency mode"

    invoke-static {v10, v11, v9}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    goto :goto_0

    :cond_4
    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->getVoiceEqListValue(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->IsVoiceCallEqOff(I)Z

    move-result v10

    if-eqz v10, :cond_5

    if-nez p1, :cond_5

    const-string v9, "setVoiceCallEq : The EQUALIZED_CALL_SOUND_OFF is set, so can\'t enable"

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v1}, Landroid/media/AudioManager;->isSpeakerphoneOn()Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsCommon;->isExtraVolOn(Landroid/content/Context;)Z

    move-result v10

    if-nez v10, :cond_9

    new-instance v8, Ljava/lang/StringBuffer;

    const-string v10, "dha="

    invoke-direct {v8, v10}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Lcom/android/phone/PhoneUtilsCommon;->getVoiceCallEqParamValue(I)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_8

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "hearing_direction"

    invoke-static {v10, v11, v12}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setVoiceCallEq : hearingDirection : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    if-eq v5, v12, :cond_6

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string v11, "hearing_parameters"

    invoke-static {v10, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dha=1,"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ","

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->startMySoundDirectionListening(Landroid/content/Context;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setVoiceCallEq:setParameter("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    sput-boolean v9, Lcom/android/phone/PhoneUtilsCommon;->sIsVoiceCallEq:Z

    goto/16 :goto_0

    :cond_6
    const-string v10, "setVoiceCallEq : FAIL TO ENABLE MY SOUND"

    invoke-static {v10}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->initVoiceCallEq(Lcom/android/phone/PhoneGlobals;)V

    :goto_1
    const-string v10, ",0,0,0,0,0,0,0,0,0,0,0,0,0"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setVoiceCallEq:setParameter("

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    const-string v10, "0"

    invoke-virtual {v10, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    const/4 v9, 0x0

    :cond_7
    sput-boolean v9, Lcom/android/phone/PhoneUtilsCommon;->sIsVoiceCallEq:Z

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->stopMySoundDirectionListening(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_8
    invoke-virtual {v8, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_9
    const-string v9, "setVoiceCallEq : Fail to enable because of audio path"

    invoke-static {v9}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->initVoiceCallEq(Lcom/android/phone/PhoneGlobals;)V

    goto/16 :goto_0

    :cond_a
    sget-boolean v9, Lcom/android/phone/PhoneUtilsCommon;->sIsVoiceCallEq:Z

    if-eqz v9, :cond_0

    invoke-static {v0}, Lcom/android/phone/PhoneUtilsCommon;->initVoiceCallEq(Lcom/android/phone/PhoneGlobals;)V

    goto/16 :goto_0
.end method

.method static setWBMode(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setWBMode - value : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    sput-boolean p0, Lcom/android/phone/PhoneUtilsCommon;->mWB:Z

    return-void
.end method

.method public static startMySoundDirectionListening(Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "startCallPose"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/android/services/telephony/common/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    if-nez v0, :cond_0

    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->registerListener(Landroid/hardware/scontext/SContextListener;I)Z

    sput-boolean v3, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    goto :goto_0

    :cond_2
    const-string v0, "getting sSContextManager failed"

    invoke-static {v0, v3}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public static stopMySoundDirectionListening(Landroid/content/Context;)V
    .locals 3

    const/4 v1, 0x1

    const-string v0, "stopCallPose"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    invoke-static {p0}, Lcom/android/services/telephony/common/PhoneFeature;->hasCallPoseFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    if-ne v0, v1, :cond_0

    const-string v0, "scontext"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/scontext/SContextManager;

    sput-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/phone/PhoneUtilsCommon;->sSContextManager:Landroid/hardware/scontext/SContextManager;

    sget-object v1, Lcom/android/phone/PhoneUtilsCommon;->sSContextListener:Landroid/hardware/scontext/SContextListener;

    const/16 v2, 0xb

    invoke-virtual {v0, v1, v2}, Landroid/hardware/scontext/SContextManager;->unregisterListener(Landroid/hardware/scontext/SContextListener;I)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/PhoneUtilsCommon;->sIsMySoundListening:Z

    goto :goto_0

    :cond_2
    const-string v0, "getting sSContextManager failed"

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtilsCommon;->log(Ljava/lang/String;Z)V

    goto :goto_0
.end method
