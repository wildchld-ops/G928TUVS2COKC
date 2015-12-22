.class public Lcom/sec/daliviews/animation/AnimationUtils;
.super Ljava/lang/Object;
.source "AnimationUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadAnimation(Landroid/content/Context;I)Lcom/sec/daliviews/animation/NativeAnimation;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/view/InflateException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    const/4 v5, 0x0

    :try_start_0
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    :goto_0
    const/4 v7, 0x1

    if-eq v3, v7, :cond_1

    packed-switch v3, :pswitch_data_0

    :goto_1
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    goto :goto_0

    :pswitch_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "set"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {p0, v1, v4}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimationSet(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/sec/daliviews/animation/AnimationSet;

    move-result-object v0

    move-object v5, v0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v3

    goto :goto_1

    :cond_0
    invoke-static {p0, v1, v4}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v5

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    goto :goto_1

    :cond_1
    if-eqz v4, :cond_2

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_2
    return-object v5

    :catch_0
    move-exception v2

    :try_start_1
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v7, Landroid/view/InflateException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    throw v7

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method private static loadAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/sec/daliviews/animation/NativeAnimation;
    .locals 2

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "translate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/sec/daliviews/animation/TranslateAnimation;

    invoke-direct {v1, p0, p1}, Lcom/sec/daliviews/animation/TranslateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    :goto_0
    return-object v1

    :cond_0
    const-string v1, "scale"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Lcom/sec/daliviews/animation/ScaleAnimation;

    invoke-direct {v1, p0, p1}, Lcom/sec/daliviews/animation/ScaleAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_1
    const-string v1, "rotate"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/sec/daliviews/animation/RotateAnimation;

    invoke-direct {v1, p0, p1}, Lcom/sec/daliviews/animation/RotateAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_2
    const-string v1, "alpha"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/sec/daliviews/animation/AlphaAnimation;

    invoke-direct {v1, p0, p1}, Lcom/sec/daliviews/animation/AlphaAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_3
    const-string v1, "color"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    new-instance v1, Lcom/sec/daliviews/animation/ColorAnimation;

    invoke-direct {v1, p0, p1}, Lcom/sec/daliviews/animation/ColorAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_4
    const-string v1, "image-set"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    new-instance v1, Lcom/sec/daliviews/animation/ImageSetAnimation;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/daliviews/animation/ImageSetAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_5
    const-string v1, "path"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    new-instance v1, Lcom/sec/daliviews/animation/PathAnimation;

    invoke-direct {v1, p0, p1, p2}, Lcom/sec/daliviews/animation/PathAnimation;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)V

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static loadAnimationSet(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/sec/daliviews/animation/AnimationSet;
    .locals 9

    new-instance v1, Lcom/sec/daliviews/animation/AnimationSet;

    sget-object v7, Lcom/sec/daliviews/animation/NativeAnimation$Type;->SET:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    invoke-direct {v1, p0, p1, v7}, Lcom/sec/daliviews/animation/AnimationSet;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/sec/daliviews/animation/NativeAnimation$Type;)V

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    :try_start_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    const/4 v2, 0x0

    :goto_1
    const/4 v7, 0x1

    if-eq v4, v7, :cond_6

    if-nez v2, :cond_6

    packed-switch v4, :pswitch_data_0

    :cond_2
    :goto_2
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v4

    goto :goto_1

    :pswitch_0
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "set"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static {p0, p1, p2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimationSet(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/sec/daliviews/animation/AnimationSet;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-virtual {v1, v5}, Lcom/sec/daliviews/animation/AnimationSet;->addAnimation(Lcom/sec/daliviews/animation/NativeAnimation;)V

    :cond_3
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v4

    :goto_3
    :pswitch_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "set"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    invoke-static {p0, p1, p2}, Lcom/sec/daliviews/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/content/res/XmlResourceParser;)Lcom/sec/daliviews/animation/NativeAnimation;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v1, v0}, Lcom/sec/daliviews/animation/AnimationSet;->addAnimation(Lcom/sec/daliviews/animation/NativeAnimation;)V

    :cond_5
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getEventType()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    goto :goto_3

    :cond_6
    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v7, Landroid/view/InflateException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v7

    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_7
    throw v7

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
