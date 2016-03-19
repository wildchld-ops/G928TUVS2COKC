.class Lcom/ime/framework/common/InputManagerImpl$22;
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

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    sget-boolean v8, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v8, :cond_0

    const-string v8, "SamsungIME"

    const-string v9, "mClipboardReceiver onReceive()"

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v8, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v8}, Lcom/ime/framework/common/InputManagerImpl;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v4

    iget-object v8, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v8}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v8

    if-eqz v8, :cond_6

    iget-object v8, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;
    invoke-static {v8}, Lcom/ime/framework/common/InputManagerImpl;->access$2400(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v8

    invoke-virtual {v8}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v8

    const/4 v9, 0x4

    if-ne v8, v9, :cond_5

    move v3, v6

    :goto_0
    const-string v8, "ShowClipboardDialog"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v8, v6}, Lcom/ime/framework/common/InputManagerImpl;->access$6502(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    if-eqz v4, :cond_1

    invoke-virtual {v4, v7}, Lcom/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    invoke-virtual {v4}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_1
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v6

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/view/ViewController;->dismissPopupKeyboardWithoutFloatingAndSplit()V

    if-eqz v3, :cond_2

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/view/ViewController;->hideFullscreenHwrPanel()V

    :cond_2
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->postPredictionWordMessage()V

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mInputController:Lcom/ime/framework/input/InputController;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$1500(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/input/InputController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/input/InputController;->finishAndInitByCursorMove()V

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsSwiftKeyMode:Z
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$2100(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6, v7}, Lcom/ime/framework/common/InputManagerImpl;->setCandidatesViewShown(Z)V

    :cond_3
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mIsChnMode:Z
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$3300(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->getToolbarPopupWindow()Landroid/widget/PopupWindow;

    move-result-object v5

    if-eqz v5, :cond_4

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-virtual {v5}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_4
    :goto_1
    return-void

    :cond_5
    move v3, v7

    goto :goto_0

    :cond_6
    move v3, v7

    goto :goto_0

    :cond_7
    const-string v6, "dismissClipboardDialog"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mClipBoardServiceEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$2500(Lcom/ime/framework/common/InputManagerImpl;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mClipBoardServiceEx:Landroid/sec/clipboard/ClipboardExManager;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$2500(Lcom/ime/framework/common/InputManagerImpl;)Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v6

    invoke-virtual {v6}, Landroid/sec/clipboard/ClipboardExManager;->isShowing()Z

    move-result v6

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$6500(Lcom/ime/framework/common/InputManagerImpl;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-eqz v4, :cond_8

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->getCurrentInputEditorInfo()Landroid/view/inputmethod/EditorInfo;

    move-result-object v2

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v1

    if-eqz v2, :cond_8

    if-eqz v1, :cond_8

    iget v6, v2, Landroid/view/inputmethod/EditorInfo;->inputType:I

    if-eqz v6, :cond_8

    invoke-virtual {v4}, Lcom/ime/framework/view/PopupKeyboardView;->showKeyboard()V

    :cond_8
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterClipboardClosed:Z
    invoke-static {v6, v7}, Lcom/ime/framework/common/InputManagerImpl;->access$6502(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    :cond_9
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v6

    if-eqz v6, :cond_a

    if-eqz v3, :cond_a

    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static {v6}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v6

    invoke-interface {v6}, Lcom/ime/framework/view/ViewController;->showFullscreenHwrPanel()V

    :cond_a
    iget-object v6, p0, Lcom/ime/framework/common/InputManagerImpl$22;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v6}, Lcom/ime/framework/common/InputManagerImpl;->postPredictionWordMessage()V

    goto :goto_1
.end method
