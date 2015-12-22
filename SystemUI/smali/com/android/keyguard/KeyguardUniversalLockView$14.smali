.class Lcom/android/keyguard/KeyguardUniversalLockView$14;
.super Landroid/database/ContentObserver;
.source "KeyguardUniversalLockView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/KeyguardUniversalLockView;->instantiateWallpaperContentObserverIfRequired()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/KeyguardUniversalLockView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/KeyguardUniversalLockView;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/KeyguardUniversalLockView$14;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    if-nez p2, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$14;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;
    invoke-static {v2}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$4200(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$14;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-object v3, p0, Lcom/android/keyguard/KeyguardUniversalLockView$14;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$4300(Lcom/android/keyguard/KeyguardUniversalLockView;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget-object v4, p0, Lcom/android/keyguard/KeyguardUniversalLockView$14;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    # getter for: Lcom/android/keyguard/KeyguardUniversalLockView;->WHITE_LOCKSCREEN_WALLPAPER:Ljava/lang/String;
    invoke-static {v4}, Lcom/android/keyguard/KeyguardUniversalLockView;->access$4200(Lcom/android/keyguard/KeyguardUniversalLockView;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v0, :cond_2

    :goto_1
    iput-boolean v0, v2, Lcom/android/keyguard/KeyguardUniversalLockView;->mUseBlackTextOnWhiteWallpaper:Z

    :cond_1
    const-string v0, "KeyguardUniversalLockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in onChange() mUseBlackTextOnWhiteWallpaper:  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/KeyguardUniversalLockView$14;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    iget-boolean v2, v2, Lcom/android/keyguard/KeyguardUniversalLockView;->mUseBlackTextOnWhiteWallpaper:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/KeyguardUniversalLockView$14;->this$0:Lcom/android/keyguard/KeyguardUniversalLockView;

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUniversalLockView;->updateBlackTextOnWhiteWallpaper()V

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_1
.end method
