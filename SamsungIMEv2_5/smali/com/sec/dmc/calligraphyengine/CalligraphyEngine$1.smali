.class Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;
.super Ljava/lang/Object;
.source "CalligraphyEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->dealTouchUpEvent(IIFJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;


# direct methods
.method constructor <init>(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    # getter for: Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->ismove:Z
    invoke-static {v0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$1(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    # getter for: Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mFadingColorValue:F
    invoke-static {v0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$2(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)F

    move-result v0

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    invoke-static {v0, v6}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$3(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;F)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    invoke-virtual {v0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->clearScene()V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$4(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    # getter for: Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingInitAlpha:F
    invoke-static {v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$5(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)F

    move-result v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    # getter for: Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->startFadingTime:J
    invoke-static {v4}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$6(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    long-to-float v2, v2

    iget-object v3, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    # getter for: Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->m_fadingTotalTime:F
    invoke-static {v3}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$7(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)F

    move-result v3

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$3(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;F)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    # getter for: Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mFadingColorValue:F
    invoke-static {v0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$2(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)F

    move-result v0

    cmpg-float v0, v0, v6

    if-gez v0, :cond_2

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    invoke-static {v0, v6}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$3(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;F)V

    :cond_2
    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    iget-object v1, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    # getter for: Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->mFadingColorValue:F
    invoke-static {v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$2(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)F

    move-result v1

    # invokes: Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->drawFadingStrokes(F)V
    invoke-static {v0, v1}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$8(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;F)V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    invoke-virtual {v0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->invalidate()V

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    # getter for: Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$9(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine$1;->this$0:Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;

    # getter for: Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->handler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;->access$9(Lcom/sec/dmc/calligraphyengine/CalligraphyEngine;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
