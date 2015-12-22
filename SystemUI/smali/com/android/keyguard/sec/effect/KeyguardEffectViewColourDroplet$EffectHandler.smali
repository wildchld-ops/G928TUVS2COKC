.class public Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;
.super Landroid/os/Handler;
.source "KeyguardEffectViewColourDroplet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EffectHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet$EffectHandler;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;

    # invokes: Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->registerAccelrometer()V
    invoke-static {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;->access$600(Lcom/android/keyguard/sec/effect/KeyguardEffectViewColourDroplet;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x3e7
        :pswitch_0
    .end packed-switch
.end method
