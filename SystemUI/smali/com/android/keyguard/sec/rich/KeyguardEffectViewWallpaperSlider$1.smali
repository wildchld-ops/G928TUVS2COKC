.class Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$1;
.super Landroid/os/Handler;
.source "KeyguardEffectViewWallpaperSlider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider$1;->this$0:Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;

    # invokes: Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->startSlideShow()V
    invoke-static {v0}, Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;->access$000(Lcom/android/keyguard/sec/rich/KeyguardEffectViewWallpaperSlider;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2710
        :pswitch_0
    .end packed-switch
.end method
