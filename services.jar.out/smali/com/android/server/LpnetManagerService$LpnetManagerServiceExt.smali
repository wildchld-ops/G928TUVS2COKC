.class Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;
.super Ljava/lang/Object;
.source "LpnetManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LpnetManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LpnetManagerServiceExt"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;,
        Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;
    }
.end annotation


# instance fields
.field private mHandler:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;

.field final synthetic this$0:Lcom/android/server/LpnetManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/LpnetManagerService;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->this$0:Lcom/android/server/LpnetManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v2, "LpnetManagerService"

    const-string v3, "LpnetManagerServiceExt is instantiated"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;

    const-string v2, "LpnetManagerWorker"

    invoke-direct {v1, p0, v2}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;-><init>(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerThread;->start()V

    const-wide/16 v2, 0xc8

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$5700(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->handleSendMessage(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$5902(Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;)Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;
    .locals 0

    iput-object p1, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->mHandler:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;

    return-object p1
.end method

.method private handleSendMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt;->mHandler:Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;

    invoke-virtual {v0, p1}, Lcom/android/server/LpnetManagerService$LpnetManagerServiceExt$WorkerHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
