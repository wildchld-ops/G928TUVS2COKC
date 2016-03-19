.class Lcom/ime/framework/engine/bsthwr/DecHandwriting$1;
.super Ljava/lang/Thread;
.source "DecHandwriting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/engine/bsthwr/DecHandwriting;->decoding()I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/engine/bsthwr/DecHandwriting;


# direct methods
.method constructor <init>(Lcom/ime/framework/engine/bsthwr/DecHandwriting;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$1;->this$0:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    sget-object v2, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mRecognizeObj:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$1;->this$0:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    # invokes: Lcom/ime/framework/engine/bsthwr/DecHandwriting;->startRecognize()I
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->access$200(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)I

    move-result v0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$1;->this$0:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    # getter for: Lcom/ime/framework/engine/bsthwr/DecHandwriting;->DEBUG:Z
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->access$300(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$1;->this$0:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    # getter for: Lcom/ime/framework/engine/bsthwr/DecHandwriting;->TAG:Ljava/lang/String;
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->access$100(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "decoding() startRecognize() ret= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$1;->this$0:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    # getter for: Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mManager:Lcom/ime/framework/engine/bsthwr/HWManager;
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->access$400(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/ime/framework/engine/bsthwr/DecHandwriting$1;->this$0:Lcom/ime/framework/engine/bsthwr/DecHandwriting;

    # getter for: Lcom/ime/framework/engine/bsthwr/DecHandwriting;->mManager:Lcom/ime/framework/engine/bsthwr/HWManager;
    invoke-static {v1}, Lcom/ime/framework/engine/bsthwr/DecHandwriting;->access$400(Lcom/ime/framework/engine/bsthwr/DecHandwriting;)Lcom/ime/framework/engine/bsthwr/HWManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/ime/framework/engine/bsthwr/HWManager;->SendMessageUpdateCandidates(I)V

    :cond_1
    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
