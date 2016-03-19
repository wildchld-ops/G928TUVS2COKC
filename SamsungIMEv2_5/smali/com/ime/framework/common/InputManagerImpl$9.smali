.class Lcom/ime/framework/common/InputManagerImpl$9;
.super Landroid/os/Handler;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/common/InputManagerImpl;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x1

    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ime/framework/util/Utils;->isPowerSavingModeON(Landroid/content/Context;)Z

    move-result v5

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mIsPowerSavingOn:Z
    invoke-static {v4, v5}, Lcom/ime/framework/common/InputManagerImpl;->access$4302(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ime/framework/util/Utils;->isUltraPowerSavingModeON(Landroid/content/Context;)Z

    move-result v5

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mIsUltraPowerSavingOn:Z
    invoke-static {v4, v5}, Lcom/ime/framework/common/InputManagerImpl;->access$4402(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/ime/framework/util/Utils;->isEmergencyModeON(Landroid/content/Context;)Z

    move-result v5

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mIsEmergencyModeOn:Z
    invoke-static {v4, v5}, Lcom/ime/framework/common/InputManagerImpl;->access$4502(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v0, 0x0

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-static {}, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->getInstance()Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v5

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mSPCommitManager:Lcom/ime/framework/repository/SharedPreferencesCommitManager;
    invoke-static {v4, v5}, Lcom/ime/framework/common/InputManagerImpl;->access$4602(Lcom/ime/framework/common/InputManagerImpl;Lcom/ime/framework/repository/SharedPreferencesCommitManager;)Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsPowerSavingOn:Z
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4300(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsEmergencyModeOn:Z
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4500(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mSPCommitManager:Lcom/ime/framework/repository/SharedPreferencesCommitManager;
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4600(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/ime/framework/repository/SharedPreferencesCommitManager;->commitAll()V

    sput-boolean v9, Lcom/ime/framework/util/Debug;->USE_COMMIT_MANAGER:Z

    :goto_1
    sget-boolean v4, Lcom/ime/framework/util/Debug;->USE_COMMIT_MANAGER:Z

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mSPCommitManager:Lcom/ime/framework/repository/SharedPreferencesCommitManager;
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4600(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v4

    const-string v5, "doing_one_in_power_saving_mode"

    invoke-interface {v4, v5, v9}, Lcom/ime/framework/repository/SharedPreferencesCommitManager;->getData(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsPowerSavingOn:Z
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4300(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v4

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsEmergencyModeOn:Z
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4500(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v4

    if-eqz v4, :cond_7

    :cond_2
    if-nez v0, :cond_3

    sget-boolean v4, Lcom/ime/framework/util/Debug;->USE_COMMIT_MANAGER:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mSPCommitManager:Lcom/ime/framework/repository/SharedPreferencesCommitManager;
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4600(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v4

    const-string v5, "doing_one_in_power_saving_mode"

    invoke-interface {v4, v5, v8}, Lcom/ime/framework/repository/SharedPreferencesCommitManager;->setData(Ljava/lang/String;I)V

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mSPCommitManager:Lcom/ime/framework/repository/SharedPreferencesCommitManager;
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4600(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v4

    const-string v5, "user_choice_to_vibration_on"

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "sip_key_feedback_vibration"

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    invoke-interface {v4, v5, v6}, Lcom/ime/framework/repository/SharedPreferencesCommitManager;->setData(Ljava/lang/String;I)V

    :goto_3
    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sip_key_feedback_vibration"

    invoke-static {v4, v5, v9}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v4

    const-string v5, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {v4, v5, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    sget-boolean v4, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "SamsungIME"

    const-string v5, "[mPowerSavingHandler] mIsPowerSavingOn is ON. KEY_SUPPORT_KEY_VIBRATE = false."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_4
    sget-boolean v4, Lcom/ime/framework/util/Debug;->USE_COMMIT_MANAGER:Z

    if-nez v4, :cond_0

    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    :cond_4
    sput-boolean v8, Lcom/ime/framework/util/Debug;->USE_COMMIT_MANAGER:Z

    goto :goto_1

    :cond_5
    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/ime/framework/common/InputManagerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    const-string v4, "doing_one_in_power_saving_mode"

    invoke-interface {v1, v4, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    goto :goto_2

    :cond_6
    const-string v4, "doing_one_in_power_saving_mode"

    invoke-interface {v2, v4, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    const-string v4, "user_choice_to_vibration_on"

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "sip_key_feedback_vibration"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    invoke-interface {v2, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_3

    :cond_7
    if-ne v0, v8, :cond_3

    const/4 v3, 0x1

    sget-boolean v4, Lcom/ime/framework/util/Debug;->USE_COMMIT_MANAGER:Z

    if-eqz v4, :cond_8

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mSPCommitManager:Lcom/ime/framework/repository/SharedPreferencesCommitManager;
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4600(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v4

    const-string v5, "user_choice_to_vibration_on"

    invoke-interface {v4, v5, v8}, Lcom/ime/framework/repository/SharedPreferencesCommitManager;->getData(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mSPCommitManager:Lcom/ime/framework/repository/SharedPreferencesCommitManager;
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4600(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v4

    const-string v5, "doing_one_in_power_saving_mode"

    invoke-interface {v4, v5, v9}, Lcom/ime/framework/repository/SharedPreferencesCommitManager;->setData(Ljava/lang/String;I)V

    :goto_5
    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sip_key_feedback_vibration"

    invoke-static {v4, v5, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    if-ne v3, v8, :cond_9

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v4

    const-string v5, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {v4, v5, v8}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    :goto_6
    sget-boolean v4, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v4, :cond_3

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[mPowerSavingHandler] mIsPowerSavingOn is OFF. KEY_SUPPORT_KEY_VIBRATE = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_8
    const-string v4, "user_choice_to_vibration_on"

    invoke-interface {v1, v4, v8}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    const-string v4, "doing_one_in_power_saving_mode"

    invoke-interface {v2, v4, v9}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    goto :goto_5

    :cond_9
    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$9;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mRepository:Lcom/ime/framework/repository/Repository;
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$2200(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/Repository;

    move-result-object v4

    const-string v5, "SETTINGS_DEFAULT_SUPPORT_KEY_VIBRATE"

    invoke-interface {v4, v5, v9}, Lcom/ime/framework/repository/Repository;->setData(Ljava/lang/String;Z)V

    goto :goto_6

    nop

    :pswitch_data_0
    .packed-switch 0x3d
        :pswitch_0
    .end packed-switch
.end method
