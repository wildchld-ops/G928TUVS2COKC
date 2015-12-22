.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;
.super Ljava/lang/Object;
.source "KeyguardEffectViewWaterDroplet.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewWaterDroplet;->clearScreen()V

    return-void
.end method
