.class public Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;
.super Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;
.source "SandLowerView.java"


# instance fields
.field private FROM_ANCHOR:[[F

.field private FROM_CONTROL1:[[F

.field private FROM_CONTROL2:[[F

.field private TO_ANCHOR:[[F

.field private TO_CONTROL1:[[F

.field private TO_CONTROL2:[[F


# direct methods
.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;-><init>(Landroid/content/Context;FF)V

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->init()V

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

.method private makePathInfo()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    new-array v2, v8, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_0

    aput-object v3, v2, v6

    new-array v3, v4, [F

    fill-array-data v3, :array_1

    aput-object v3, v2, v5

    new-array v3, v4, [F

    fill-array-data v3, :array_2

    aput-object v3, v2, v4

    new-array v3, v4, [F

    fill-array-data v3, :array_3

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_ANCHOR:[[F

    new-array v2, v8, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_4

    aput-object v3, v2, v6

    new-array v3, v4, [F

    fill-array-data v3, :array_5

    aput-object v3, v2, v5

    new-array v3, v4, [F

    fill-array-data v3, :array_6

    aput-object v3, v2, v4

    new-array v3, v4, [F

    fill-array-data v3, :array_7

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_CONTROL1:[[F

    new-array v2, v8, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_8

    aput-object v3, v2, v6

    new-array v3, v4, [F

    fill-array-data v3, :array_9

    aput-object v3, v2, v5

    new-array v3, v4, [F

    fill-array-data v3, :array_a

    aput-object v3, v2, v4

    new-array v3, v4, [F

    fill-array-data v3, :array_b

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_CONTROL2:[[F

    new-array v2, v8, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_c

    aput-object v3, v2, v6

    new-array v3, v4, [F

    fill-array-data v3, :array_d

    aput-object v3, v2, v5

    new-array v3, v4, [F

    fill-array-data v3, :array_e

    aput-object v3, v2, v4

    new-array v3, v4, [F

    fill-array-data v3, :array_f

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_ANCHOR:[[F

    new-array v2, v8, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_10

    aput-object v3, v2, v6

    new-array v3, v4, [F

    fill-array-data v3, :array_11

    aput-object v3, v2, v5

    new-array v3, v4, [F

    fill-array-data v3, :array_12

    aput-object v3, v2, v4

    new-array v3, v4, [F

    fill-array-data v3, :array_13

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_CONTROL1:[[F

    new-array v2, v8, [[F

    new-array v3, v4, [F

    fill-array-data v3, :array_14

    aput-object v3, v2, v6

    new-array v3, v4, [F

    fill-array-data v3, :array_15

    aput-object v3, v2, v5

    new-array v3, v4, [F

    fill-array-data v3, :array_16

    aput-object v3, v2, v4

    new-array v3, v4, [F

    fill-array-data v3, :array_17

    aput-object v3, v2, v7

    iput-object v2, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_CONTROL2:[[F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    new-instance v0, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    const/16 v2, 0xfe

    const/16 v3, 0xfe

    const/16 v4, 0xfe

    invoke-static {v2, v3, v4}, Landroid/graphics/Color;->rgb(III)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->getPaint(I)Landroid/graphics/Paint;

    move-result-object v2

    invoke-direct {v0, v1, v2, v5}, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;-><init>(Landroid/graphics/Path;Landroid/graphics/Paint;I)V

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->modifyPathInfo(Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;F)V

    return-object v0

    :array_0
    .array-data 4
        0x41880000    # 17.0f
        0x41b80000    # 23.0f
    .end array-data

    :array_1
    .array-data 4
        0x41100000    # 9.0f
        0x42040000    # 33.0f
    .end array-data

    :array_2
    .array-data 4
        0x41c80000    # 25.0f
        0x42040000    # 33.0f
    .end array-data

    :array_3
    .array-data 4
        0x41880000    # 17.0f
        0x41b80000    # 23.0f
    .end array-data

    :array_4
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_5
    .array-data 4
        0x41500000    # 13.0f
        0x41b80000    # 23.0f
    .end array-data

    :array_6
    .array-data 4
        0x41880000    # 17.0f
        0x42040000    # 33.0f
    .end array-data

    :array_7
    .array-data 4
        0x41c80000    # 25.0f
        0x42040000    # 33.0f
    .end array-data

    :array_8
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_9
    .array-data 4
        0x41100000    # 9.0f
        0x42040000    # 33.0f
    .end array-data

    :array_a
    .array-data 4
        0x41880000    # 17.0f
        0x42040000    # 33.0f
    .end array-data

    :array_b
    .array-data 4
        0x41a80000    # 21.0f
        0x41b80000    # 23.0f
    .end array-data

    :array_c
    .array-data 4
        0x41880000    # 17.0f
        0x42040000    # 33.0f
    .end array-data

    :array_d
    .array-data 4
        0x41100000    # 9.0f
        0x42040000    # 33.0f
    .end array-data

    :array_e
    .array-data 4
        0x41c80000    # 25.0f
        0x42040000    # 33.0f
    .end array-data

    :array_f
    .array-data 4
        0x41880000    # 17.0f
        0x42040000    # 33.0f
    .end array-data

    :array_10
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_11
    .array-data 4
        0x41500000    # 13.0f
        0x42040000    # 33.0f
    .end array-data

    :array_12
    .array-data 4
        0x41880000    # 17.0f
        0x42040000    # 33.0f
    .end array-data

    :array_13
    .array-data 4
        0x41a80000    # 21.0f
        0x42040000    # 33.0f
    .end array-data

    :array_14
    .array-data 4
        -0x40800000    # -1.0f
        -0x40800000    # -1.0f
    .end array-data

    :array_15
    .array-data 4
        0x41500000    # 13.0f
        0x42040000    # 33.0f
    .end array-data

    :array_16
    .array-data 4
        0x41880000    # 17.0f
        0x42040000    # 33.0f
    .end array-data

    :array_17
    .array-data 4
        0x41a80000    # 21.0f
        0x42040000    # 33.0f
    .end array-data
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

    invoke-direct {p0}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->makePathInfo()Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method protected modifyPathInfo(Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;F)V
    .locals 13

    const/4 v12, 0x1

    const/4 v11, 0x0

    iget-object v0, p1, Lcom/dragon/android/voiceime/ui/sandglass/PathInfo;->PATH:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    iget-object v9, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_ANCHOR:[[F

    array-length v8, v9

    const/4 v7, 0x0

    :goto_0
    if-ge v7, v8, :cond_1

    if-nez v7, :cond_0

    iget-object v9, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_ANCHOR:[[F

    aget-object v9, v9, v7

    aget v9, v9, v11

    iget-object v10, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_ANCHOR:[[F

    aget-object v10, v10, v7

    aget v10, v10, v11

    invoke-virtual {p0, v9, v10, p2}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->calculate(FFF)F

    move-result v5

    iget-object v9, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_ANCHOR:[[F

    aget-object v9, v9, v7

    aget v9, v9, v12

    iget-object v10, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_ANCHOR:[[F

    aget-object v10, v10, v7

    aget v10, v10, v12

    invoke-virtual {p0, v9, v10, p2}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->calculate(FFF)F

    move-result v6

    invoke-virtual {v0, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    iget-object v9, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_CONTROL1:[[F

    aget-object v9, v9, v7

    aget v9, v9, v11

    iget-object v10, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_CONTROL1:[[F

    aget-object v10, v10, v7

    aget v10, v10, v11

    invoke-virtual {p0, v9, v10, p2}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->calculate(FFF)F

    move-result v1

    iget-object v9, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_CONTROL1:[[F

    aget-object v9, v9, v7

    aget v9, v9, v12

    iget-object v10, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_CONTROL1:[[F

    aget-object v10, v10, v7

    aget v10, v10, v12

    invoke-virtual {p0, v9, v10, p2}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->calculate(FFF)F

    move-result v2

    iget-object v9, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_CONTROL2:[[F

    aget-object v9, v9, v7

    aget v9, v9, v11

    iget-object v10, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_CONTROL2:[[F

    aget-object v10, v10, v7

    aget v10, v10, v11

    invoke-virtual {p0, v9, v10, p2}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->calculate(FFF)F

    move-result v3

    iget-object v9, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_CONTROL2:[[F

    aget-object v9, v9, v7

    aget v9, v9, v12

    iget-object v10, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_CONTROL2:[[F

    aget-object v10, v10, v7

    aget v10, v10, v12

    invoke-virtual {p0, v9, v10, p2}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->calculate(FFF)F

    move-result v4

    iget-object v9, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_ANCHOR:[[F

    aget-object v9, v9, v7

    aget v9, v9, v11

    iget-object v10, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_ANCHOR:[[F

    aget-object v10, v10, v7

    aget v10, v10, v11

    invoke-virtual {p0, v9, v10, p2}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->calculate(FFF)F

    move-result v5

    iget-object v9, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->FROM_ANCHOR:[[F

    aget-object v9, v9, v7

    aget v9, v9, v12

    iget-object v10, p0, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->TO_ANCHOR:[[F

    aget-object v10, v10, v7

    aget v10, v10, v12

    invoke-virtual {p0, v9, v10, p2}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->calculate(FFF)F

    move-result v6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto :goto_1

    :cond_1
    invoke-virtual {p0, v0}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->transform(Landroid/graphics/Path;)V

    return-void
.end method

.method public render(F)V
    .locals 0

    invoke-virtual {p0, p1, p1, p1}, Lcom/dragon/android/voiceime/ui/sandglass/SandLowerView;->render(FFF)V

    return-void
.end method

.method public render(FFF)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/dragon/android/voiceime/ui/sandglass/AbstractView;->render(FFF)V

    goto :goto_0
.end method
