.class Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$1;
.super Ljava/lang/Object;
.source "KeyguardEffectViewBrilliantCut.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->cleanUp()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;


# direct methods
.method constructor <init>(Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;)V
    .locals 0

    iput-object p1, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut$1;->this$0:Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;

    invoke-virtual {v0}, Lcom/android/keyguard/sec/effect/KeyguardEffectViewBrilliantCut;->clearScreen()V

    return-void
.end method
