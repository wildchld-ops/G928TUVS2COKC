.class Lcom/sec/android/app/launcher/views/AppWidgetView$9;
.super Ljava/lang/Object;
.source "AppWidgetView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/launcher/views/AppWidgetView;->invokeDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/launcher/views/AppWidgetView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mbUseHWCanvas:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$000(Lcom/sec/android/app/launcher/views/AppWidgetView;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetView;)Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetView;)Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->setIgnoreDraw(Z)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetView;)Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->requestLayout()V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mHostView:Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$700(Lcom/sec/android/app/launcher/views/AppWidgetView;)Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView$HostView;->invalidate()V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # invokes: Lcom/sec/android/app/launcher/views/AppWidgetView;->render()V
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$1900(Lcom/sec/android/app/launcher/views/AppWidgetView;)V

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mbUseHWCanvas:Z
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$000(Lcom/sec/android/app/launcher/views/AppWidgetView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$2200(Lcom/sec/android/app/launcher/views/AppWidgetView;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mSetRedrawDirtyForHWCanvas:Ljava/lang/Runnable;
    invoke-static {v1}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$2000(Lcom/sec/android/app/launcher/views/AppWidgetView;)Ljava/lang/Runnable;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/launcher/views/AppWidgetView$9;->this$0:Lcom/sec/android/app/launcher/views/AppWidgetView;

    # getter for: Lcom/sec/android/app/launcher/views/AppWidgetView;->mHWCanvasSetDirtyDelay:J
    invoke-static {v2}, Lcom/sec/android/app/launcher/views/AppWidgetView;->access$2100(Lcom/sec/android/app/launcher/views/AppWidgetView;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_1
    return-void
.end method
