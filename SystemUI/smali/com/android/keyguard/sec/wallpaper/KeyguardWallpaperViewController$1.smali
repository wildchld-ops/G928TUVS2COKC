.class Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$1;
.super Landroid/os/Handler;
.source "KeyguardWallpaperViewController.java"


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

    iput-object p1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    const-string v0, "KeyguardWallpaperViewController"

    const-string v1, "illegal msg sent!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # invokes: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleEffectChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$000(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V

    goto :goto_0

    :sswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # invokes: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleWallpaperImageChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$100(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    # invokes: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleSetGradationLayer()V
    invoke-static {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$200(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;)V

    goto :goto_0

    :sswitch_3
    iget-object v1, p0, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController$1;->this$0:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/view/MotionEvent;

    # invokes: Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->handleTouchEvent(Landroid/view/MotionEvent;)V
    invoke-static {v1, v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;->access$300(Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperViewController;Landroid/view/MotionEvent;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0xc8 -> :sswitch_1
        0x12c -> :sswitch_1
        0x190 -> :sswitch_2
        0x1f4 -> :sswitch_3
        0x12f0 -> :sswitch_0
    .end sparse-switch
.end method
