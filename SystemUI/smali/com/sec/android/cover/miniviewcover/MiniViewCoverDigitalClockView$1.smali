.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "MiniViewCoverDigitalClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    return-void
.end method

.method public onContentChanged(Landroid/net/Uri;)V
    .locals 2

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    iget-object v1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    invoke-virtual {v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    # setter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->mIs24HTime:Z
    invoke-static {v0, v1}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$102(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;Z)Z

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "content://settings/system/date_format"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    :cond_1
    return-void
.end method

.method public onDateFormatChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    return-void
.end method

.method public onUserSwitched(II)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView$1;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;

    # invokes: Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->updateTime()V
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;->access$000(Lcom/sec/android/cover/miniviewcover/MiniViewCoverDigitalClockView;)V

    return-void
.end method
