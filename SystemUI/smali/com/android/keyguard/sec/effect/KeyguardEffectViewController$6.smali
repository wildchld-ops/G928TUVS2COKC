.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;
.super Landroid/database/ContentObserver;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperContentObservers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/16 v4, 0x12f3

    const/16 v2, 0x12f2

    const/16 v3, 0x12f1

    const/16 v1, 0x12f0

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string v0, "lockscreen_ripple_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_5
    const-string v0, "opne_theme_effect_lockscreen_wallpaper"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_7
    const-string v0, "lockscreen_wallpaper_path"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "lockscreen_wallpaper_path_2"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    :cond_8
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->setWallpaperFileObserver()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$800(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    const-string v0, "KeyguardEffectViewController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mWallpaperPath = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    iget-object v2, v2, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mWallpaperPath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_a
    const-string v0, "emergency_mode"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_b
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    const/4 v1, 0x1

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mEmergencyModeStateChanged:Z
    invoke-static {v0, v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$2102(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_c
    const-string v0, "lockscreen_wallpaper_transparent"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_d
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_e
    const-string v0, "lockscreen_zoom_panning_effect"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_f
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$6;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$1700(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
