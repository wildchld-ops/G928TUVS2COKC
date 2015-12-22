.class public Lcom/stericson/RootTools/Executer$Worker;
.super Ljava/lang/Thread;
.source "Executer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/stericson/RootTools/Executer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "Worker"
.end annotation


# instance fields
.field private commands:[Ljava/lang/String;

.field private executer:Lcom/stericson/RootTools/Executer;

.field public exit:I

.field public finalResponse:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sleepTime:I

.field private useRoot:Z


# direct methods
.method private constructor <init>(Lcom/stericson/RootTools/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/16 v0, -0x38f

    iput v0, p0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    iput-object p2, p0, Lcom/stericson/RootTools/Executer$Worker;->commands:[Ljava/lang/String;

    iput p3, p0, Lcom/stericson/RootTools/Executer$Worker;->sleepTime:I

    iput-object p1, p0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    iget-object v0, p0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    iput-object p4, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    iput-boolean p5, p0, Lcom/stericson/RootTools/Executer$Worker;->useRoot:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/stericson/RootTools/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;ZLcom/stericson/RootTools/Executer$Worker;)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/stericson/RootTools/Executer$Worker;-><init>(Lcom/stericson/RootTools/Executer;[Ljava/lang/String;ILcom/stericson/RootTools/RootTools$Result;Z)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 21

    const/4 v6, 0x0

    const/4 v10, 0x0

    const/4 v8, 0x0

    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    if-nez v16, :cond_0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Runtime;->gc()V

    sget-object v16, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    const-string v17, ""

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v18

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stericson/RootTools/Executer$Worker;->useRoot:Z

    move/from16 v16, v0

    if-eqz v16, :cond_3

    const-string v16, "su"

    :goto_0
    move-object/from16 v0, v18

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v16

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    iput-object v0, v1, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/stericson/RootTools/Executer$Worker;->useRoot:Z

    move/from16 v16, v0

    if-eqz v16, :cond_4

    const-string v16, "Using Root"

    :goto_1
    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/stericson/RootTools/RootTools$Result;->setProcess(Ljava/lang/Process;)Lcom/stericson/RootTools/RootTools$Result;

    :cond_0
    new-instance v7, Ljava/io/DataOutputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v7, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_9
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    new-instance v11, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v11, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_a
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    new-instance v9, Ljava/io/InputStreamReader;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-direct {v9, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_b
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    new-instance v12, Ljava/io/BufferedReader;

    invoke-direct {v12, v11}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v13, Ljava/io/BufferedReader;

    invoke-direct {v13, v9}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    new-instance v14, Ljava/util/LinkedList;

    invoke-direct {v14}, Ljava/util/LinkedList;-><init>()V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_1
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->commands:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v18, v0

    const/16 v16, 0x0

    :goto_3
    move/from16 v0, v16

    move/from16 v1, v18

    if-lt v0, v1, :cond_9

    const-string v16, "exit \n"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    :goto_4
    if-nez v4, :cond_a

    const-string v16, "Done reading input stream"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    :goto_5
    if-nez v5, :cond_e

    const-string v16, "Done reading error stream"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    const-string v16, "In finally block"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    const-string v16, "Getting Exit"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/stericson/RootTools/Executer$Worker;->finalResponse:Ljava/util/List;

    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->waitFor()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    const-string v16, "Exit done..."

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v16, v0

    sput v16, Lcom/stericson/RootTools/RootTools;->lastExitCode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-eqz v16, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/stericson/RootTools/RootTools$Result;->onComplete(I)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_2
    :goto_6
    if-eqz v7, :cond_1d

    :try_start_6
    const-string v16, "exit \n"

    move-object/from16 v0, v16

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    const/4 v6, 0x0

    :goto_7
    if-eqz v11, :cond_1c

    :try_start_7
    invoke-virtual {v11}, Ljava/io/InputStreamReader;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    const/4 v10, 0x0

    :goto_8
    if-eqz v9, :cond_1b

    :try_start_8
    invoke-virtual {v9}, Ljava/io/InputStreamReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    const/4 v8, 0x0

    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/stericson/RootTools/Executer;->closeShell()V

    :goto_a
    return-void

    :cond_3
    :try_start_9
    const-string v16, "sh"

    goto/16 :goto_0

    :cond_4
    const-string v16, "Using sh"

    goto/16 :goto_1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v17

    sget-object v18, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    invoke-virtual/range {v17 .. v18}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Using custom shell: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v17, Lcom/stericson/RootTools/RootTools;->customShell:Ljava/lang/String;

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/16 :goto_2

    :catch_0
    move-exception v16

    :goto_b
    if-eqz v6, :cond_6

    :try_start_a
    const-string v16, "exit \n"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    const/4 v6, 0x0

    :cond_6
    if-eqz v10, :cond_7

    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    const/4 v10, 0x0

    :cond_7
    if-eqz v8, :cond_8

    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_c

    const/4 v8, 0x0

    :cond_8
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/stericson/RootTools/Executer;->closeShell()V

    goto :goto_a

    :cond_9
    :try_start_b
    aget-object v15, v17, v16

    new-instance v19, Ljava/lang/StringBuilder;

    const-string v20, "Shell command: "

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v19 .. v19}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v20, "\n"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v7, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/DataOutputStream;->flush()V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->sleepTime:I

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-long v0, v0

    move-wide/from16 v19, v0

    invoke-static/range {v19 .. v20}, Ljava/lang/Thread;->sleep(J)V

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-nez v16, :cond_b

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_d
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "input stream: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_4

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v4}, Lcom/stericson/RootTools/RootTools$Result;->process(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_1
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_d

    :catch_1
    move-exception v3

    :try_start_c
    sget-boolean v16, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v16, :cond_c

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Error: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-eqz v16, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Lcom/stericson/RootTools/RootTools$Result;->onFailure(Ljava/lang/Exception;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :cond_d
    :try_start_d
    const-string v16, "In finally block"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    if-eqz v16, :cond_2

    const-string v16, "Getting Exit"

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/stericson/RootTools/Executer$Worker;->finalResponse:Ljava/util/List;

    const/16 v16, -0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Process;->waitFor()I

    move-result v16

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    const-string v16, "Exit done..."

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v16, v0

    sput v16, Lcom/stericson/RootTools/RootTools;->lastExitCode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-eqz v16, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Lcom/stericson/RootTools/RootTools$Result;->onComplete(I)V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_2
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    goto/16 :goto_6

    :catch_2
    move-exception v16

    move-object v8, v9

    move-object v10, v11

    move-object v6, v7

    goto/16 :goto_b

    :cond_e
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    if-nez v16, :cond_f

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_e
    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "error stream: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    invoke-virtual {v13}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_5

    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    invoke-virtual {v0, v5}, Lcom/stericson/RootTools/RootTools$Result;->processError(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    goto :goto_e

    :catchall_0
    move-exception v16

    :try_start_f
    const-string v17, "In finally block"

    invoke-static/range {v17 .. v17}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v17, v0

    if-eqz v17, :cond_10

    const-string v17, "Getting Exit"

    invoke-static/range {v17 .. v17}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/stericson/RootTools/Executer$Worker;->finalResponse:Ljava/util/List;

    const/16 v17, -0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->process:Ljava/lang/Process;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/lang/Process;->waitFor()I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput v0, v1, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    const-string v17, "Exit done..."

    invoke-static/range {v17 .. v17}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v17, v0

    sput v17, Lcom/stericson/RootTools/RootTools;->lastExitCode:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v17, v0

    if-eqz v17, :cond_19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/stericson/RootTools/Executer;->result:Lcom/stericson/RootTools/RootTools$Result;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/stericson/RootTools/RootTools$Result;->onComplete(I)V

    :cond_10
    :goto_f
    throw v16
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_2
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    :catch_3
    move-exception v2

    move-object v8, v9

    move-object v10, v11

    move-object v6, v7

    :goto_10
    :try_start_10
    sget-boolean v16, Lcom/stericson/RootTools/RootTools;->debugMode:Z

    if-eqz v16, :cond_11

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v16, Ljava/lang/StringBuilder;

    const-string v17, "Error: "

    invoke-direct/range {v16 .. v17}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Lcom/stericson/RootTools/RootTools;->log(Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :cond_11
    if-eqz v6, :cond_12

    :try_start_11
    const-string v16, "exit \n"

    move-object/from16 v0, v16

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    const/4 v6, 0x0

    :cond_12
    if-eqz v10, :cond_13

    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    const/4 v10, 0x0

    :cond_13
    if-eqz v8, :cond_14

    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_8

    const/4 v8, 0x0

    :cond_14
    :goto_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/stericson/RootTools/Executer;->closeShell()V

    goto/16 :goto_a

    :cond_15
    :try_start_12
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_12
    .catch Ljava/lang/InterruptedException; {:try_start_12 .. :try_end_12} :catch_2
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_3
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto/16 :goto_6

    :catchall_1
    move-exception v16

    move-object v8, v9

    move-object v10, v11

    move-object v6, v7

    :goto_12
    if-eqz v6, :cond_16

    :try_start_13
    const-string v17, "exit \n"

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v6}, Ljava/io/DataOutputStream;->close()V

    const/4 v6, 0x0

    :cond_16
    if-eqz v10, :cond_17

    invoke-virtual {v10}, Ljava/io/InputStreamReader;->close()V

    const/4 v10, 0x0

    :cond_17
    if-eqz v8, :cond_18

    invoke-virtual {v8}, Ljava/io/InputStreamReader;->close()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_7

    const/4 v8, 0x0

    :cond_18
    :goto_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/stericson/RootTools/Executer$Worker;->executer:Lcom/stericson/RootTools/Executer;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/stericson/RootTools/Executer;->closeShell()V

    throw v16

    :cond_19
    :try_start_14
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v17, v0

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_f

    :cond_1a
    move-object/from16 v0, p0

    iget v0, v0, Lcom/stericson/RootTools/Executer$Worker;->exit:I

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_14
    .catch Ljava/lang/InterruptedException; {:try_start_14 .. :try_end_14} :catch_2
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_3
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    goto/16 :goto_6

    :catch_4
    move-exception v16

    move-object v10, v11

    move-object v6, v7

    :goto_14
    move-object v8, v9

    goto/16 :goto_9

    :catch_5
    move-exception v16

    move-object v10, v11

    goto :goto_14

    :catch_6
    move-exception v16

    goto :goto_14

    :catch_7
    move-exception v17

    goto :goto_13

    :catchall_2
    move-exception v16

    goto :goto_12

    :catchall_3
    move-exception v16

    move-object v6, v7

    goto :goto_12

    :catchall_4
    move-exception v16

    move-object v10, v11

    move-object v6, v7

    goto :goto_12

    :catch_8
    move-exception v16

    goto :goto_11

    :catch_9
    move-exception v2

    goto/16 :goto_10

    :catch_a
    move-exception v2

    move-object v6, v7

    goto/16 :goto_10

    :catch_b
    move-exception v2

    move-object v10, v11

    move-object v6, v7

    goto/16 :goto_10

    :catch_c
    move-exception v16

    goto/16 :goto_c

    :catch_d
    move-exception v16

    move-object v6, v7

    goto/16 :goto_b

    :catch_e
    move-exception v16

    move-object v10, v11

    move-object v6, v7

    goto/16 :goto_b

    :cond_1b
    move-object v8, v9

    goto/16 :goto_9

    :cond_1c
    move-object v10, v11

    goto/16 :goto_8

    :cond_1d
    move-object v6, v7

    goto/16 :goto_7
.end method
