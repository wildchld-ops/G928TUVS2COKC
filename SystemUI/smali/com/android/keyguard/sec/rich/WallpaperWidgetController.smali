.class public Lcom/android/keyguard/sec/rich/WallpaperWidgetController;
.super Ljava/lang/Object;
.source "WallpaperWidgetController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperWidgetController"

.field private static mInstance:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mWallpaperSlider:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

.field private mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/keyguard/sec/rich/WallpaperWidgetController;
    .locals 1

    sget-object v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mInstance:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    invoke-direct {v0, p0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mInstance:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    :cond_0
    sget-object v0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mInstance:Lcom/android/keyguard/sec/rich/WallpaperWidgetController;

    return-object v0
.end method


# virtual methods
.method public handleUpdateEnd()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setWidgetEnabled(Z)V

    :cond_0
    return-void
.end method

.method public handleUpdateStart()V
    .locals 2

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->setWidgetEnabled(Z)V

    :cond_0
    return-void
.end method

.method public notifyWallpaperStateChanged()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;->init()V

    :cond_0
    return-void
.end method

.method public setContainer(Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWidgetContainer:Lcom/android/keyguard/sec/rich/WallpaperWidgetContainer;

    return-void
.end method

.method public setSlider(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/WallpaperWidgetController;->mWallpaperSlider:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    return-void
.end method
