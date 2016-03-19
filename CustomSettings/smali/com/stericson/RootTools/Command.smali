.class public abstract Lcom/stericson/RootTools/Command;
.super Ljava/lang/Object;
.source "Command.java"


# instance fields
.field final command:[Ljava/lang/String;

.field exitCode:I

.field finished:Z

.field id:I

.field timeout:I


# direct methods
.method public varargs constructor <init>(II[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/stericson/RootTools/Command;->finished:Z

    iput v0, p0, Lcom/stericson/RootTools/Command;->id:I

    sget v0, Lcom/stericson/RootTools/InternalVariables;->timeout:I

    iput v0, p0, Lcom/stericson/RootTools/Command;->timeout:I

    iput-object p3, p0, Lcom/stericson/RootTools/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/stericson/RootTools/Command;->id:I

    iput p2, p0, Lcom/stericson/RootTools/Command;->timeout:I

    return-void
.end method

.method public varargs constructor <init>(I[Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/stericson/RootTools/Command;->finished:Z

    iput v0, p0, Lcom/stericson/RootTools/Command;->id:I

    sget v0, Lcom/stericson/RootTools/InternalVariables;->timeout:I

    iput v0, p0, Lcom/stericson/RootTools/Command;->timeout:I

    iput-object p2, p0, Lcom/stericson/RootTools/Command;->command:[Ljava/lang/String;

    iput p1, p0, Lcom/stericson/RootTools/Command;->id:I

    return-void
.end method


# virtual methods
.method public commandFinished(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "finished."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    return-void
.end method

.method public exitCode()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/stericson/RootTools/Command;->timeout:I

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/Command;->exitCode(I)I

    move-result v0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public exitCode(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/Command;->waitForFinish(I)V

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget v0, p0, Lcom/stericson/RootTools/Command;->exitCode:I

    return v0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public getCommand()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/stericson/RootTools/Command;->command:[Ljava/lang/String;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Sending command(s): "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    iget-object v2, p0, Lcom/stericson/RootTools/Command;->command:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public abstract output(ILjava/lang/String;)V
.end method

.method public setExitCode(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Lcom/stericson/RootTools/Command;->exitCode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/Command;->finished:Z

    iget v0, p0, Lcom/stericson/RootTools/Command;->id:I

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/Command;->commandFinished(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public terminate(Ljava/lang/String;)V
    .locals 1

    :try_start_0
    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeAll()V

    const-string v0, "Terminating all shells."

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/stericson/RootTools/Command;->terminated(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public terminated(Ljava/lang/String;)V
    .locals 2

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/Command;->setExitCode(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Command "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/stericson/RootTools/Command;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " did not finish."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    return-void
.end method

.method public waitForFinish()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/stericson/RootTools/Command;->timeout:I

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/Command;->waitForFinish(I)V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public waitForFinish(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    monitor-enter p0

    :cond_0
    :goto_0
    :try_start_0
    iget-boolean v0, p0, Lcom/stericson/RootTools/Command;->finished:Z

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    :cond_1
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V

    iget-boolean v0, p0, Lcom/stericson/RootTools/Command;->finished:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/stericson/RootTools/Command;->finished:Z

    const-string v0, "Timeout Exception has occurred."

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v0, "Timeout Exception"

    invoke-virtual {p0, v0}, Lcom/stericson/RootTools/Command;->terminate(Ljava/lang/String;)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public writeCommand(Ljava/io/OutputStream;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/stericson/RootTools/Command;->getCommand()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    return-void
.end method
