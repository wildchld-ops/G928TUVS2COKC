.class public Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;
.super Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;
.source "BrilliantRingEffect.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;-><init>(Landroid/content/Context;)V

    const-string v0, "BrilliantRingEffect_View"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->veContext:Landroid/content/Context;

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->setEffectRenderer(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;)Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    return-object v0
.end method


# virtual methods
.method public showAffordanceEffect(JLandroid/graphics/Rect;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->TAG:Ljava/lang/String;

    const-string v4, "showAffordanceEffect 2014-12-02"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->TAG:Ljava/lang/String;

    const-string v4, "showUnlockAffordance renderer is null"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    invoke-virtual {p3}, Landroid/graphics/Rect;->centerY()I

    move-result v2

    new-instance v3, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect$1;-><init>(Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;II)V

    invoke-virtual {p0, v3, p1, p2}, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingEffect;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
