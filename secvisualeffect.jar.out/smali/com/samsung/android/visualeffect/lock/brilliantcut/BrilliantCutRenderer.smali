.class public Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;
.super Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;
.source "BrilliantCutRenderer.java"


# instance fields
.field private final IMAGE_TYPE_NORAL:I

.field private final IMAGE_TYPE_SPECIAL:I

.field private brightnessForAffordanceAndUnlock:F

.field private brightnessForTouchNormal:F

.field private brightnessForTouchSpecial:F

.field private imageType:I

.field private nextTermSpeed:F

.field private radiusForNormal:F

.field private radiusForSpecial:F

.field private repeatCount:F

.field private speedForTouch:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/samsung/android/visualeffect/common/GLTextureView;)V
    .locals 2

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0}, Lcom/samsung/android/visualeffect/lock/common/GLTextureViewRenderer;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->IMAGE_TYPE_NORAL:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->IMAGE_TYPE_SPECIAL:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->imageType:I

    const v0, 0x3eae147b    # 0.34f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->radiusForSpecial:F

    const v0, 0x3e6b851f    # 0.23f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->radiusForNormal:F

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->brightnessForAffordanceAndUnlock:F

    const v0, 0x3eb33333    # 0.35f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->brightnessForTouchNormal:F

    const v0, 0x3ee66666    # 0.45f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->brightnessForTouchSpecial:F

    const v0, 0x3fcccccd    # 1.6f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->speedForTouch:F

    iput v1, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->repeatCount:F

    const v0, 0x3d99999a    # 0.075f

    iput v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->nextTermSpeed:F

    iput-object p1, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->mGlView:Lcom/samsung/android/visualeffect/common/GLTextureView;

    const-string v0, "libsecveBrilliantCut.so"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->mLibName:Ljava/lang/String;

    const-string v0, "BrilliantCut_Renderer"

    iput-object v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public setParameters([I[F)V
    .locals 10

    const/4 v9, 0x5

    const/4 v8, 0x1

    const/4 v7, 0x0

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "settingsForImageType() imageType = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->imageType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", type = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, p2, v7

    float-to-int v6, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->imageType:I

    aget v5, p2, v7

    float-to-int v5, v5

    if-eq v4, v5, :cond_1

    aget v4, p2, v7

    float-to-int v4, v4

    iput v4, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->imageType:I

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->radiusForNormal:F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->brightnessForTouchNormal:F

    iget v4, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->imageType:I

    if-ne v4, v8, :cond_0

    iget v2, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->radiusForSpecial:F

    iget v0, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->brightnessForTouchSpecial:F

    :cond_0
    new-array v1, v9, [I

    fill-array-data v1, :array_0

    new-array v3, v9, [F

    aput v2, v3, v7

    aput v0, v3, v8

    const/4 v4, 0x2

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->speedForTouch:F

    aput v5, v3, v4

    const/4 v4, 0x3

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->repeatCount:F

    aput v5, v3, v4

    const/4 v4, 0x4

    iget v5, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->nextTermSpeed:F

    aput v5, v3, v4

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v4, p1, p2}, Lcom/samsung/android/visualeffect/lock/common/Native;->setParameters([I[F)V

    iget-object v4, p0, Lcom/samsung/android/visualeffect/lock/brilliantcut/BrilliantCutRenderer;->mNative:Lcom/samsung/android/visualeffect/lock/common/Native;

    invoke-virtual {v4, v1, v3}, Lcom/samsung/android/visualeffect/lock/common/Native;->setParameters([I[F)V

    :cond_1
    return-void

    nop

    :array_0
    .array-data 4
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method
