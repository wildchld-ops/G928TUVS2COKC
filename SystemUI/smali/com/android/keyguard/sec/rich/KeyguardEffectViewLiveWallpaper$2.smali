.class Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "KeyguardEffectViewLiveWallpaper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onUserSwitching(I)V
    .locals 4

    const/4 v3, 0x1

    # getter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "*** onUserSwitching - userId :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    # getter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->access$200(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    # getter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->access$200(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper$2;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;

    # getter for: Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->mFinishInitHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;->access$200(Lcom/android/keyguard/sec/rich/KeyguardEffectViewLiveWallpaper;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method
