.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "MiniViewCoverClockWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 4

    const/16 v2, 0x12c2

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mClockHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 3

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    invoke-virtual {v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$202(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;Z)Z

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onContentChanged DateFormatChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$400(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    const-string v2, "clock.date_format_changed"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V

    return-void
.end method

.method public onLocaleChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->refreshClock()V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V

    return-void
.end method

.method public onUserSwitched(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->onTimeChanged()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverClockWidget;)V

    return-void
.end method
