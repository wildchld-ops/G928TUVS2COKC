.class Lcom/android/internal/policy/impl/multiwindow/Docking$1;
.super Landroid/os/Handler;
.source "Docking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/multiwindow/Docking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/multiwindow/Docking;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$000(Lcom/android/internal/policy/impl/multiwindow/Docking;)Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    # getter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingListener:Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;
    invoke-static {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$000(Lcom/android/internal/policy/impl/multiwindow/Docking;)Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/policy/impl/multiwindow/Docking$OnDockingListener;->onCancel()V

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    const/4 v1, 0x1

    # setter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingCanceled:Z
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$102(Lcom/android/internal/policy/impl/multiwindow/Docking;Z)Z

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    iget v1, p1, Landroid/os/Message;->arg1:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingX:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$202(Lcom/android/internal/policy/impl/multiwindow/Docking;I)I

    iget-object v0, p0, Lcom/android/internal/policy/impl/multiwindow/Docking$1;->this$0:Lcom/android/internal/policy/impl/multiwindow/Docking;

    iget v1, p1, Landroid/os/Message;->arg2:I

    # setter for: Lcom/android/internal/policy/impl/multiwindow/Docking;->mDockingY:I
    invoke-static {v0, v1}, Lcom/android/internal/policy/impl/multiwindow/Docking;->access$302(Lcom/android/internal/policy/impl/multiwindow/Docking;I)I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_0
    .end packed-switch
.end method
