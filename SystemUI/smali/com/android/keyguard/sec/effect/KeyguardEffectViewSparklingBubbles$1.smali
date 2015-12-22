.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewSparklingBubbles.java"

# interfaces
.implements Lcom/samsung/android/visualeffect/IEffectListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->init(Landroid/content/Context;Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(ILjava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/HashMap",
            "<**>;)V"
        }
    .end annotation

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v0, "SparklingBubbles_Keyguard"

    const-string v1, "KeyguardEffectViewSparklingBubbles : mKeyguardWindowCallback is called!!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mKeyguardWindowCallback:Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/keyguard/sec/wallpaper/KeyguardWallpaperMediator$KeyguardWindowCallback;->onShown()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    iget-object v1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->setBackground()Landroid/graphics/Bitmap;
    invoke-static {v1}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Landroid/graphics/Bitmap;

    move-result-object v1

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->update(Landroid/graphics/Bitmap;I)V
    invoke-static {v0, v1, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Landroid/graphics/Bitmap;I)V

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$302(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Z)Z

    const-string v0, "SparklingBubbles_Keyguard"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mIEffectListener callback, update(1) mTouchFlagForMobileKeyboard = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    # getter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->mTouchFlagForMobileKeyboard:Z
    invoke-static {v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isEmptyRender:Z
    invoke-static {v0, v3}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Z)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    # setter for: Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->isEmptyRender:Z
    invoke-static {v0, v2}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->access$402(Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;Z)Z

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
