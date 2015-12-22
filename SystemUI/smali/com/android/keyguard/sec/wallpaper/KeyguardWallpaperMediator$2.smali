.class Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;
.super Landroid/database/ContentObserver;
.source "KeyguardWallpaperMediator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    const/16 v2, 0xc8

    const-string v0, "KeyguardWallpaperMediator"

    const-string v1, "onChange"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

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

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->access$100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->access$100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$2;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->mHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;->access$100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
