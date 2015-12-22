.class Lcom/stericson/RootTools/Executer;
.super Ljava/lang/Object;
.source "Executer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/Executer$Worker;
    }
.end annotation


# instance fields
.field protected process:Ljava/lang/Process;

.field protected result:Lcom/stericson/RootTools/RootTools$Result;


# direct methods
.method constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    iput-object v0, p0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    return-void
.end method


# virtual methods
.method public closeShell()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    invoke-virtual {v0}, Ljava/lang/Process;->destroy()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iput-object v1, p0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    :cond_0
    iget-object v0, p0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method declared-synchronized sendShell([Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZI)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "I",
            "Lcom/stericson/RootTools/RootTools$Result;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/stericson/RootTools/RootToolsException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Sending "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    array-length v2, p1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " shell command"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v1, p1

    const/4 v3, 0x1

    if-le v1, v3, :cond_1

    const-string v1, "s"

    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/stericson/RootTools/Executer$Worker;

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v6}, Lcom/stericson/RootTools/Executer$Worker;-><init>(Lcom/stericson/RootTools/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZLcom/stericson/RootTools/Executer$Worker;)V

    invoke-virtual {v0}, Lcom/stericson/RootTools/Executer$Worker;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, -0x1

    if-ne p5, v1, :cond_0

    const p5, 0x493e0

    :cond_0
    int-to-long v1, p5

    :try_start_1
    invoke-virtual {v0, v1, v2}, Lcom/stericson/RootTools/Executer$Worker;->join(J)V

    sget v1, Lcom/stericson/RootTools/RootTools;->shellDelay:I

    int-to-long v1, v1

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V

    iget v1, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    const/16 v2, -0x38f

    if-eq v1, v2, :cond_2

    iget-object v1, v0, Lcom/stericson/RootTools/Executer$Worker;->finalResponse:Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_2
    const-string v1, ""
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catch_0
    move-exception v7

    :try_start_4
    invoke-virtual {v0}, Lcom/stericson/RootTools/Executer$Worker;->interrupt()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    new-instance v1, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v1}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method
