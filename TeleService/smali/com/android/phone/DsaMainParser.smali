.class public Lcom/android/phone/DsaMainParser;
.super Landroid/app/Activity;
.source "DsaMainParser.java"


# static fields
.field private static DEBUG:Z

.field public static mEdit:Landroid/content/SharedPreferences$Editor;

.field private static mIsFirst:Z

.field public static mPref:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sput-object v2, Lcom/android/phone/DsaMainParser;->mPref:Landroid/content/SharedPreferences;

    sput-object v2, Lcom/android/phone/DsaMainParser;->mEdit:Landroid/content/SharedPreferences$Editor;

    sput-boolean v1, Lcom/android/phone/DsaMainParser;->mIsFirst:Z

    const-string v2, "ro.debuggable"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    sput-boolean v0, Lcom/android/phone/DsaMainParser;->DEBUG:Z

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private checkInterChangedSIM(Landroid/content/Context;)Z
    .locals 14

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v0, 0x0

    const-wide/16 v2, 0x0

    const-string v5, "0"

    const-string v6, "0"

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    const/4 v12, 0x0

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v7, v12}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v7

    if-eqz v7, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v7

    const/4 v12, 0x1

    invoke-static {v12}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v12

    const/4 v13, 0x0

    aget v12, v12, v13

    invoke-virtual {v7, v12}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v6

    :cond_0
    if-nez v5, :cond_1

    const-string v5, "0"

    :cond_1
    if-nez v6, :cond_2

    const-string v6, "0"

    :cond_2
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_3

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    sget-boolean v7, Lcom/android/phone/DsaMainParser;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string v7, "DsaMainParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkInterChangedSIM : Sim1OperatorVal:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    sget-boolean v7, Lcom/android/phone/DsaMainParser;->DEBUG:Z

    if-eqz v7, :cond_4

    const-string v7, "DsaMainParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkInterChangedSIMr : Sim2OperatorVal:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "dsa_sim1_value"

    invoke-static {v7, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v8

    :goto_0
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "dsa_sim2_value"

    invoke-static {v7, v12}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v10

    :goto_1
    sget-boolean v7, Lcom/android/phone/DsaMainParser;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string v7, "DsaMainParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkInterChangedSIM :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v7, "DsaMainParser"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "checkInterChangedSIM :"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    cmp-long v7, v0, v10

    if-nez v7, :cond_6

    cmp-long v7, v2, v8

    if-nez v7, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v7, v0, v12

    if-eqz v7, :cond_6

    const-wide/16 v12, 0x0

    cmp-long v7, v2, v12

    if-eqz v7, :cond_6

    const-string v7, "DsaMainParser"

    const-string v12, "checkInterChangedSIM : Each sim interchanged"

    invoke-static {v7, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "dsa_sim1_value"

    invoke-static {v7, v12, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "dsa_sim2_value"

    invoke-static {v7, v12, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const/4 v7, 0x1

    :goto_2
    return v7

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "dsa_sim1_value"

    invoke-static {v7, v12, v0, v1}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v12, "dsa_sim2_value"

    invoke-static {v7, v12, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    const/4 v7, 0x0

    goto :goto_2
.end method

.method public static resetDsaInitial()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/phone/DsaMainParser;->setDsaInitial(Z)V

    return-void
.end method

.method public static setDsaInitial(Z)V
    .locals 3

    sget-object v0, Lcom/android/phone/DsaMainParser;->mEdit:Landroid/content/SharedPreferences$Editor;

    const-string v1, "dsa_IsFirst"

    invoke-interface {v0, v1, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    sget-object v0, Lcom/android/phone/DsaMainParser;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v0, "DsaMainParser"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setInitDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 12

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const-string v7, "DsaMainParser"

    const-string v8, "onCreate"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string v7, "dsa_Initial"

    invoke-virtual {p0, v7, v9}, Lcom/android/phone/DsaMainParser;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v7

    sput-object v7, Lcom/android/phone/DsaMainParser;->mPref:Landroid/content/SharedPreferences;

    sget-object v7, Lcom/android/phone/DsaMainParser;->mPref:Landroid/content/SharedPreferences;

    invoke-interface {v7}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v7

    sput-object v7, Lcom/android/phone/DsaMainParser;->mEdit:Landroid/content/SharedPreferences$Editor;

    invoke-virtual {p0}, Lcom/android/phone/DsaMainParser;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v7, "extra_changed_imsi"

    invoke-virtual {v2, v7, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/android/phone/DsaMainParser;->mPref:Landroid/content/SharedPreferences;

    const-string v8, "dsa_wizad_done"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "DsaMainParser"

    const-string v8, "EXTRA_CHANGED_IMSI"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/phone/DsaMainParser;->resetDsaInitial()V

    const-string v7, "dsa_phone_number"

    invoke-virtual {p0, v7, v9}, Lcom/android/phone/DsaMainParser;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v7, "dsa_phone_number_sim1"

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "dsa_phone_number_sim2"

    invoke-interface {v1, v7, v10}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v7, "dsa_main"

    invoke-virtual {p0, v7, v9}, Lcom/android/phone/DsaMainParser;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v7, "dsa_result_dialog_success_is_checked"

    invoke-interface {v1, v7, v9}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-static {v9}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/phone/DsaMainParser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dsa_is_activate"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/android/phone/DsaMainParser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dsa_is_first"

    invoke-static {v7, v8, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    invoke-direct {p0, p0}, Lcom/android/phone/DsaMainParser;->checkInterChangedSIM(Landroid/content/Context;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/DsaMainParser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dsa_inter_change"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-ne v7, v11, :cond_3

    :cond_1
    const-string v7, "dsa_phone_number"

    invoke-virtual {p0, v7, v9}, Lcom/android/phone/DsaMainParser;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v7, "dsa_phone_number_sim2"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "dsa_phone_number_sim1"

    invoke-interface {v6, v7, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "dsa_phone_number_sim1"

    invoke-interface {v1, v7, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    const-string v7, "dsa_phone_number_sim2"

    invoke-interface {v1, v7, v5}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    const-string v7, "SelectSimStatus"

    invoke-virtual {p0, v7, v9}, Lcom/android/phone/DsaMainParser;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v7, "SimStatus"

    invoke-interface {v6, v7, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v11, :cond_4

    const/4 v0, 0x2

    :cond_2
    :goto_0
    const-string v7, "SimStatus"

    invoke-interface {v1, v7, v0}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    invoke-virtual {p0}, Lcom/android/phone/DsaMainParser;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "dsa_inter_change"

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_3
    return-void

    :cond_4
    const/4 v7, 0x2

    if-ne v0, v7, :cond_2

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onResume()V
    .locals 6

    const/4 v5, 0x1

    const-string v3, "DsaMainParser"

    const-string v4, "onResume"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    sget-object v3, Lcom/android/phone/DsaMainParser;->mPref:Landroid/content/SharedPreferences;

    const-string v4, "dsa_IsFirst"

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lcom/android/phone/DsaMainParser;->mIsFirst:Z

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    sget-boolean v3, Lcom/android/phone/DsaMainParser;->mIsFirst:Z

    if-eqz v3, :cond_1

    const-string v3, "DsaExtraInitial"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "com.android.phone.DsaPhoneNumber"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/DsaMainParser;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v3, "extra_init_dialog"

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "extra_init_dialog"

    invoke-virtual {v2, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {p0, v2}, Lcom/android/phone/DsaMainParser;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return-void

    :cond_1
    const-string v3, "com.android.phone.DsaMain"

    invoke-virtual {v2, p0, v3}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v3, "DsaMainParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "startActivity() failed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
