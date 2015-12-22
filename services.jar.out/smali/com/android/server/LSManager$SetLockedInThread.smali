.class Lcom/android/server/LSManager$SetLockedInThread;
.super Ljava/lang/Object;
.source "LSManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/LSManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SetLockedInThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/LSManager;


# direct methods
.method private constructor <init>(Lcom/android/server/LSManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/LSManager;Lcom/android/server/LSManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/LSManager$SetLockedInThread;-><init>(Lcom/android/server/LSManager;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v1, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "SetLockedInThread.run()"

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    :cond_0
    const-wide/16 v2, 0x309

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    # getter for: Lcom/android/server/LSManager;->setPasswordExecutor:Ljava/util/concurrent/ThreadPoolExecutor;
    invoke-static {}, Lcom/android/server/LSManager;->access$200()Ljava/util/concurrent/ThreadPoolExecutor;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/ThreadPoolExecutor;->getQueue()Ljava/util/concurrent/BlockingQueue;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setLockedState(Z)V
    invoke-static {v1, v5}, Lcom/android/server/LSManager;->access$300(Lcom/android/server/LSManager;Z)V

    iget-object v1, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->isLockedState()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$400(Lcom/android/server/LSManager;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->setPasswordReady(Z)V
    invoke-static {v1, v4}, Lcom/android/server/LSManager;->access$500(Lcom/android/server/LSManager;Z)V

    iget-object v1, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->passwordIsProtected()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$600(Lcom/android/server/LSManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    # invokes: Lcom/android/server/LSManager;->secretIsReady()Z
    invoke-static {v1}, Lcom/android/server/LSManager;->access$700(Lcom/android/server/LSManager;)Z

    move-result v1

    if-eqz v1, :cond_2

    # getter for: Lcom/android/server/LSManager;->secureStorageLSM:Landroid/os/storage/sensitive/SecureStorageLSM;
    invoke-static {}, Lcom/android/server/LSManager;->access$800()Landroid/os/storage/sensitive/SecureStorageLSM;

    move-result-object v1

    new-array v2, v4, [B

    new-array v3, v4, [B

    invoke-virtual {v1, v2, v3, v5}, Landroid/os/storage/sensitive/SecureStorageLSM;->set_state([B[BI)I

    iget-object v1, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "Locked."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/LSManager$SetLockedInThread;->this$0:Lcom/android/server/LSManager;

    const-string v2, "Wait for pass."

    # invokes: Lcom/android/server/LSManager;->debugLog(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/server/LSManager;->access$000(Lcom/android/server/LSManager;Ljava/lang/String;)V

    goto :goto_1
.end method
