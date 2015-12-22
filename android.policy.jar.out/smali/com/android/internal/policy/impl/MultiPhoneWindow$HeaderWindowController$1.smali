.class Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$1;
.super Ljava/lang/Object;
.source "MultiPhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->performUpdateVisibility(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mActivity:Landroid/app/Activity;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$3000(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController$1;->this$1:Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;

    const/4 v1, 0x1

    # invokes: Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->showMenu(Z)V
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;->access$7900(Lcom/android/internal/policy/impl/MultiPhoneWindow$HeaderWindowController;Z)V

    :goto_0
    return-void

    :cond_0
    const-string v0, "MultiPhoneWindow"

    const-string v1, "skip showMneu(true) in Runnable, mActivity is abnormal state"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
