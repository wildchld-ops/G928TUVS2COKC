.class public Lcom/android/internal/policy/impl/DisplayWindowPolicy;
.super Ljava/lang/Object;
.source "DisplayWindowPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DualScreenWindowPolicy"


# instance fields
.field mForceClearedSystemUiFlags:I

.field mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

.field mLastFocusNeedsMenu:Z

.field mLastSystemUiFlags:I

.field mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mResettingSystemUiFlags:I

.field mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopFullscreenOpaqueWindowState:Landroid/view/WindowManagerPolicy$WindowState;

.field mTopIsFullscreen:Z

.field mWinShowWhenLocked:Landroid/view/WindowManagerPolicy$WindowState;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/DisplayWindowPolicy;->mStatusBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v1, p0, Lcom/android/internal/policy/impl/DisplayWindowPolicy;->mNavigationBar:Landroid/view/WindowManagerPolicy$WindowState;

    iput-object v1, p0, Lcom/android/internal/policy/impl/DisplayWindowPolicy;->mKeyguardScrim:Landroid/view/WindowManagerPolicy$WindowState;

    iput v0, p0, Lcom/android/internal/policy/impl/DisplayWindowPolicy;->mResettingSystemUiFlags:I

    iput v0, p0, Lcom/android/internal/policy/impl/DisplayWindowPolicy;->mForceClearedSystemUiFlags:I

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/DisplayWindowPolicy;->mLastFocusNeedsMenu:Z

    return-void
.end method
