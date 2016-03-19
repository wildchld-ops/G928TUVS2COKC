.class Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/connect/comm/CommandQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TransactionRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nuance/connect/comm/CommandQueue;

.field private transaction:Lcom/nuance/connect/comm/Transaction;


# direct methods
.method public constructor <init>(Lcom/nuance/connect/comm/CommandQueue;Lcom/nuance/connect/comm/Transaction;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/comm/Transaction;

    return-void
.end method


# virtual methods
.method public getPriority()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/comm/Transaction;

    invoke-interface {v0}, Lcom/nuance/connect/comm/Transaction;->getPriority()I

    move-result v0

    return v0
.end method

.method public getTransaction()Lcom/nuance/connect/comm/Transaction;
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/comm/Transaction;

    return-object v0
.end method

.method public isSame(Lcom/nuance/connect/comm/Transaction;)Z
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->transaction:Lcom/nuance/connect/comm/Transaction;

    invoke-interface {v0, p1}, Lcom/nuance/connect/comm/Transaction;->isSame(Lcom/nuance/connect/comm/Transaction;)Z

    move-result v0

    return v0
.end method

.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;->this$0:Lcom/nuance/connect/comm/CommandQueue;

    # invokes: Lcom/nuance/connect/comm/CommandQueue;->processTransaction(Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V
    invoke-static {v0, p0}, Lcom/nuance/connect/comm/CommandQueue;->access$800(Lcom/nuance/connect/comm/CommandQueue;Lcom/nuance/connect/comm/CommandQueue$TransactionRunnable;)V

    return-void
.end method
