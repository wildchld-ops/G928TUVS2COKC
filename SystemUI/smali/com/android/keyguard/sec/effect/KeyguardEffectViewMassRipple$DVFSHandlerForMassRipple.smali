.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;
.super Landroid/os/Handler;
.source "KeyguardEffectViewMassRipple.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DVFSHandlerForMassRipple"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->aquireCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$400(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple$DVFSHandlerForMassRipple;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->releaseCpuGpuMaxLock()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;->access$500(Lcom/android/keyguard/sec/effect/KeyguardEffectViewMassRipple;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
