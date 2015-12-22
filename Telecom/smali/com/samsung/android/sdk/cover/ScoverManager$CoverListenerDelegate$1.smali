.class Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;
.super Landroid/os/Handler;
.source "ScoverManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;-><init>(Lcom/samsung/android/sdk/cover/ScoverManager;Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

.field final synthetic val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;Landroid/os/Looper;Lcom/samsung/android/sdk/cover/ScoverManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    iput-object p3, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->val$this$0:Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    invoke-static {v0}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->access$100(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    check-cast v5, Lcom/samsung/android/cover/CoverState;

    if-eqz v5, :cond_1

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverState;

    iget-boolean v1, v5, Lcom/samsung/android/cover/CoverState;->switchState:Z

    iget v2, v5, Lcom/samsung/android/cover/CoverState;->type:I

    iget v3, v5, Lcom/samsung/android/cover/CoverState;->color:I

    iget v4, v5, Lcom/samsung/android/cover/CoverState;->widthPixel:I

    iget v5, v5, Lcom/samsung/android/cover/CoverState;->heightPixel:I

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/sdk/cover/ScoverState;-><init>(ZIIII)V

    iget-object v1, p0, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate$1;->this$1:Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;

    # getter for: Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->mListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;
    invoke-static {v1}, Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;->access$100(Lcom/samsung/android/sdk/cover/ScoverManager$CoverListenerDelegate;)Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;->onCoverStateChanged(Lcom/samsung/android/sdk/cover/ScoverState;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "ScoverManager"

    const-string v1, "coverState : null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
