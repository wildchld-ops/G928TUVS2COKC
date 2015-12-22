.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$2;
.super Ljava/lang/Object;
.source "KeyguardEffectViewSparklingBubbles.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->cleanUp()V
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

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles$2;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewSparklingBubbles;->clearScreen()V

    return-void
.end method
