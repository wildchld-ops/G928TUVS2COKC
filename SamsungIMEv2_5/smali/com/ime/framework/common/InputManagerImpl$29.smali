.class Lcom/ime/framework/common/InputManagerImpl$29;
.super Landroid/content/BroadcastReceiver;
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
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$29;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget-boolean v2, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, "mIncomingCallReceiver"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "popup_incoming_call"

    const/4 v4, 0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$29;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v2}, Lcom/ime/framework/common/InputManagerImpl;->access$7300(Lcom/ime/framework/common/InputManagerImpl;)Landroid/app/KeyguardManager;

    move-result-object v2

    if-nez v2, :cond_1

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$29;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v2

    const-string v4, "keyguard"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3, v2}, Lcom/ime/framework/common/InputManagerImpl;->access$7302(Lcom/ime/framework/common/InputManagerImpl;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    :cond_1
    const-string v2, "state"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sService:Lcom/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$5800()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v2

    if-eqz v2, :cond_3

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sService:Lcom/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$5800()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/common/AbstractInputMethod;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$29;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v2}, Lcom/ime/framework/common/InputManagerImpl;->access$7300(Lcom/ime/framework/common/InputManagerImpl;)Landroid/app/KeyguardManager;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$29;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v2}, Lcom/ime/framework/common/InputManagerImpl;->access$7300(Lcom/ime/framework/common/InputManagerImpl;)Landroid/app/KeyguardManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sService:Lcom/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$5800()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/common/AbstractInputMethod;->hideWindow()V

    :cond_3
    const-string v2, "OFFHOOK"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$29;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    const/4 v3, 0x1

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mIsCalling:Z
    invoke-static {v2, v3}, Lcom/ime/framework/common/InputManagerImpl;->access$7402(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    :goto_0
    return-void

    :cond_4
    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$29;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    const/4 v3, 0x0

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mIsCalling:Z
    invoke-static {v2, v3}, Lcom/ime/framework/common/InputManagerImpl;->access$7402(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    goto :goto_0
.end method
