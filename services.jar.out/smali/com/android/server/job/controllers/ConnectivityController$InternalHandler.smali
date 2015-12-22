.class Lcom/android/server/job/controllers/ConnectivityController$InternalHandler;
.super Landroid/os/Handler;
.source "ConnectivityController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/controllers/ConnectivityController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InternalHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/job/controllers/ConnectivityController;


# direct methods
.method public constructor <init>(Lcom/android/server/job/controllers/ConnectivityController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/controllers/ConnectivityController$InternalHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    const/4 v0, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    const-string v0, "JobScheduler.Conn"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unidentified event msg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/job/controllers/ConnectivityController$InternalHandler;->this$0:Lcom/android/server/job/controllers/ConnectivityController;

    iget v2, p1, Landroid/os/Message;->arg1:I

    if-ne v2, v0, :cond_0

    :goto_1
    iget v2, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/android/server/job/controllers/ConnectivityController;->handleConnectivityChange(ZI)V
    invoke-static {v1, v0, v2}, Lcom/android/server/job/controllers/ConnectivityController;->access$200(Lcom/android/server/job/controllers/ConnectivityController;ZI)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
