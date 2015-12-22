.class public Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutEffect;
.super Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;
.source "BrilliantCutEffect.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;-><init>(Landroid/content/Context;)V

    const-string v0, "BrilliantCutEffect_View"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutEffect;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutEffect;->veContext:Landroid/content/Context;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutEffect;->setEffectRenderer(I)V

    return-void
.end method
