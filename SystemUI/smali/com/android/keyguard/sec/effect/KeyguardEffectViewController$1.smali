.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;
.super Landroid/os/Handler;
.source "KeyguardEffectViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

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
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperTypeChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$000(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleWallpaperImageChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$100(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleSetGradationLayer()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$200(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->handleChargeStateChange()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;->access$300(Lcom/android/keyguard/sec/effect/KeyguardEffectViewController;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x12f0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
