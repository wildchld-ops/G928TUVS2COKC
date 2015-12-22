.class Lcom/sec/android/cover/clearcover/ClearCoverView$1;
.super Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;
.source "ClearCoverView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/clearcover/ClearCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/clearcover/ClearCoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-direct {p0}, Lcom/sec/android/cover/monitor/CoverUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoverDelayedTimout(I)V
    .locals 3

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverView;->access$200()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCoverDelayedTimout() seq = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", currentSeq ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverView;->mDelayedShowingSequence:I
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverView;->access$300()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverView;->mDelayedShowingSequence:I
    invoke-static {}, Lcom/sec/android/cover/clearcover/ClearCoverView;->access$400()I

    move-result v0

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->hasWindowFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->access$500(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPopupManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPopupManager;->isShowingPopupDialog()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    # getter for: Lcom/sec/android/cover/clearcover/ClearCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->access$500(Lcom/sec/android/cover/clearcover/ClearCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V

    :cond_1
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverView;->cancelScreenOffTimer()V
    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->access$000(Lcom/sec/android/cover/clearcover/ClearCoverView;)V

    iget-object v0, p0, Lcom/sec/android/cover/clearcover/ClearCoverView$1;->this$0:Lcom/sec/android/cover/clearcover/ClearCoverView;

    # invokes: Lcom/sec/android/cover/clearcover/ClearCoverView;->startScreenOffTimer()V
    invoke-static {v0}, Lcom/sec/android/cover/clearcover/ClearCoverView;->access$100(Lcom/sec/android/cover/clearcover/ClearCoverView;)V

    return-void
.end method
