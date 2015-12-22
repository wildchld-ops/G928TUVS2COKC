.class Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;
.super Ljava/lang/Object;
.source "KeyguardWallpaperViewController.java"

# interfaces
.implements Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout$ConfigurationChangeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$700(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->mobileKeyboardCovered:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$800(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$700(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mWindowManager:Landroid/view/WindowManager;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$1000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mBackgroundRootLayout:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;
    invoke-static {v1}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$900(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperLayout;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$800(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$3;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # getter for: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->mLp:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$800(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, -0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    goto :goto_0
.end method
