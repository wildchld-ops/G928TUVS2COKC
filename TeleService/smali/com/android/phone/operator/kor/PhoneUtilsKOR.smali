.class public Lcom/android/phone/operator/kor/PhoneUtilsKOR;
.super Ljava/lang/Object;
.source "PhoneUtilsKOR.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;
    }
.end annotation


# static fields
.field private static factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

.field private static mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->IDLE:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    sput-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    return-void
.end method

.method public static checkCallProtectionValue()Z
    .locals 7

    const/4 v3, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_call_protect_when_calling"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enable_call_protect_when_calling : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    if-ne v2, v3, :cond_0

    :goto_1
    return v3

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "enable_call_protect_when_calling"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v4, "enable_call_protect_when_calling : null->1"

    invoke-static {v4, v3}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    const/4 v2, 0x1

    goto :goto_0

    :catch_1
    move-exception v1

    const-string v4, "PhoneUtilsKOR"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enable_call_protect_when_calling : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/phone/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public static checkKTHDVoice()V
    .locals 14

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v4

    const-string v11, "ril.currentplmn"

    invoke-static {v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v8

    const-string v11, "support_uicc_mobility"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v11

    or-int/2addr v8, v11

    :cond_0
    if-eqz v8, :cond_8

    const-string v11, "oversea"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_8

    const-string v11, "checkKTHDVoice : normal case"

    invoke-static {v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "kt_hd_voice_abnormal_case"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "backup_voicecall_type"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    const/4 v11, -0x1

    if-eq v5, v11, :cond_4

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "checkKTHDVoice : normal case... backup_data : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voicecall_type"

    invoke-static {v11, v12, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move v10, v5

    if-nez v5, :cond_1

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hd_voice_network_pref"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    const-string v11, "interworking_hd_voice_by_intent"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_2

    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v12, "enable"

    if-nez v10, :cond_6

    const/4 v11, 0x1

    :goto_1
    invoke-virtual {v9, v12, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "sendBroadcast HD_VOICE_CHANGED - "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v10, :cond_7

    const/4 v11, 0x1

    :goto_2
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    :cond_2
    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "kt_hd_voice_abnormal_case"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "backup_voicecall_type"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->correctKTHDVoice()V

    :cond_3
    :goto_3
    return-void

    :cond_4
    const-string v11, "hd_voice_network_prefer_default_on"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voicecall_type"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hd_voice_network_pref"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v10, 0x0

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voicecall_type"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hd_voice_network_pref"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const/4 v10, 0x2

    goto/16 :goto_0

    :cond_6
    const/4 v11, 0x0

    goto :goto_1

    :cond_7
    const/4 v11, 0x0

    goto :goto_2

    :cond_8
    const-string v11, "checkKTHDVoice : abnormal case"

    invoke-static {v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "backup_voicecall_type"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v8, :cond_b

    const-string v11, "oversea"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, -0x1

    if-ne v5, v11, :cond_b

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voicecall_type"

    const/4 v13, 0x2

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "backup_voicecall_type"

    invoke-static {v11, v12, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_9
    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v11

    if-nez v11, :cond_a

    const-string v11, "oversea"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_a

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "voicecall_type"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "hd_voice_network_pref"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_a
    if-eqz v8, :cond_c

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "kt_hd_voice_abnormal_case"

    const/4 v13, 0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_5
    const-string v11, "interworking_hd_voice_by_intent"

    invoke-static {v11}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_3

    new-instance v9, Landroid/content/Intent;

    const-string v11, "android.intent.action.HD_VOICE_CHANGED"

    invoke-direct {v9, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v11, "enable"

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v11

    invoke-virtual {v11, v9}, Lcom/android/phone/PhoneGlobals;->sendBroadcast(Landroid/content/Intent;)V

    const-string v11, "sendBroadcast HD_VOICE_CHANGED : false "

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    goto/16 :goto_3

    :cond_b
    if-nez v8, :cond_9

    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "backup_voicecall_type"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_4

    :cond_c
    invoke-virtual {v4}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string v12, "kt_hd_voice_abnormal_case"

    const/4 v13, 0x0

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_5
.end method

.method public static checkUICCMovement()V
    .locals 6

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prev_sim_type"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const-string v3, "ril.simtype"

    const-string v4, "0"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkUICCMovement : prev : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "curr : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    const-string v3, "0"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eq v1, v3, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "prev_sim_type"

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setUICCDefaultHDVoice()V

    :cond_0
    return-void
.end method

.method public static correctKTHDVoice()V
    .locals 8

    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_type"

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hd_voice_network_pref"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const-string v5, "correctKTHDVoice"

    invoke-static {v5}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const-string v5, "support_uicc_mobility"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "correctKTHDVoice : KT SIM is not used"

    invoke-static {v5, v4}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const-string v5, "correctKTHDVoice : network_pref 0 => 1"

    invoke-static {v5, v4}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    :cond_0
    :goto_0
    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "voicecall_type"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "hd_voice_network_pref"

    invoke-static {v5, v6, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v1, v4, :cond_4

    :goto_1
    invoke-static {v3}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setHDVoiceNetworkPref(Z)V

    return-void

    :cond_1
    if-ne v1, v7, :cond_0

    if-ne v2, v4, :cond_0

    const/4 v1, 0x0

    const-string v5, "correctKTHDVoice : voicecall_type 2 => 0"

    invoke-static {v5, v4}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_2
    if-nez v1, :cond_3

    if-nez v2, :cond_3

    const/4 v1, 0x2

    const-string v5, "correctKTHDVoice : voicecall_type 0 => 2"

    invoke-static {v5, v4}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_3
    if-ne v1, v7, :cond_0

    if-ne v2, v4, :cond_0

    const/4 v1, 0x0

    const-string v5, "correctKTHDVoice : voicecall_type 2 => 0"

    invoke-static {v5, v4}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method public static getCurrentCallProtectionType()Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "PhoneUtilsKOR"

    invoke-static {v0, p0}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static log(Ljava/lang/String;Z)V
    .locals 1

    const-string v0, "PhoneUtilsKOR"

    invoke-static {v0, p0, p1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    return-void
.end method

.method public static declared-synchronized notifyCallProtectionStatus(Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;Z)V
    .locals 14

    const/4 v6, 0x0

    const/4 v9, 0x1

    const-class v10, Lcom/android/phone/operator/kor/PhoneUtilsKOR;

    monitor-enter v10

    :try_start_0
    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    const/4 v11, 0x5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v12

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v12

    if-ne v11, v12, :cond_1

    const-string v9, "notifyCallProtectionStatus : IMS"

    const/4 v11, 0x1

    invoke-static {v9, v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v10

    return-void

    :cond_1
    :try_start_1
    sget-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    if-ne v11, p0, :cond_2

    if-nez p1, :cond_2

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyCallProtectionStatus : no change - "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    sget-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v9, v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v9

    monitor-exit v10

    throw v9

    :cond_2
    :try_start_2
    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionValue()V

    const-string v11, "gsm.version.ril-impl"

    const-string v12, "Qualcomm"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v8

    :try_start_3
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ril version : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    const-string v11, "Qualcomm"

    const/4 v12, 0x0

    const-string v13, "Qualcomm"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_6

    sget-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v11, :cond_3

    new-instance v11, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    sput-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    :try_start_4
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const/4 v5, 0x6

    const/16 v11, 0x16

    :try_start_5
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v11, 0x37

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v11, 0x1

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getCallManager()Lcom/android/internal/telephony/CallManager;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/PhoneConstants$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v11, v12, :cond_4

    sget-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->IDLE:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    if-ne v11, p0, :cond_7

    :cond_4
    const/4 v9, 0x0

    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    const-string v9, "notifyCallProtectionStatus : No Call"

    const/4 v11, 0x1

    invoke-static {v9, v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    sget-object v9, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->IDLE:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    sput-object v9, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    :goto_2
    sget-object v9, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v9, :cond_b

    sget-object v9, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v9, v11, v12}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :goto_3
    if-eqz v1, :cond_5

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_5
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catch_0
    move-exception v3

    :try_start_7
    const-string v9, "PhoneUtilsKOR"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyCallProtectionStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_0

    :cond_6
    :try_start_8
    sget-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v11, :cond_3

    sget-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v11}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    const/4 v11, 0x0

    sput-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    :catch_1
    move-exception v4

    :try_start_9
    const-string v11, "PhoneUtilsKOR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyCallProtectionStatus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_1

    :cond_7
    :try_start_a
    sget-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->BLOCK:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    if-ne v11, p0, :cond_8

    move v6, v9

    :cond_8
    if-eqz v6, :cond_a

    :goto_4
    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyCallProtectionStatus : "

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x1

    invoke-static {v9, v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    sput-object p0, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->mCallProtectionType:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    :catch_2
    move-exception v3

    :try_start_b
    const-string v9, "PhoneUtilsKOR"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyCallProtectionStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    if-eqz v1, :cond_9

    :try_start_c
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_9
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_3
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/16 :goto_0

    :catch_3
    move-exception v3

    :try_start_d
    const-string v9, "PhoneUtilsKOR"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyCallProtectionStatus: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/16 :goto_0

    :cond_a
    const/4 v9, 0x2

    goto :goto_4

    :cond_b
    :try_start_e
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v11, 0x0

    invoke-interface {v7, v9, v11}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_2
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    goto/16 :goto_3

    :catchall_1
    move-exception v9

    if-eqz v1, :cond_c

    :try_start_f
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_4
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    :cond_d
    :goto_5
    :try_start_10
    throw v9

    :catch_4
    move-exception v3

    const-string v11, "PhoneUtilsKOR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyCallProtectionStatus: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_5
.end method

.method public static notifyCallProtectionStatus(Z)V
    .locals 2

    if-eqz p0, :cond_0

    sget-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->BLOCK:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    :goto_0
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->notifyCallProtectionStatus(Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;Z)V

    return-void

    :cond_0
    sget-object v0, Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;->UNBLOCK:Lcom/android/phone/operator/kor/PhoneUtilsKOR$CallProtectionType;

    goto :goto_0
.end method

.method public static notifyCallProtectionValue()V
    .locals 14

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v7

    const-string v11, "gsm.version.ril-impl"

    const-string v12, "Qualcomm"

    invoke-static {v11, v12}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    :try_start_0
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "ril version : "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    invoke-static {v11, v12}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    const-string v11, "Qualcomm"

    const/4 v12, 0x0

    const-string v13, "Qualcomm"

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    invoke-virtual {v8, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    sget-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v11, :cond_0

    new-instance v11, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v12

    invoke-direct {v11, v12}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    sput-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/4 v6, 0x6

    const/16 v11, 0x16

    :try_start_1
    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v11, 0x37

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v6}, Ljava/io/DataOutputStream;->writeShort(I)V

    const/4 v11, 0x0

    invoke-virtual {v2, v11}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->checkCallProtectionValue()Z

    move-result v4

    if-eqz v4, :cond_4

    :goto_1
    invoke-virtual {v2, v9}, Ljava/io/DataOutputStream;->writeByte(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "notifyCallProtectionValue : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    if-eqz v4, :cond_5

    const-string v9, "Set"

    :goto_2
    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    invoke-static {v9, v10}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    sget-object v9, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v9, :cond_6

    sget-object v9, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v10

    const/4 v11, 0x0

    invoke-virtual {v9, v10, v11}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_3
    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_4
    return-void

    :cond_3
    :try_start_3
    sget-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v11, :cond_0

    sget-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v11}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    const/4 v11, 0x0

    sput-object v11, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    const-string v11, "PhoneUtilsKOR"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "notifyCallProtectionValue: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v9, v10

    goto :goto_1

    :cond_5
    :try_start_4
    const-string v9, "Unset"

    goto :goto_2

    :cond_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-interface {v7, v9, v10}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_5
    const-string v9, "PhoneUtilsKOR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyCallProtectionValue : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_7
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception v3

    const-string v9, "PhoneUtilsKOR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyCallProtectionValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :catch_3
    move-exception v3

    const-string v9, "PhoneUtilsKOR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "notifyCallProtectionValue: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :catchall_0
    move-exception v9

    if-eqz v1, :cond_8

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_8
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_9
    :goto_5
    throw v9

    :catch_4
    move-exception v3

    const-string v10, "PhoneUtilsKOR"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "notifyCallProtectionValue: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5
.end method

.method public static setAutoDialState()V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const-string v8, "gsm.operator.iso-country"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v8, "RoamingPrefs"

    invoke-virtual {v0, v8, v10}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v8, "lastest_country"

    invoke-interface {v6, v8}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_3

    const-string v8, "contain lastest_country"

    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const-string v8, "lastest_country"

    const-string v9, "kr"

    invoke-interface {v6, v8, v9}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    :goto_0
    if-eqz v2, :cond_0

    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    const-string v8, "lastestCountry Change"

    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const-string v8, "lastest_country"

    invoke-interface {v1, v8, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    :cond_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isoCountryCode = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", lastestCountry = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    if-eqz v2, :cond_2

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    const-string v8, ""

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    :cond_1
    const-string v8, "LGT AutoDialState No Change!!"

    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const-string v8, "kr"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v8, "Not contain lastest_country"

    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const-string v8, "lastest_country"

    const-string v9, "kr"

    invoke-interface {v1, v8, v9}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v3, "kr"

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->getRoamingAutoSetting()I

    move-result v5

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v8

    invoke-virtual {v8}, Landroid/telephony/ServiceState;->getState()I

    move-result v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "LGT roaming_auto_setting "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    if-ne v5, v11, :cond_2

    if-nez v4, :cond_2

    const-string v7, ""

    const v8, 0x7f0a047a

    invoke-virtual {v0, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "LGT show toast!!"

    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    invoke-static {v0, v7, v11}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v8

    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    invoke-static {v10}, Lcom/android/services/telephony/common/SystemDBInterface;->setRoamingAutoSetting(I)V

    goto :goto_1

    :cond_5
    const-string v8, "kr"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "LGT AutoDialing off"

    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const/16 v8, 0xc

    invoke-static {v8}, Lcom/android/services/telephony/common/SystemDBInterface;->setLGTRADSetting(I)V

    :goto_2
    invoke-static {}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->setDefaultRoamingValue()V

    goto :goto_1

    :cond_6
    const-string v8, "LGT AutoDialing on"

    invoke-static {v8}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    const/16 v8, 0xb

    invoke-static {v8}, Lcom/android/services/telephony/common/SystemDBInterface;->setLGTRADSetting(I)V

    goto :goto_2
.end method

.method private static setDefaultRoamingValue()V
    .locals 4

    const-string v2, "PhoneUtilsExt : setDefaultRoamingValue"

    invoke-static {v2}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x6c

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setLGTRADID(I)V

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setLGTRADCode(Ljava/lang/String;)V

    const/4 v2, 0x1

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setLGTRADNameKor(Ljava/lang/String;)V

    const/4 v2, 0x2

    aget-object v2, v1, v2

    invoke-static {v2}, Lcom/android/services/telephony/common/SystemDBInterface;->setLGTRADNameEng(Ljava/lang/String;)V

    return-void
.end method

.method public static setHDVoiceNetworkPref(Z)V
    .locals 13

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v6

    const-string v10, "gsm.version.ril-impl"

    const-string v11, "Qualcomm"

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    :try_start_0
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "ril version : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x1

    invoke-static {v10, v11}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V

    const-string v10, "Qualcomm"

    const/4 v11, 0x0

    const-string v12, "Qualcomm"

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    sget-object v10, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-nez v10, :cond_0

    new-instance v10, Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v0}, Lcom/android/phone/PhoneGlobals;->getBaseContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/samsung/android/sec_platform_library/FactoryPhone;-><init>(Landroid/content/Context;)V

    sput-object v10, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v2, Ljava/io/DataOutputStream;

    invoke-direct {v2, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    const/16 v5, 0x8

    const/16 v10, 0x16

    :try_start_1
    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/16 v10, 0x61

    invoke-virtual {v2, v10}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {v2, v5}, Ljava/io/DataOutputStream;->writeShort(I)V

    if-eqz p0, :cond_4

    :goto_1
    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    const/4 v8, 0x0

    invoke-virtual {v2, v8}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-object v8, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v8, :cond_5

    sget-object v8, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V

    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "setHDVoiceNetworkPref : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    invoke-static {v8, v9}, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->log(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_2
    :goto_3
    return-void

    :cond_3
    :try_start_3
    sget-object v10, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    if-eqz v10, :cond_0

    sget-object v10, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;

    invoke-virtual {v10}, Lcom/samsung/android/sec_platform_library/FactoryPhone;->disconnectFromRilService()V

    const/4 v10, 0x0

    sput-object v10, Lcom/android/phone/operator/kor/PhoneUtilsKOR;->factoryPhone:Lcom/samsung/android/sec_platform_library/FactoryPhone;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    const-string v10, "PhoneUtilsKOR"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "setHDVoiceNetworkPref: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    move v8, v9

    goto :goto_1

    :cond_5
    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    const/4 v9, 0x0

    invoke-interface {v6, v8, v9}, Lcom/android/internal/telephony/Phone;->invokeOemRilRequestRaw([BLandroid/os/Message;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v3

    :try_start_5
    const-string v8, "PhoneUtilsKOR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setHDVoiceNetworkPref : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_6
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    const-string v8, "PhoneUtilsKOR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setHDVoiceNetworkPref: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_3
    move-exception v3

    const-string v8, "PhoneUtilsKOR"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "setHDVoiceNetworkPref: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :catchall_0
    move-exception v8

    if-eqz v1, :cond_7

    :try_start_7
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    :cond_7
    if-eqz v2, :cond_8

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_4

    :cond_8
    :goto_4
    throw v8

    :catch_4
    move-exception v3

    const-string v9, "PhoneUtilsKOR"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "setHDVoiceNetworkPref: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/phone/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public static setUICCDefaultHDVoice()V
    .locals 9

    invoke-static {}, Lcom/android/phone/PhoneGlobals;->getInstance()Lcom/android/phone/PhoneGlobals;

    move-result-object v3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->isSKTSIM()Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v6, 0x1

    :cond_0
    :goto_0
    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "voicecall_type"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v7, "hd_voice_network_prefer"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "hd_voice_network_pref"

    invoke-static {v7, v8, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_1
    const-string v7, "feature_skt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-virtual {v3}, Lcom/android/phone/PhoneGlobals;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "volte_noti_settings"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void

    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isLGTSIM()Z

    move-result v7

    if-eqz v7, :cond_4

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    goto :goto_0

    :cond_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isKTSIM()Z

    move-result v7

    if-eqz v7, :cond_0

    const-string v7, "hd_voice_network_prefer_default_on"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5

    const/4 v5, 0x0

    const/4 v4, 0x1

    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_5
    const-string v7, "feature_ktt"

    invoke-static {v7}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_6

    const/4 v5, 0x2

    :goto_2
    const/4 v4, 0x0

    goto :goto_1

    :cond_6
    const/4 v5, 0x1

    goto :goto_2
.end method
