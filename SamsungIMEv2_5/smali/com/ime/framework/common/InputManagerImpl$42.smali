.class Lcom/ime/framework/common/InputManagerImpl$42;
.super Landroid/database/ContentObserver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$42;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 7

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$42;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/ime/framework/common/InputManagerImpl;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "sip_input_language"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "SamsungIME"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mWritingBuddyLanguageInfo: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_0

    invoke-static {v0}, Lcom/ime/framework/common/LanguageID;->getId(Ljava/lang/String;)I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    const/high16 v4, -0x10000

    and-int/2addr v2, v4

    :sswitch_0
    sget-boolean v4, Lcom/ime/framework/util/Debug;->USE_COMMIT_MANAGER:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$42;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-static {}, Lcom/ime/framework/repository/SharedPreferencesCommitManagerImpl;->getInstance()Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v5

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mSPCommitManager:Lcom/ime/framework/repository/SharedPreferencesCommitManager;
    invoke-static {v4, v5}, Lcom/ime/framework/common/InputManagerImpl;->access$4602(Lcom/ime/framework/common/InputManagerImpl;Lcom/ime/framework/repository/SharedPreferencesCommitManager;)Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$42;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mSPCommitManager:Lcom/ime/framework/repository/SharedPreferencesCommitManager;
    invoke-static {v4}, Lcom/ime/framework/common/InputManagerImpl;->access$4600(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/repository/SharedPreferencesCommitManager;

    move-result-object v4

    const-string v5, "input_language"

    invoke-interface {v4, v5, v2}, Lcom/ime/framework/repository/SharedPreferencesCommitManager;->setData(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$42;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/ime/framework/common/InputManagerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v3

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v4, "input_language"

    invoke-interface {v1, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x656e4155 -> :sswitch_0
        0x656e4742 -> :sswitch_0
        0x656e5553 -> :sswitch_0
        0x65734553 -> :sswitch_0
        0x65735553 -> :sswitch_0
        0x66724341 -> :sswitch_0
        0x66724652 -> :sswitch_0
        0x6d794d4d -> :sswitch_0
        0x70744252 -> :sswitch_0
        0x70745054 -> :sswitch_0
        0x7a314d4d -> :sswitch_0
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch
.end method
