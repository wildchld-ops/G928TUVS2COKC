.class public Lcom/sec/daliviews/animation/TranslateAnimation;
.super Lcom/sec/daliviews/animation/NativeAnimation;
.source "TranslateAnimation.java"


# instance fields
.field private mFromXDeltaIsPercentage:Ljava/lang/Boolean;

.field private mFromXDeltaIsRelativeToParent:Ljava/lang/Boolean;

.field private mFromYDeltaIsPercentage:Ljava/lang/Boolean;

.field private mFromYDeltaIsRelativeToParent:Ljava/lang/Boolean;

.field private mFromZDeltaIsPercentage:Ljava/lang/Boolean;

.field private mFromZDeltaIsRelativeToParent:Ljava/lang/Boolean;

.field private mToXDeltaIsPercentage:Ljava/lang/Boolean;

.field private mToXDeltaIsRelativeToParent:Ljava/lang/Boolean;

.field private mToYDeltaIsPercentage:Ljava/lang/Boolean;

.field private mToYDeltaIsRelativeToParent:Ljava/lang/Boolean;

.field private mToZDeltaIsPercentage:Ljava/lang/Boolean;

.field private mToZDeltaIsRelativeToParent:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/animation/NativeAnimation;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    sget-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->TRANSLATE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/daliviews/animation/NativeAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/daliviews/animation/NativeAnimation$Type;)V

    sget-object v0, Lcom/sec/daliviews/R$styleable;->TranslateAnimation:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v7

    sget v0, Lcom/sec/daliviews/R$styleable;->TranslateAnimation_android_fromXDelta:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mFromXDeltaIsPercentage:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mFromXDeltaIsRelativeToParent:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v8, v9}, Lcom/sec/daliviews/animation/TranslateAnimation;->ParsePercentage(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)F

    move-result v1

    sget v0, Lcom/sec/daliviews/R$styleable;->TranslateAnimation_android_toXDelta:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mToXDeltaIsPercentage:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mToXDeltaIsRelativeToParent:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v8, v9}, Lcom/sec/daliviews/animation/TranslateAnimation;->ParsePercentage(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)F

    move-result v2

    sget v0, Lcom/sec/daliviews/R$styleable;->TranslateAnimation_android_fromYDelta:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mFromYDeltaIsPercentage:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mFromYDeltaIsRelativeToParent:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v8, v9}, Lcom/sec/daliviews/animation/TranslateAnimation;->ParsePercentage(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)F

    move-result v3

    sget v0, Lcom/sec/daliviews/R$styleable;->TranslateAnimation_android_toYDelta:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mToYDeltaIsPercentage:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mToYDeltaIsRelativeToParent:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v8, v9}, Lcom/sec/daliviews/animation/TranslateAnimation;->ParsePercentage(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)F

    move-result v4

    sget v0, Lcom/sec/daliviews/R$styleable;->TranslateAnimation_fromZDelta:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mFromZDeltaIsPercentage:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mFromZDeltaIsRelativeToParent:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v8, v9}, Lcom/sec/daliviews/animation/TranslateAnimation;->ParsePercentage(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)F

    move-result v5

    sget v0, Lcom/sec/daliviews/R$styleable;->TranslateAnimation_toZDelta:I

    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v8, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mToZDeltaIsPercentage:Ljava/lang/Boolean;

    iget-object v9, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mToZDeltaIsRelativeToParent:Ljava/lang/Boolean;

    invoke-direct {p0, v0, v8, v9}, Lcom/sec/daliviews/animation/TranslateAnimation;->ParsePercentage(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)F

    move-result v6

    iget-boolean v0, p0, Lcom/sec/daliviews/animation/TranslateAnimation;->mAnimateTo:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2, v4, v6}, Lcom/sec/daliviews/animation/TranslateAnimation;->setTranslateTo(FFF)V

    :goto_0
    return-void

    :cond_0
    move-object v0, p0

    invoke-virtual/range {v0 .. v6}, Lcom/sec/daliviews/animation/TranslateAnimation;->setTranslate(FFFFFF)V

    goto :goto_0
.end method

.method private ParsePercentage(Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;)F
    .locals 3

    const/4 v2, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "%"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    const-string v0, "%"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_1
    const-string v0, "p"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    const-string v0, "p"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    :cond_2
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v0

    goto :goto_0
.end method

.method private native setTranslate(JFFFFFF)V
.end method

.method private native setTranslateTo(JFFF)V
.end method


# virtual methods
.method protected native create()J
.end method

.method public setTranslate(FFFFFF)V
    .locals 10

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/TranslateAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    move v8, p5

    move/from16 v9, p6

    invoke-direct/range {v1 .. v9}, Lcom/sec/daliviews/animation/TranslateAnimation;->setTranslate(JFFFFFF)V

    return-void
.end method

.method public setTranslateTo(FFF)V
    .locals 7

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/TranslateAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/animation/TranslateAnimation;->setTranslateTo(JFFF)V

    return-void
.end method
