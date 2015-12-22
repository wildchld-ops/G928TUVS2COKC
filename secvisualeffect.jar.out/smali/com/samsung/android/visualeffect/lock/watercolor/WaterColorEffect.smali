.class public Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;
.super Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;
.source "WaterColorEffect.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/samsung/android/visualeffect/lock/common/LockBGEffect;-><init>(Landroid/content/Context;)V

    const-string v0, "WaterColorEffect_View"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;->TAG:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;->veContext:Landroid/content/Context;

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;->setEffectRenderer(I)V

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;)Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    return-object v0
.end method


# virtual methods
.method public showAffordanceEffect(JLandroid/graphics/Rect;)V
    .locals 5

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;->TAG:Ljava/lang/String;

    const-string v4, "showAffordanceEffect"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;->mRenderer:Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;->TAG:Ljava/lang/String;

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

    new-instance v3, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect$1;

    invoke-direct {v3, p0, v1, v2}, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect$1;-><init>(Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;II)V

    invoke-virtual {p0, v3, p1, p2}, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorEffect;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method
