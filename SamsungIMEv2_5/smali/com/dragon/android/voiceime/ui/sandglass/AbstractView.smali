.class public abstract Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
.super Landroid/view/View;
.source "AbstractView.java"


# instance fields
.field private final STROKE_WIDTH:F

.field private mContentHeight:F

.field private mContentWidth:F

.field private mPaths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mScaleMatrix:Landroid/graphics/Matrix;

.field protected mStrokeWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const v0, 0x4019999a    # 2.4f

    iput v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->STROKE_WIDTH:F

    invoke-direct {p0, p2, p3}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->init(FF)V

    return-void
.end method

.method private init(FF)V
    .locals 1

    iput p1, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mContentWidth:F

    iput p2, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mContentHeight:F

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->createPathInfos()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mPaths:Ljava/util/List;

    return-void
.end method

.method private setProperty(II)V
    .locals 7

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v5, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mScaleMatrix:Landroid/graphics/Matrix;

    if-eqz v5, :cond_1

    :cond_0
    return-void

    :cond_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    iput-object v5, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mScaleMatrix:Landroid/graphics/Matrix;

    int-to-float v5, p1

    iget v6, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mContentWidth:F

    div-float v3, v5, v6

    int-to-float v5, p2

    iget v6, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mContentHeight:F

    div-float v4, v5, v6

    iget-object v5, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Matrix;->setScale(FF)V

    const v5, 0x4019999a    # 2.4f

    mul-float/2addr v5, v3

    iput v5, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mStrokeWidth:F

    iget-object v5, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mPaths:Ljava/util/List;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mPaths:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v5, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mPaths:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    iget-object v5, v2, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;->PATH:Landroid/graphics/Path;

    iget-object v6, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v5, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected calculate(FFF)F
    .locals 2

    sub-float v0, p2, p1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p3

    mul-float/2addr v0, v1

    add-float/2addr v0, p1

    return v0
.end method

.method protected abstract createPathInfos()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;",
            ">;"
        }
    .end annotation
.end method

.method protected abstract modifyPathInfo(Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;F)V
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->getHeight()I

    move-result v4

    invoke-direct {p0, v3, v4}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->setProperty(II)V

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mPaths:Ljava/util/List;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mPaths:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mPaths:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    iget-object v3, v2, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;->PATH:Landroid/graphics/Path;

    iget-object v4, v2, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;->PAINT:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public render(F)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->render(FFF)V

    return-void
.end method

.method public render(FFF)V
    .locals 3

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mPaths:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mPaths:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    invoke-virtual {p0, v2, p1}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->modifyPathInfo(Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;F)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->invalidate()V

    return-void
.end method

.method protected transform(Landroid/graphics/Path;)V
    .locals 1

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mScaleMatrix:Landroid/graphics/Matrix;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->mScaleMatrix:Landroid/graphics/Matrix;

    invoke-virtual {p1, v0}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    :cond_0
    return-void
.end method
