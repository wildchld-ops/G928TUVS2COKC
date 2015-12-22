.class Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;
.super Landroid/os/Handler;
.source "ParticleEffect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;


# direct methods
.method constructor <init>(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    const/4 v5, 0x1

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # invokes: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->isAvailableRect()Z
    invoke-static {v4}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$000(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->drawingLeft:I
    invoke-static {v4}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$100(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->drawingMargin:I
    invoke-static {v5}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$200(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)I

    move-result v5

    sub-int v1, v4, v5

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->drawingTop:I
    invoke-static {v4}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$300(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->drawingMargin:I
    invoke-static {v5}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$200(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)I

    move-result v5

    sub-int v3, v4, v5

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->drawingRight:I
    invoke-static {v4}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$400(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->drawingMargin:I
    invoke-static {v5}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$200(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)I

    move-result v5

    add-int v2, v4, v5

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->drawingBottom:I
    invoke-static {v4}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$500(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)I

    move-result v4

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->drawingMargin:I
    invoke-static {v5}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$200(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)I

    move-result v5

    add-int v0, v4, v5

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    invoke-virtual {v4, v1, v3, v2, v0}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->invalidate(IIII)V

    :goto_0
    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->isDrawing:Z
    invoke-static {v4}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$600(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->isPaused:Z
    invoke-static {v4}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$700(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    iget-object v4, v4, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    # getter for: Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->drawingDelayTime:I
    invoke-static {v5}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->access$800(Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;)I

    move-result v5

    int-to-long v6, v5

    invoke-virtual {v4, v8, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    return-void

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect$1;->this$0:Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;

    invoke-virtual {v4, v8, v8, v5, v5}, Lcom/samsung/android/visualeffect/lock/particle/ParticleEffect;->invalidate(IIII)V

    goto :goto_0
.end method
