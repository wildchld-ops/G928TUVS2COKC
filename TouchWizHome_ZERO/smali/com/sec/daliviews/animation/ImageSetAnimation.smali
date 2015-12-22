.class public Lcom/sec/daliviews/animation/ImageSetAnimation;
.super Lcom/sec/daliviews/animation/NativeAnimation;
.source "ImageSetAnimation.java"


# instance fields
.field private mDefImageDuration:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)V
    .locals 3

    sget-object v1, Lcom/sec/daliviews/animation/NativeAnimation$Type;->IMAGE_SET:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    invoke-direct {p0, p1, p2, v1}, Lcom/sec/daliviews/animation/NativeAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/daliviews/animation/NativeAnimation$Type;)V

    sget-object v1, Lcom/sec/daliviews/R$styleable;->ImageAnimation:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/sec/daliviews/R$styleable;->ImageAnimation_imageSrc:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    sget v1, Lcom/sec/daliviews/R$styleable;->ImageAnimation_imageDuration:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    iput v1, p0, Lcom/sec/daliviews/animation/ImageSetAnimation;->mDefImageDuration:F

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/daliviews/animation/ImageSetAnimation;->loadImages(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)V

    return-void
.end method

.method private native addImage(JLjava/lang/String;F)V
.end method

.method private loadImages(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)V
    .locals 10

    :try_start_0
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    :goto_0
    const/4 v7, 0x1

    if-eq v2, v7, :cond_2

    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_1
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v2

    goto :goto_0

    :pswitch_0
    const-string v7, "image"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    sget-object v7, Lcom/sec/daliviews/R$styleable;->ImageAnimation:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v7, Lcom/sec/daliviews/R$styleable;->ImageAnimation_imageSrc:I

    invoke-virtual {v5, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const-string v8, "drawable"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v3, v8, v9}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v4}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v3

    sget-object v7, Lcom/sec/daliviews/R$styleable;->Animation:[I

    invoke-virtual {p1, p2, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v7, Lcom/sec/daliviews/R$styleable;->Animation_android_duration:I

    iget v8, p0, Lcom/sec/daliviews/animation/ImageSetAnimation;->mDefImageDuration:F

    invoke-virtual {v5, v7, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    invoke-virtual {p0, v3, v0}, Lcom/sec/daliviews/animation/ImageSetAnimation;->addImage(Ljava/lang/String;F)V

    :cond_1
    invoke-interface {p3}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v7, Landroid/view/InflateException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7

    :pswitch_1
    :try_start_1
    const-string v7, "image-set"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    if-eqz v7, :cond_0

    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addImage(Ljava/lang/String;F)V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/animation/ImageSetAnimation;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/sec/daliviews/animation/ImageSetAnimation;->addImage(JLjava/lang/String;F)V

    return-void
.end method

.method protected native create()J
.end method
