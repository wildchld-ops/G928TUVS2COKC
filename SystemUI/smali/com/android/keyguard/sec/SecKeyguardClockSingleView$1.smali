.class Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;
.super Landroid/os/Handler;
.source "SecKeyguardClockSingleView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/SecKeyguardClockSingleView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->handleDateOnSettngsChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$000(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->handleShowClockDateOnSettngsChanged()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$100(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockStyle()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # invokes: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->setClockContentDesciption()V
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$200(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)V

    goto :goto_0

    :pswitch_4
    const-string v0, "SecKeyguardClockSingleView"

    const-string v1, "MSG_LONG_SHADOW_UPDATED"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->updateImageViews()V

    iget-object v0, p0, Lcom/android/keyguard/sec/SecKeyguardClockSingleView$1;->this$0:Lcom/android/keyguard/sec/SecKeyguardClockSingleView;

    # getter for: Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->mKeyguardLongShadowEffectWrapper:Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;
    invoke-static {v0}, Lcom/android/keyguard/sec/SecKeyguardClockSingleView;->access$300(Lcom/android/keyguard/sec/SecKeyguardClockSingleView;)Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/sec/KeyguardLongShadowEffectWrapper;->viewToShadow()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
