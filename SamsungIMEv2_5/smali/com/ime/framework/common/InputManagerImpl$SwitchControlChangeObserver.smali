.class Lcom/ime/framework/common/InputManagerImpl$SwitchControlChangeObserver;
.super Landroid/database/ContentObserver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SwitchControlChangeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method public constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$SwitchControlChangeObserver;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8

    const/4 v1, 0x0

    const/4 v4, 0x1

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "universal_switch_enabled"

    invoke-static {v5, v6, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "SamsungIME"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "universalSwitchState changed to:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v3, v4, :cond_0

    move v1, v4

    :cond_0
    if-eqz v1, :cond_1

    const-string v5, "SamsungIME"

    const-string v6, "sending keyboard info to Universal Switch with delay"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/ime/framework/common/InputManagerImpl$SwitchControlChangeObserver;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mUniversalSwitchBroadcastHandler:Lcom/ime/framework/common/InputManagerImpl$UniversalSwitchBroadcastHandler;
    invoke-static {v5}, Lcom/ime/framework/common/InputManagerImpl;->access$8600(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/common/InputManagerImpl$UniversalSwitchBroadcastHandler;

    move-result-object v5

    const-wide/16 v6, 0x3e8

    invoke-virtual {v5, v4, v6, v7}, Lcom/ime/framework/common/InputManagerImpl$UniversalSwitchBroadcastHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_1
    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$SwitchControlChangeObserver;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4, v1}, Lcom/ime/framework/common/InputManagerImpl;->setUniversalSwitchMode(Z)V

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$SwitchControlChangeObserver;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v4}, Lcom/ime/framework/common/InputManagerImpl;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v4, "key_universal_switch_pref"

    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
