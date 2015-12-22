.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;
.super Ljava/lang/Object;
.source "KeyguardWallpaperLiveViewController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperLiveViewController"


# instance fields
.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

.field private final SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

.field private mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

.field private mContext:Landroid/content/Context;

.field private mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "just_lock_livewallpaper_package_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->SETTING_LOCKSCREEN_LIVEWALLPAPER_PACKAGE_NAME:Ljava/lang/String;

    const-string v0, "just_lock_livewallpaper_class_name"

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->SETTING_LOCKSCREEN_LIVEWALLPAPER_CLASS_NAME:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-direct {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->initConnection()V

    return-void
.end method

.method private initConnection()V
    .locals 7

    const/4 v6, -0x2

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_livewallpaper_package_name"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "just_lock_livewallpaper_class_name"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    iget-object v5, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5, v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    iput-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    :cond_2
    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/android/keyguard/sec/SecKeyguardStatusUtils;->isUltraPowerSavingMode(Landroid/content/Context;)Z

    move-result v2

    const-string v4, "KeyguardWallpaperLiveViewController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "initConnection isUltraPowerSavingMode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    if-eqz v4, :cond_0

    if-nez v2, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->isServiceConnected()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-virtual {v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->connect()Z

    iget-object v4, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    invoke-interface {v4}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;->onShown()V

    goto :goto_0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;->disconnect()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLiveViewController;->mConnection:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperConnection;

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    return-void
.end method
