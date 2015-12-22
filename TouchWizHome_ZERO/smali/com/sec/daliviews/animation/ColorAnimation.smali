.class public Lcom/sec/daliviews/animation/ColorAnimation;
.super Lcom/sec/daliviews/animation/NativeAnimation;
.source "ColorAnimation.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v3, Lcom/sec/daliviews/animation/NativeAnimation$Type;->COLOR:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    invoke-direct {p0, p1, p2, v3}, Lcom/sec/daliviews/animation/NativeAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/daliviews/animation/NativeAnimation$Type;)V

    sget-object v3, Lcom/sec/daliviews/R$styleable;->ColorAnimation:[I

    invoke-virtual {p1, p2, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    sget v3, Lcom/sec/daliviews/R$styleable;->ColorAnimation_fromColor:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    sget v3, Lcom/sec/daliviews/R$styleable;->ColorAnimation_toColor:I

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    iget-boolean v3, p0, Lcom/sec/daliviews/animation/ColorAnimation;->mAnimateTo:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0, v2}, Lcom/sec/daliviews/animation/ColorAnimation;->setColorTo(I)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, v0, v2}, Lcom/sec/daliviews/animation/ColorAnimation;->setColor(II)V

    goto :goto_0
.end method

.method private native setColor(JII)V
.end method

.method private native setColorTo(JI)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public setColor(II)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/ColorAnimation;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/animation/ColorAnimation;->setColor(JII)V

    return-void
.end method

.method public setColorTo(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/ColorAnimation;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lcom/sec/daliviews/animation/ColorAnimation;->setColorTo(JI)V

    return-void
.end method
