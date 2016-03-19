.class public Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;
.super Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
.source "ClockFrameView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;-><init>(Landroid/content/Context;FF)V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;->init()V

    return-void
.end method

.method private getPaint(I)Landroid/graphics/Paint;
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-object v0
.end method

.method private init()V
    .locals 0

    return-void
.end method

.method private makePathInfo1()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;
    .locals 11

    const/high16 v10, 0x40d00000    # 6.5f

    const/high16 v3, 0x40a00000    # 5.0f

    const v1, 0x4059999a    # 3.4f

    const/16 v9, 0xfe

    const/high16 v7, 0x40400000    # 3.0f

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v7, v7}, Landroid/graphics/Path;->moveTo(FF)V

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x419c0000    # 19.5f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v4, 0x41c80000    # 25.0f

    const v6, 0x420a6666    # 34.6f

    const/high16 v8, 0x42100000    # 36.0f

    move-object v2, v0

    move v5, v1

    invoke-virtual/range {v2 .. v8}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x42100000    # 36.0f

    invoke-virtual {v0, v10, v1}, Landroid/graphics/Path;->lineTo(FF)V

    const v1, 0x40dccccd    # 6.9f

    const/high16 v2, 0x42040000    # 33.0f

    const/high16 v3, 0x41080000    # 8.5f

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v5, 0x41580000    # 13.5f

    const/high16 v6, 0x419c0000    # 19.5f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x41080000    # 8.5f

    const/high16 v2, 0x41600000    # 14.0f

    const v3, 0x40dccccd    # 6.9f

    const v4, 0x408ccccd    # 4.4f

    move v5, v10

    move v6, v7

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v1, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    invoke-static {v9, v9, v9}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v1, v0, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-object v1
.end method

.method private makePathInfo2()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;
    .locals 7

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    const/high16 v1, 0x41dc0000    # 27.5f

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    const v1, 0x41d8cccd    # 27.1f

    const/high16 v2, 0x40c00000    # 6.0f

    const/high16 v3, 0x41cc0000    # 25.5f

    const/high16 v4, 0x41500000    # 13.0f

    const/high16 v5, 0x41a40000    # 20.5f

    const/high16 v6, 0x419c0000    # 19.5f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x41cc0000    # 25.5f

    const/high16 v2, 0x41c80000    # 25.0f

    const v3, 0x41d8cccd    # 27.1f

    const v4, 0x420a6666    # 34.6f

    const/high16 v5, 0x41dc0000    # 27.5f

    const/high16 v6, 0x42100000    # 36.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x41f80000    # 31.0f

    const/high16 v2, 0x42100000    # 36.0f

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    const v1, 0x41f4cccd    # 30.6f

    const/high16 v2, 0x42040000    # 33.0f

    const/high16 v3, 0x41e80000    # 29.0f

    const/high16 v4, 0x41d00000    # 26.0f

    const/high16 v5, 0x41c00000    # 24.0f

    const/high16 v6, 0x419c0000    # 19.5f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    const/high16 v1, 0x41e80000    # 29.0f

    const/high16 v2, 0x41600000    # 14.0f

    const v3, 0x41f4cccd    # 30.6f

    const v4, 0x408ccccd    # 4.4f

    const/high16 v5, 0x41f80000    # 31.0f

    const/high16 v6, 0x40400000    # 3.0f

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    new-instance v1, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    const/16 v2, 0xfe

    const/16 v3, 0xfe

    const/16 v4, 0xfe

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-object v1
.end method

.method private makePathInfo3()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;
    .locals 5

    const/high16 v4, 0x42080000    # 34.0f

    const/high16 v3, 0x40800000    # 4.0f

    const/16 v2, 0xfe

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v4, v1}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    invoke-static {v2, v2, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x3

    invoke-direct {v1, v0, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    return-object v1
.end method

.method private makePathInfo4()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;
    .locals 6

    const/high16 v5, 0x421c0000    # 39.0f

    const/high16 v4, 0x42080000    # 34.0f

    const/16 v3, 0xfe

    const/high16 v2, 0x420c0000    # 35.0f

    const/4 v1, 0x0

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    invoke-virtual {v0, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v5}, Landroid/graphics/Path;->lineTo(FF)V

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    new-instance v1, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    invoke-static {v3, v3, v3}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x4

    invoke-direct {v1, v0, v2, v3}, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;I)V

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

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;->makePathInfo1()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;->makePathInfo2()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;->makePathInfo3()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/ClockFrameView;->makePathInfo4()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected modifyPathInfo(Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;F)V
    .locals 0

    return-void
.end method
