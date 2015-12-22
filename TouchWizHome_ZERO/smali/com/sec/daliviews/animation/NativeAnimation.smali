.class public abstract Lcom/sec/daliviews/animation/NativeAnimation;
.super Lcom/sec/daliviews/views/PeerBase;
.source "NativeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/daliviews/animation/NativeAnimation$Type;,
        Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;
    }
.end annotation


# static fields
.field protected static INVALID_F:F = 0.0f

.field public static final PIVOT_X:I = 0x1

.field public static final PIVOT_Y:I = 0x2

.field public static final PIVOT_Z:I = 0x4


# instance fields
.field protected mAnimateTo:Z

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/high16 v0, -0x800000    # Float.NEGATIVE_INFINITY

    sput v0, Lcom/sec/daliviews/animation/NativeAnimation;->INVALID_F:F

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/animation/NativeAnimation;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/daliviews/animation/NativeAnimation$Type;)V
    .locals 16

    invoke-direct/range {p0 .. p0}, Lcom/sec/daliviews/views/PeerBase;-><init>()V

    sget-object v3, Lcom/sec/daliviews/R$styleable;->Animation:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/sec/daliviews/R$styleable;->Animation_android_duration:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v6

    sget v3, Lcom/sec/daliviews/R$styleable;->Animation_android_startOffset:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v7

    sget v3, Lcom/sec/daliviews/R$styleable;->Animation_android_repeatCount:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v8

    sget v3, Lcom/sec/daliviews/R$styleable;->Animation_revertPivot:I

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v14

    sget v3, Lcom/sec/daliviews/R$styleable;->Animation_animateTo:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/sec/daliviews/animation/NativeAnimation;->mAnimateTo:Z

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/animation/NativeAnimation;->getPeer()J

    move-result-wide v4

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/daliviews/animation/NativeAnimation;->setPlayback(JIII)V

    sget-object v3, Lcom/sec/daliviews/R$styleable;->Animation:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v15

    const/4 v13, 0x0

    sget v3, Lcom/sec/daliviews/R$styleable;->Animation_android_pivotX:I

    sget v4, Lcom/sec/daliviews/animation/NativeAnimation;->INVALID_F:F

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v10

    sget v3, Lcom/sec/daliviews/animation/NativeAnimation;->INVALID_F:F

    cmpl-float v3, v10, v3

    if-eqz v3, :cond_0

    or-int/lit8 v13, v13, 0x1

    :cond_0
    sget v3, Lcom/sec/daliviews/R$styleable;->Animation_android_pivotY:I

    sget v4, Lcom/sec/daliviews/animation/NativeAnimation;->INVALID_F:F

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v11

    sget v3, Lcom/sec/daliviews/animation/NativeAnimation;->INVALID_F:F

    cmpl-float v3, v11, v3

    if-eqz v3, :cond_1

    or-int/lit8 v13, v13, 0x2

    :cond_1
    sget v3, Lcom/sec/daliviews/R$styleable;->Animation_pivotZ:I

    sget v4, Lcom/sec/daliviews/animation/NativeAnimation;->INVALID_F:F

    invoke-virtual {v15, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v12

    sget v3, Lcom/sec/daliviews/animation/NativeAnimation;->INVALID_F:F

    cmpl-float v3, v12, v3

    if-eqz v3, :cond_2

    or-int/lit8 v13, v13, 0x4

    :cond_2
    if-eqz v13, :cond_3

    move-object/from16 v9, p0

    invoke-virtual/range {v9 .. v14}, Lcom/sec/daliviews/animation/NativeAnimation;->setPivot(FFFIZ)V

    :cond_3
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/sec/daliviews/animation/NativeAnimation;->mListeners:Ljava/util/ArrayList;

    return-void
.end method

.method private native reset(J)V
.end method

.method private native revertPivot(J)V
.end method

.method private native setPivot(JFFFIZ)V
.end method

.method private native setPlayback(JIII)V
.end method

.method private native start(JJ)V
.end method

.method private native stop(J)V
.end method


# virtual methods
.method protected OnAnimationFinished()V
    .locals 3

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/NativeAnimation;->isValidPeer()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/sec/daliviews/animation/NativeAnimation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/sec/daliviews/animation/NativeAnimation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;

    invoke-interface {v1, p0}, Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;->onAnimationFinished(Lcom/sec/daliviews/animation/NativeAnimation;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "NativeAnimation"

    const-string v2, "OnAnimationFinished() isValidPeer() is false"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public addListener(Lcom/sec/daliviews/animation/NativeAnimation$AnimationListener;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/daliviews/animation/NativeAnimation;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/NativeAnimation;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->reset(J)V

    return-void
.end method

.method public revertPivot()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/NativeAnimation;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->revertPivot(J)V

    return-void
.end method

.method public setPivot(FFF)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/NativeAnimation;->getPeer()J

    move-result-wide v2

    const/4 v7, 0x7

    const/4 v8, 0x1

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/animation/NativeAnimation;->setPivot(JFFFIZ)V

    return-void
.end method

.method public setPivot(FFFIZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/NativeAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/daliviews/animation/NativeAnimation;->setPivot(JFFFIZ)V

    return-void
.end method

.method public setPlayback(III)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/NativeAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/animation/NativeAnimation;->setPlayback(JIII)V

    return-void
.end method

.method public start(Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 4

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/NativeAnimation;->getPeer()J

    move-result-wide v0

    invoke-virtual {p1}, Lcom/sec/daliviews/views/NativeViewBase;->getPeer()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/animation/NativeAnimation;->start(JJ)V

    return-void
.end method

.method public stop()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/NativeAnimation;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/animation/NativeAnimation;->stop(J)V

    return-void
.end method
