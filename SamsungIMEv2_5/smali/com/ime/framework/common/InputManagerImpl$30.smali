.class Lcom/ime/framework/common/InputManagerImpl$30;
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

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsUltraPowerSavingOn:Z
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$4400(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsEmergencyModeOn:Z
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$4500(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "com.samsung.pen.INSERT"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "penInsert"

    invoke-virtual {p2, v3, v6}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v3

    invoke-virtual {v3, v6}, Lcom/ime/framework/inputmode/InputModeManager;->setNeedUpdateKeyboardView(Z)V

    if-nez v2, :cond_3

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->isChangeToHwrAvailable()Z
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$7500(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/ime/framework/common/InputManagerImpl;->dismissClipboard()V

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$7300(Lcom/ime/framework/common/InputManagerImpl;)Landroid/app/KeyguardManager;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sContext:Landroid/content/Context;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$1600()Landroid/content/Context;

    move-result-object v3

    const-string v5, "keyguard"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v4, v3}, Lcom/ime/framework/common/InputManagerImpl;->access$7302(Lcom/ime/framework/common/InputManagerImpl;Landroid/app/KeyguardManager;)Landroid/app/KeyguardManager;

    :cond_0
    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsScreenLock:Z
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$7200(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$7300(Lcom/ime/framework/common/InputManagerImpl;)Landroid/app/KeyguardManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/ime/framework/common/InputManagerImpl;->isHandWritingHasBoonUsed()Z

    move-result v1

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsChnMode:Z
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$3300(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->isBstHwrSupportLanguage()Z
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$7600(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3, v6}, Lcom/ime/framework/common/InputManagerImpl;->setPenDetectionHwrMode(Z)V

    :cond_1
    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static {v3}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/input/InputController;->changeToHwrMode()V

    if-nez v1, :cond_2

    iget-object v3, p0, Lcom/ime/framework/common/InputManagerImpl$30;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v3}, Lcom/ime/framework/common/InputManagerImpl;->resetHandWritingHasBoonUsed()V

    :cond_2
    :goto_0
    return-void

    :cond_3
    const/4 v3, 0x0

    invoke-static {v3}, Lcom/ime/framework/repository/InputModeStatus;->setFlagIsHwrMode(Z)V

    goto :goto_0
.end method
