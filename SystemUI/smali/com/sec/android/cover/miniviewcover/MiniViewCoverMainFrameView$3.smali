.class Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;
.super Ljava/lang/Object;
.source "MiniViewCoverMainFrameView.java"

# interfaces
.implements Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOffTimerExpired()V
    .locals 2

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenOffTimerExpired : Screen off timer expired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    invoke-virtual {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView$3;->this$0:Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;

    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->mPowerManager:Lcom/sec/android/cover/manager/CoverPowerManager;
    invoke-static {v0}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$100(Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V

    :goto_0
    return-void

    :cond_0
    # getter for: Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/sec/android/cover/miniviewcover/MiniViewCoverMainFrameView;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onScreenOffTimerExpired : Mini view cover UI is not active."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
