.class public Lcom/sec/daliviews/animation/PathAnimation;
.super Lcom/sec/daliviews/animation/NativeAnimation;
.source "PathAnimation.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/animation/NativeAnimation;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)V
    .locals 7

    const/4 v6, 0x0

    sget-object v5, Lcom/sec/daliviews/animation/NativeAnimation$Type;->PATH:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    invoke-direct {p0, p1, p2, v5}, Lcom/sec/daliviews/animation/NativeAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/daliviews/animation/NativeAnimation$Type;)V

    sget-object v5, Lcom/sec/daliviews/R$styleable;->PathAnimation:[I

    invoke-virtual {p1, p2, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    sget v5, Lcom/sec/daliviews/R$styleable;->PathAnimation_forwardX:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    sget v5, Lcom/sec/daliviews/R$styleable;->PathAnimation_forwardY:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    sget v5, Lcom/sec/daliviews/R$styleable;->PathAnimation_forwardZ:I

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    sget v5, Lcom/sec/daliviews/R$styleable;->PathAnimation_relative:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/sec/daliviews/animation/PathAnimation;->setPathAttributes(FFFZ)V

    invoke-direct {p0, p1, p3}, Lcom/sec/daliviews/animation/PathAnimation;->loadPath(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method private native addControlPoint(JFFF)V
.end method

.method private native addPoint(JFFF)V
.end method

.method private loadPath(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 7

    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    :goto_0
    const/4 v5, 0x1

    if-eq v2, v5, :cond_1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    sget-object v5, Lcom/sec/daliviews/R$styleable;->PathAnimation:[I

    invoke-virtual {p1, v0, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v3

    invoke-direct {p0, v3, v4}, Lcom/sec/daliviews/animation/PathAnimation;->loadPoint(Landroid/content/res/TypedArray;Ljava/lang/String;)V

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v5, Landroid/view/InflateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_1
    :try_start_1
    const-string v5, "path"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v5

    if-eqz v5, :cond_0

    :cond_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private loadPoint(Landroid/content/res/TypedArray;Ljava/lang/String;)V
    .locals 7

    const/4 v1, 0x0

    sget v0, Lcom/sec/daliviews/R$styleable;->PathAnimation_posX:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    sget v0, Lcom/sec/daliviews/R$styleable;->PathAnimation_posY:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    sget v0, Lcom/sec/daliviews/R$styleable;->PathAnimation_posZ:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v6

    const-string v0, "controlPoint"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/PathAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/animation/PathAnimation;->addControlPoint(JFFF)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v0, "point"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/PathAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/sec/daliviews/animation/PathAnimation;->addPoint(JFFF)V

    goto :goto_0
.end method

.method private setPathAttributes(FFFZ)V
    .locals 8

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/PathAnimation;->getPeer()J

    move-result-wide v2

    move-object v1, p0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    invoke-direct/range {v1 .. v7}, Lcom/sec/daliviews/animation/PathAnimation;->setPathAttributes(JFFFZ)V

    return-void
.end method

.method private native setPathAttributes(JFFFZ)V
.end method


# virtual methods
.method protected native create()J
.end method
