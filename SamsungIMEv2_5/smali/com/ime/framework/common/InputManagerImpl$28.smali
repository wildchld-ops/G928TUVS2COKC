.class Lcom/ime/framework/common/InputManagerImpl$28;
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

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    const/4 v8, 0x0

    sget-boolean v6, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v6, :cond_0

    const-string v6, "SamsungIME"

    const-string v7, "mKeyguardGoneReceiver"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v2

    const/4 v3, 0x0

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$6900(Lcom/ime/framework/common/InputManagerImpl;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mEdm:Landroid/app/enterprise/EnterpriseDeviceManager;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$6900(Lcom/ime/framework/common/InputManagerImpl;)Landroid/app/enterprise/EnterpriseDeviceManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/app/enterprise/RestrictionPolicy;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/app/enterprise/RestrictionPolicy;->isLockScreenEnabled(Z)Z

    move-result v6

    if-nez v6, :cond_1

    const/4 v3, 0x1

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->isPopupInputMethod(I)Z
    invoke-static {v6, v2}, Lcom/ime/framework/common/InputManagerImpl;->access$7000(Lcom/ime/framework/common/InputManagerImpl;I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v1

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v0

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$7100(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-eqz v6, :cond_3

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->isClipboardShowing()Z

    move-result v6

    if-nez v6, :cond_3

    if-nez v3, :cond_2

    invoke-virtual {v4}, Lcom/ime/framework/view/PopupKeyboardView;->showKeyboard()V

    :cond_2
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v6, v8}, Lcom/ime/framework/common/InputManagerImpl;->access$7102(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mIsScreenLock:Z
    invoke-static {v6, v8}, Lcom/ime/framework/common/InputManagerImpl;->access$7202(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->guidePopupIsHidden()V

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$28;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->showDlgMsgBox()V

    return-void
.end method
