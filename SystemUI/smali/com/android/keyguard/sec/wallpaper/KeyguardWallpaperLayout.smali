.class public Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;
.super Landroid/widget/FrameLayout;
.source "KeyguardWallpaperLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "KeyguardWallpaperLayout"


# instance fields
.field private mConfigurationCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;

.field private mCurrentMobileKeyboard:I

.field private mIsSupportMobileKeyboard:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    invoke-static {}, Lcom/android/keyguard/sec/KeyguardProperties;->isSupportMobileKeyboard()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->mIsSupportMobileKeyboard:Z

    invoke-virtual {p0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->mCurrentMobileKeyboard:I

    iput-object p2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->mConfigurationCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;

    return-void
.end method


# virtual methods
.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "KeyguardWallpaperLayout"

    const-string v1, "onConfigurationChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->mIsSupportMobileKeyboard:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->mCurrentMobileKeyboard:I

    iget v1, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    iput v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->mCurrentMobileKeyboard:I

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->mConfigurationCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;->mConfigurationCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;

    invoke-interface {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;->onConfigurationChanged()V

    :cond_0
    return-void
.end method
