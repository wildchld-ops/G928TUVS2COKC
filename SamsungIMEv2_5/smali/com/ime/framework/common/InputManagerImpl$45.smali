.class Lcom/ime/framework/common/InputManagerImpl$45;
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

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$45;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    const/4 v4, 0x0

    const-string v2, "coverOpen"

    invoke-virtual {p2, v2, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sService:Lcom/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$5800()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v2

    if-eqz v2, :cond_0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sService:Lcom/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$5800()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/common/AbstractInputMethod;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_0

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->sService:Lcom/ime/framework/common/AbstractInputMethod;
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$5800()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/common/AbstractInputMethod;->hideWindow()V

    :cond_0
    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$45;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2}, Lcom/ime/framework/common/InputManagerImpl;->getPopupKeyboardView()Lcom/ime/framework/view/PopupKeyboardView;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$45;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v2}, Lcom/ime/framework/common/InputManagerImpl;->isInputViewShown()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$45;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    const/4 v3, 0x1

    # setter for: Lcom/ime/framework/common/InputManagerImpl;->mShowKeyboardAfterScreenUnlockd:Z
    invoke-static {v2, v3}, Lcom/ime/framework/common/InputManagerImpl;->access$7102(Lcom/ime/framework/common/InputManagerImpl;Z)Z

    :cond_1
    invoke-virtual {v1, v4}, Lcom/ime/framework/view/PopupKeyboardView;->updateCurrentLocation(Z)V

    invoke-virtual {v1}, Lcom/ime/framework/view/PopupKeyboardView;->hideKeyboard()V

    :cond_2
    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$45;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static {v2}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$45;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mViewController:Lcom/ime/framework/view/ViewController;
    invoke-static {v2}, Lcom/ime/framework/common/InputManagerImpl;->access$300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/ViewController;

    move-result-object v2

    invoke-interface {v2}, Lcom/ime/framework/view/ViewController;->dismissPopupKeyboardWithoutFloatingAndSplit()V

    :cond_3
    return-void
.end method
