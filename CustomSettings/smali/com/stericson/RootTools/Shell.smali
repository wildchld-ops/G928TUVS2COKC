.class public Lcom/stericson/RootTools/Shell;
.super Ljava/lang/Object;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/stericson/RootTools/Shell$Worker;
    }
.end annotation


# static fields
.field private static customShell:Lcom/stericson/RootTools/Shell; = null

.field private static error:Ljava/lang/String; = null

.field private static rootShell:Lcom/stericson/RootTools/Shell; = null

.field private static shell:Lcom/stericson/RootTools/Shell; = null

.field private static final token:Ljava/lang/String; = "F*D^W@#FGF"


# instance fields
.field private close:Z

.field private final commands:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/stericson/RootTools/Command;",
            ">;"
        }
    .end annotation
.end field

.field private final in:Ljava/io/DataInputStream;

.field private input:Ljava/lang/Runnable;

.field private final out:Ljava/io/DataOutputStream;

.field private output:Ljava/lang/Runnable;

.field private final proc:Ljava/lang/Process;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-string v0, ""

    sput-object v0, Lcom/stericson/RootTools/Shell;->error:Ljava/lang/String;

    sput-object v1, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    sput-object v1, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    sput-object v1, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    iput-boolean v4, p0, Lcom/stericson/RootTools/Shell;->close:Z

    new-instance v2, Lcom/stericson/RootTools/Shell$1;

    invoke-direct {v2, p0}, Lcom/stericson/RootTools/Shell$1;-><init>(Lcom/stericson/RootTools/Shell;)V

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->input:Ljava/lang/Runnable;

    new-instance v2, Lcom/stericson/RootTools/Shell$2;

    invoke-direct {v2, p0}, Lcom/stericson/RootTools/Shell$2;-><init>(Lcom/stericson/RootTools/Shell;)V

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->output:Ljava/lang/Runnable;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Starting shell: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/ProcessBuilder;

    new-array v3, v5, [Ljava/lang/String;

    aput-object p1, v3, v4

    invoke-direct {v2, v3}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v2

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->in:Ljava/io/DataInputStream;

    new-instance v2, Ljava/io/DataOutputStream;

    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/stericson/RootTools/Shell;->out:Ljava/io/DataOutputStream;

    new-instance v1, Lcom/stericson/RootTools/Shell$Worker;

    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->in:Ljava/io/DataInputStream;

    iget-object v4, p0, Lcom/stericson/RootTools/Shell;->out:Ljava/io/DataOutputStream;

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/stericson/RootTools/Shell$Worker;-><init>(Ljava/lang/Process;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;Lcom/stericson/RootTools/Shell$Worker;)V

    invoke-virtual {v1}, Lcom/stericson/RootTools/Shell$Worker;->start()V

    const-wide/16 v2, 0x1388

    :try_start_0
    invoke-virtual {v1, v2, v3}, Lcom/stericson/RootTools/Shell$Worker;->join(J)V

    iget v2, v1, Lcom/stericson/RootTools/Shell$Worker;->exit:I

    const/16 v3, -0x38f

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v2}, Ljava/lang/Process;->destroy()V

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    sget-object v3, Lcom/stericson/RootTools/Shell;->error:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/util/concurrent/TimeoutException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v1}, Lcom/stericson/RootTools/Shell$Worker;->interrupt()V

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    new-instance v2, Ljava/util/concurrent/TimeoutException;

    invoke-direct {v2}, Ljava/util/concurrent/TimeoutException;-><init>()V

    throw v2

    :cond_0
    :try_start_1
    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->input:Ljava/lang/Runnable;

    const-string v4, "Shell Input"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    new-instance v2, Ljava/lang/Thread;

    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->output:Ljava/lang/Runnable;

    const-string v4, "Shell Output"

    invoke-direct {v2, v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    return-void
.end method

.method static synthetic access$0(Lcom/stericson/RootTools/Shell;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/stericson/RootTools/Shell;->writeCommands()V

    return-void
.end method

.method static synthetic access$1(Lcom/stericson/RootTools/Shell;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-direct {p0}, Lcom/stericson/RootTools/Shell;->readOutput()V

    return-void
.end method

.method static synthetic access$2()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/stericson/RootTools/Shell;->error:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3(Ljava/lang/String;)V
    .locals 0

    sput-object p0, Lcom/stericson/RootTools/Shell;->error:Ljava/lang/String;

    return-void
.end method

.method public static closeAll()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeShell()V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeRootShell()V

    invoke-static {}, Lcom/stericson/RootTools/Shell;->closeCustomShell()V

    return-void
.end method

.method public static closeCustomShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Shell;->close()V

    goto :goto_0
.end method

.method public static closeRootShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Shell;->close()V

    goto :goto_0
.end method

.method public static closeShell()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Shell;->close()V

    goto :goto_0
.end method

.method public static getOpenShell()Lcom/stericson/RootTools/Shell;
    .locals 1

    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    goto :goto_0
.end method

.method public static isAnyShellOpen()Z
    .locals 2

    const/4 v0, 0x1

    sget-object v1, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v1, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v1, :cond_0

    sget-object v1, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isCustomShellOpen()Z
    .locals 1

    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isRootShellOpen()Z
    .locals 1

    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static isShellOpen()Z
    .locals 1

    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private readOutput()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v0, 0x0

    const/4 v5, 0x0

    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->in:Ljava/io/DataInputStream;

    invoke-virtual {v6}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    :goto_1
    const-string v6, "Read all output"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->waitFor()I

    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->proc:Ljava/lang/Process;

    invoke-virtual {v6}, Ljava/lang/Process;->destroy()V

    const-string v6, "Shell destroyed"

    invoke-static {v6}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    :goto_2
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_6

    return-void

    :cond_1
    if-nez v0, :cond_3

    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lt v5, v6, :cond_2

    iget-boolean v6, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-eqz v6, :cond_0

    goto :goto_1

    :cond_2
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/Command;

    :cond_3
    const-string v6, "F*D^W@#FGF"

    invoke-virtual {v3, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-lez v4, :cond_4

    iget v6, v0, Lcom/stericson/RootTools/Command;->id:I

    const/4 v7, 0x0

    invoke-virtual {v3, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Lcom/stericson/RootTools/Command;->output(ILjava/lang/String;)V

    :cond_4
    if-ltz v4, :cond_5

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, " "

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    aget-object v6, v1, v8

    if-eqz v6, :cond_5

    aget-object v6, v1, v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v5, :cond_5

    const/4 v6, 0x2

    aget-object v6, v1, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/stericson/RootTools/Command;->setExitCode(I)V

    add-int/lit8 v5, v5, 0x1

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget v6, v0, Lcom/stericson/RootTools/Command;->id:I

    invoke-virtual {v0, v6, v3}, Lcom/stericson/RootTools/Command;->output(ILjava/lang/String;)V

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/Command;

    :cond_7
    const-string v6, "Unexpected Termination."

    invoke-virtual {v0, v6}, Lcom/stericson/RootTools/Command;->terminated(Ljava/lang/String;)V

    const/4 v0, 0x0

    add-int/lit8 v5, v5, 0x1

    goto :goto_2
.end method

.method public static runCommand(Lcom/stericson/RootTools/Command;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startShell()Lcom/stericson/RootTools/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    return-void
.end method

.method public static runRootCommand(Lcom/stericson/RootTools/Command;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    invoke-static {}, Lcom/stericson/RootTools/Shell;->startRootShell()Lcom/stericson/RootTools/Shell;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/stericson/RootTools/Shell;->add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;

    return-void
.end method

.method public static startCustomShell(Ljava/lang/String;)Lcom/stericson/RootTools/Shell;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    const-string v0, "Starting Custom Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/stericson/RootTools/Shell;

    invoke-direct {v0, p0}, Lcom/stericson/RootTools/Shell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    :goto_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    return-object v0

    :cond_0
    const-string v0, "Using Existing Custom Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static startRootShell()Lcom/stericson/RootTools/Shell;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    sget-object v4, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-nez v4, :cond_1

    const-string v4, "Starting Root Shell!"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    const-string v0, "su"

    const/4 v2, 0x0

    :goto_0
    sget-object v4, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-eqz v4, :cond_0

    :goto_1
    sget-object v4, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    return-object v4

    :cond_0
    :try_start_0
    new-instance v4, Lcom/stericson/RootTools/Shell;

    invoke-direct {v4, v0}, Lcom/stericson/RootTools/Shell;-><init>(Ljava/lang/String;)V

    sput-object v4, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    add-int/lit8 v3, v2, 0x1

    const/4 v4, 0x2

    if-lt v2, v4, :cond_2

    const-string v4, "IOException, could not start shell"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    throw v1

    :cond_1
    const-string v4, "Using Existing Root Shell!"

    invoke-static {v4}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_0
.end method

.method public static startShell()Lcom/stericson/RootTools/Shell;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/util/concurrent/TimeoutException;
        }
    .end annotation

    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-nez v0, :cond_0

    const-string v0, "Starting Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/stericson/RootTools/Shell;

    const-string v1, "/system/bin/sh"

    invoke-direct {v0, v1}, Lcom/stericson/RootTools/Shell;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    :goto_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    return-object v0

    :cond_0
    const-string v0, "Using Existing Shell!"

    invoke-static {v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private writeCommands()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x0

    :cond_0
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    :try_start_1
    iget-boolean v5, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/stericson/RootTools/Shell;->out:Ljava/io/DataOutputStream;

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_3

    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/stericson/RootTools/Command;

    invoke-virtual {v2, v3}, Lcom/stericson/RootTools/Command;->writeCommand(Ljava/io/OutputStream;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "\necho F*D^W@#FGF "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " $?\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    :try_start_3
    iget-object v5, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V

    goto :goto_1

    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v5
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-static {v5, v6, v0}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;ILjava/lang/Exception;)V

    :goto_2
    return-void

    :cond_3
    :try_start_5
    iget-boolean v5, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-eqz v5, :cond_0

    const-string v5, "\nexit 0\n"

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/io/DataOutputStream;->write([B)V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    const-string v5, "Closing shell"

    invoke-static {v5}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2
.end method


# virtual methods
.method public add(Lcom/stericson/RootTools/Command;)Lcom/stericson/RootTools/Command;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/stericson/RootTools/Shell;->close:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to add commands to a closed shell"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-object p1

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, 0x0

    sget-object v0, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    if-ne p0, v0, :cond_0

    sput-object v1, Lcom/stericson/RootTools/Shell;->rootShell:Lcom/stericson/RootTools/Shell;

    :cond_0
    sget-object v0, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    if-ne p0, v0, :cond_1

    sput-object v1, Lcom/stericson/RootTools/Shell;->shell:Lcom/stericson/RootTools/Shell;

    :cond_1
    sget-object v0, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    if-ne p0, v0, :cond_2

    sput-object v1, Lcom/stericson/RootTools/Shell;->customShell:Lcom/stericson/RootTools/Shell;

    :cond_2
    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    monitor-enter v1

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/stericson/RootTools/Shell;->close:Z

    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public countCommands()I
    .locals 1

    iget-object v0, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public waitFor()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/stericson/RootTools/Shell;->close()V

    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    iget-object v2, p0, Lcom/stericson/RootTools/Shell;->commands:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/stericson/RootTools/Command;

    invoke-virtual {v0}, Lcom/stericson/RootTools/Command;->exitCode()I

    :cond_0
    return-void
.end method
