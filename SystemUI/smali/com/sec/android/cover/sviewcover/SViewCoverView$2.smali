.class Lcom/sec/android/cover/sviewcover/SViewCoverView$2;
.super Ljava/lang/Object;
.source "SViewCoverView.java"

# interfaces
.implements Lcom/sec/android/cover/manager/CoverPowerManager$OnScreenOffTimerHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverView;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenOffTimerExpired()V
    .locals 2

    const-string v0, "SViewCoverView"

    const-string v1, "onScreenOffTimerExpired : Screen off timer expired"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/sec/android/cover/CoverViewMediator;->mTestModeEnabled:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const-string v0, "SViewCoverView"

    const-string v1, "onScreenOffTimerExpired : but test mode is TRUE => return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->hasWindowFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    invoke-virtual {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->isCoverOpen()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/sec/android/cover/sviewcover/SViewCoverView$2;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverView;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverView;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/sec/android/cover/sviewcover/SViewCoverView;->access$2900(Lcom/sec/android/cover/sviewcover/SViewCoverView;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sec/android/cover/manager/CoverPowerManager;->goToSleep()V

    goto :goto_0

    :cond_1
    const-string v0, "SViewCoverView"

    const-string v1, "onScreenOffTimerExpired : SView cover UI is not active."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
