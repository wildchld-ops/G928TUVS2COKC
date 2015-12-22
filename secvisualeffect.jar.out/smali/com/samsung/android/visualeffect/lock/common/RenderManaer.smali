.class public Lcom/samsung/android/visualeffect/lock/common/RenderManaer;
.super Ljava/lang/Object;
.source "RenderManaer.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;ILcom/samsung/android/visualeffect/common/GLTextureView;)Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileRenderer;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/visualeffect/lock/abstracttile/AbstractTileRenderer;-><init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/samsung/android/visualeffect/lock/geometricmosaic/GeometricMosaicRenderer;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/visualeffect/lock/geometricmosaic/GeometricMosaicRenderer;-><init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorRenderer;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/visualeffect/lock/watercolor/WaterColorRenderer;-><init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x6

    if-ne p1, v0, :cond_3

    new-instance v0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;-><init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x7

    if-ne p1, v0, :cond_4

    new-instance v0, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingRenderer;

    invoke-direct {v0, p0, p2}, Lcom/samsung/android/visualeffect/lock/brilliantring/BrilliantRingRenderer;-><init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method
