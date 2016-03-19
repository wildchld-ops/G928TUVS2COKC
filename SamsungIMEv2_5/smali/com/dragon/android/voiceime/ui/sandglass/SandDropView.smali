.class public Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;
.super Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
.source "SandDropView.java"


# instance fields
.field private POSY:[F


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;-><init>(Landroid/content/Context;FF)V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->init()V

    return-void
.end method

.method private getPaint1(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    return-object v0
.end method

.method private getPaint2(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->setAlpha(F)V

    return-void
.end method

.method private makePathInfo1()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;
    .locals 4

    const/16 v3, 0xfe

    const/4 v2, 0x3

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->POSY:[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->getPaint1(I)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->modifyPathInfo(Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;F)V

    return-object v0

    :array_0
    .array-data 4
        0x41100000    # 9.0f
        0x41e00000    # 28.0f
        0x4203999a    # 32.9f
    .end array-data
.end method

.method private makePathInfo2()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;
    .locals 6

    const/4 v5, 0x2

    const/high16 v4, 0x41880000    # 17.0f

    const/16 v3, 0xfe

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->POSY:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v1, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->POSY:[F

    aget v1, v1, v5

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->getPaint2(I)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v1, v0, v2, v5}, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-object v1
.end method


# virtual methods
.method protected createPathInfos()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->makePathInfo1()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->makePathInfo2()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected modifyPathInfo(Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;F)V
    .locals 9

    const/4 v8, 0x0

    const/high16 v7, 0x41880000    # 17.0f

    const/4 v6, 0x1

    iget-object v3, p1, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;->PAINT:Landroid/graphics/Paint;

    iget v4, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->mStrokeWidth:F

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget v3, p1, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;->ID:I

    if-ne v3, v6, :cond_0

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->POSY:[F

    aget v3, v3, v8

    iget-object v4, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->POSY:[F

    aget v4, v4, v6

    iget-object v5, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->POSY:[F

    aget v5, v5, v8

    sub-float/2addr v4, v5

    mul-float/2addr v4, p2

    add-float v1, v3, v4

    iget-object v3, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->POSY:[F

    aget v2, v3, v6

    iget-object v0, p1, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;->PATH:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    invoke-virtual {v0, v7, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v7, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->transform(Landroid/graphics/Path;)V

    :cond_0
    return-void
.end method

.method public render(F)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->render(FFF)V

    return-void
.end method

.method public render(FFF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/sandglass/SandDropView;->setAlpha(F)V

    div-float/2addr v0, p3

    mul-float/2addr p1, v0

    invoke-super {p0, p1, p2, p3}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->render(FFF)V

    return-void
.end method
