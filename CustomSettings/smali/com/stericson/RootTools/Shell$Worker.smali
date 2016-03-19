.class public Lcom/stericson/RootTools/Shell$Worker;
.super Ljava/lang/Thread;
.source "Shell.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/Shell;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worker"
.end annotation


# instance fields
.field public exit:I

.field public in:Ljava/io/DataInputStream;

.field public out:Ljava/io/DataOutputStream;

.field public proc:Ljava/lang/Process;


# direct methods
.method private constructor <init>(Ljava/lang/Process;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, -0x38f

    iput v0, p0, Lcom/stericson/RootTools/Shell$Worker;->exit:I

    iput-object p1, p0, Lcom/stericson/RootTools/Shell$Worker;->proc:Ljava/lang/Process;

    iput-object p2, p0, Lcom/stericson/RootTools/Shell$Worker;->in:Ljava/io/DataInputStream;

    iput-object p3, p0, Lcom/stericson/RootTools/Shell$Worker;->out:Ljava/io/DataOutputStream;

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/Process;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;Lcom/stericson/RootTools/Shell$Worker;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/stericson/RootTools/Shell$Worker;-><init>(Ljava/lang/Process;Ljava/io/DataInputStream;Ljava/io/DataOutputStream;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    :try_start_0
    iget-object v2, p0, Lcom/stericson/RootTools/Shell$Worker;->out:Ljava/io/DataOutputStream;

    const-string v3, "echo Started\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/DataOutputStream;->write([B)V

    iget-object v2, p0, Lcom/stericson/RootTools/Shell$Worker;->out:Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/io/DataOutputStream;->flush()V

    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/stericson/RootTools/Shell$Worker;->in:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readLine()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    new-instance v2, Ljava/io/EOFException;

    invoke-direct {v2}, Ljava/io/EOFException;-><init>()V

    throw v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/stericson/RootTools/Shell;->access$3(Ljava/lang/String;)V

    :goto_1
    return-void

    :cond_1
    :try_start_1
    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "Started"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    iput v2, p0, Lcom/stericson/RootTools/Shell$Worker;->exit:I

    goto :goto_1

    :cond_2
    const-string v2, "unkown error occured."

    invoke-static {v2}, Lcom/stericson/RootTools/Shell;->access$3(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :cond_3
    const-string v2, "unkown error occured."

    invoke-static {v2}, Lcom/stericson/RootTools/Shell;->access$3(Ljava/lang/String;)V

    goto :goto_1
.end method
