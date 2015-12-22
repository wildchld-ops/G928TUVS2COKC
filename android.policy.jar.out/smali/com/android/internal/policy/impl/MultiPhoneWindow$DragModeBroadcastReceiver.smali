.class public Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MultiPhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/MultiPhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DragModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;


# direct methods
.method public constructor <init>(Lcom/android/internal/policy/impl/MultiPhoneWindow;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.action.NOTIFY_STOP_DRAG_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z
    invoke-static {v0, v2}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    sget-boolean v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MultiPhoneWindow"

    const-string v1, "SmartClipService Stoped"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mContentLayoutGenerated:Z
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1600(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    iget-object v0, v0, Lcom/android/internal/policy/impl/MultiPhoneWindow;->mPenWindowController:Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow$PenWindowController;->performStopDragMode()V

    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getDragAndDropModeOfStack(Landroid/os/IBinder;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mMultiWindowFacade:Lcom/samsung/android/multiwindow/MultiWindowFacade;
    invoke-static {v0}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$200(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    # getter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mToken:Landroid/os/IBinder;
    invoke-static {v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1700(Lcom/android/internal/policy/impl/MultiPhoneWindow;)Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->setDragAndDropModeOfStack(Landroid/os/IBinder;Z)V

    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.sec.android.action.NOTIFY_START_DRAG_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/policy/impl/MultiPhoneWindow$DragModeBroadcastReceiver;->this$0:Lcom/android/internal/policy/impl/MultiPhoneWindow;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/MultiPhoneWindow;->mDragMode:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/MultiPhoneWindow;->access$1502(Lcom/android/internal/policy/impl/MultiPhoneWindow;Z)Z

    :cond_3
    return-void
.end method
