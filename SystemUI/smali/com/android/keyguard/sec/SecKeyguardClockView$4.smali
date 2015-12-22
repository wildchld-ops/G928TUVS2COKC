.class Lcom/android/keyguard/sec/SecKeyguardClockView$4;
.super Landroid/database/ContentObserver;
.source "SecKeyguardClockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/SecKeyguardClockView;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/16 v4, 0x12cc

    const/16 v3, 0x12cb

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v2, "location_name"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    const-string v2, "white_lockscreen_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$800(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "white_lockscreen_wallpaper"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_4

    :goto_1
    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteWallpaper:Z
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$702(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$900(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    goto :goto_0

    :cond_4
    move v0, v1

    goto :goto_1

    :cond_5
    const-string v2, "white_cover_wallpaper"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    iget-object v3, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1100(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "white_cover_wallpaper"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_6

    :goto_2
    # setter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mUseBlackTextOnWhiteCoverWallpaper:Z
    invoke-static {v2, v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$1002(Lcom/android/keyguard/sec/SecKeyguardClockView;Z)Z

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockView;->refreshOwnerInfo()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$900(Lcom/android/keyguard/sec/SecKeyguardClockView;)V

    goto :goto_0

    :cond_6
    move v0, v1

    goto :goto_2

    :cond_7
    const-string v0, "dualclock_menu_settings"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "homecity_timezone"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    const-string v0, "lock_show_info"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_9
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockView$4;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockView;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockView;->access$400(Lcom/android/keyguard/sec/SecKeyguardClockView;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method
