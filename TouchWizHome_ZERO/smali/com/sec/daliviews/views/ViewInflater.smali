.class public Lcom/sec/daliviews/views/ViewInflater;
.super Ljava/lang/Object;
.source "ViewInflater.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static mInstance:Lcom/sec/daliviews/views/ViewInflater;

.field private static mInstanceLand:Lcom/sec/daliviews/views/ViewInflater;

.field private static mInstancePort:Lcom/sec/daliviews/views/ViewInflater;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final sCtorLock:Ljava/lang/Object;

.field private final sCtorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lcom/sec/daliviews/views/NativeViewBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private final sCtorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final sViewLock:Ljava/lang/Object;

.field private final sViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/sec/daliviews/views/NativeViewBase;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const-class v0, Lcom/sec/daliviews/views/ViewInflater;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/views/ViewInflater;->TAG:Ljava/lang/String;

    sput-object v1, Lcom/sec/daliviews/views/ViewInflater;->mInstance:Lcom/sec/daliviews/views/ViewInflater;

    sput-object v1, Lcom/sec/daliviews/views/ViewInflater;->mInstancePort:Lcom/sec/daliviews/views/ViewInflater;

    sput-object v1, Lcom/sec/daliviews/views/ViewInflater;->mInstanceLand:Lcom/sec/daliviews/views/ViewInflater;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/ViewInflater;->sCtorLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/ViewInflater;->sViewLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/sec/daliviews/views/ViewInflater;->mContext:Landroid/content/Context;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/sec/daliviews/views/ViewInflater;->sCtorSignature:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/ViewInflater;->sCtorMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/daliviews/views/ViewInflater;->sViewMap:Ljava/util/HashMap;

    return-void
.end method

.method private createView(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v2, 0x0

    iget-object v4, p0, Lcom/sec/daliviews/views/ViewInflater;->sCtorLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-object v3, p0, Lcom/sec/daliviews/views/ViewInflater;->sCtorMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/lang/reflect/Constructor;

    move-object v2, v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x0

    if-nez v2, :cond_0

    iget-object v3, p0, Lcom/sec/daliviews/views/ViewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-class v4, Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v3, v4}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v1

    iget-object v3, p0, Lcom/sec/daliviews/views/ViewInflater;->sCtorSignature:[Ljava/lang/Class;

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    iget-object v4, p0, Lcom/sec/daliviews/views/ViewInflater;->sCtorLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v3, p0, Lcom/sec/daliviews/views/ViewInflater;->sCtorMap:Ljava/util/HashMap;

    invoke-virtual {v3, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_0
    if-eqz v2, :cond_1

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/sec/daliviews/views/ViewInflater;->mContext:Landroid/content/Context;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p2, v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sec/daliviews/views/NativeViewBase;

    :goto_0
    return-object v3

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private createViewFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const-string v0, "view"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ViewInflater;->createView(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method public static destroy()V
    .locals 1

    sget-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstancePort:Lcom/sec/daliviews/views/ViewInflater;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstancePort:Lcom/sec/daliviews/views/ViewInflater;

    invoke-direct {v0}, Lcom/sec/daliviews/views/ViewInflater;->destroyViewInflater()V

    :cond_0
    sget-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstanceLand:Lcom/sec/daliviews/views/ViewInflater;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstanceLand:Lcom/sec/daliviews/views/ViewInflater;

    invoke-direct {v0}, Lcom/sec/daliviews/views/ViewInflater;->destroyViewInflater()V

    :cond_1
    return-void
.end method

.method private destroyViewInflater()V
    .locals 4

    iget-object v3, p0, Lcom/sec/daliviews/views/ViewInflater;->sCtorLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    iget-object v2, p0, Lcom/sec/daliviews/views/ViewInflater;->sCtorMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v3, p0, Lcom/sec/daliviews/views/ViewInflater;->sViewLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_1
    iget-object v2, p0, Lcom/sec/daliviews/views/ViewInflater;->sViewMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sec/daliviews/views/NativeViewBase;

    invoke-virtual {v1}, Lcom/sec/daliviews/views/NativeViewBase;->destroy()V

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v2

    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v2

    :cond_0
    :try_start_3
    iget-object v2, p0, Lcom/sec/daliviews/views/ViewInflater;->sViewMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    return-void
.end method

.method private inflateIncludeNode(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 4

    const/4 v1, 0x0

    const-string v2, "layout"

    const/4 v3, 0x0

    invoke-interface {p2, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    new-instance v1, Landroid/view/InflateException;

    const-string v2, "invalid include tag, usage: <include layout=\"@layout/layout_xml\" />"

    invoke-direct {v1, v2}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    invoke-virtual {p0, v0}, Lcom/sec/daliviews/views/ViewInflater;->inflate(I)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v1

    return-object v1
.end method

.method private inflateNode(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Lcom/sec/daliviews/views/NativeViewBase;I)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v4, ""

    const/4 v5, 0x0

    :cond_0
    :goto_0
    if-nez v5, :cond_8

    const/4 v6, 0x1

    if-eq p4, v6, :cond_8

    packed-switch p4, :pswitch_data_0

    :goto_1
    if-nez v5, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result p4

    goto :goto_0

    :pswitch_0
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    if-eqz v2, :cond_2

    :cond_1
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": unexptected start tag!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_2
    invoke-direct {p0, p1, p2, v3, p4}, Lcom/sec/daliviews/views/ViewInflater;->inflateNode(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Lcom/sec/daliviews/views/NativeViewBase;I)Lcom/sec/daliviews/views/NativeViewBase;

    goto :goto_1

    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v6, "include"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const-string v6, "use_layout"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v1, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/ViewInflater;->inflateIncludeNode(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    :goto_2
    if-eqz p3, :cond_4

    if-eqz v3, :cond_4

    move-object v6, p3

    check-cast v6, Lcom/sec/daliviews/views/ContainerViewBase;

    invoke-virtual {v6, v3}, Lcom/sec/daliviews/views/ContainerViewBase;->addView(Lcom/sec/daliviews/views/NativeViewBase;)V

    :cond_4
    const/4 v0, 0x1

    goto :goto_1

    :cond_5
    if-eqz v2, :cond_6

    invoke-direct {p0, p2, p3}, Lcom/sec/daliviews/views/ViewInflater;->inflateUseLayoutTag(Landroid/util/AttributeSet;Lcom/sec/daliviews/views/NativeViewBase;)V

    goto :goto_2

    :cond_6
    invoke-direct {p0, v4, p2}, Lcom/sec/daliviews/views/ViewInflater;->createViewFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v3

    goto :goto_2

    :pswitch_1
    if-eqz v0, :cond_7

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const/4 v5, 0x1

    goto :goto_1

    :cond_7
    new-instance v6, Landroid/view/InflateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": unexptected end tag!"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_8
    return-object v3

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private inflateUseLayoutTag(Landroid/util/AttributeSet;Lcom/sec/daliviews/views/NativeViewBase;)V
    .locals 5

    const/4 v2, 0x0

    const-string v3, "layout"

    const/4 v4, 0x0

    invoke-interface {p1, v2, v3, v4}, Landroid/util/AttributeSet;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    new-instance v2, Landroid/view/InflateException;

    const-string v3, "invalid use_layout tag, usage: <use_layout layout=\"@layout/LayoutXmlID\" />"

    invoke-direct {v2, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    iget-object v2, p0, Lcom/sec/daliviews/views/ViewInflater;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/sec/daliviews/layouts/LayoutInflater;->instance(Landroid/content/Context;)Lcom/sec/daliviews/layouts/LayoutInflater;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/sec/daliviews/layouts/LayoutInflater;->inflate(I)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    if-eqz v0, :cond_1

    check-cast p2, Lcom/sec/daliviews/views/ContainerViewBase;

    invoke-virtual {p2, v0}, Lcom/sec/daliviews/views/ContainerViewBase;->setLayout(Lcom/sec/daliviews/layouts/LayoutBase;)V

    :cond_1
    return-void
.end method

.method public static instance(Landroid/content/Context;)Lcom/sec/daliviews/views/ViewInflater;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstancePort:Lcom/sec/daliviews/views/ViewInflater;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/views/ViewInflater;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/views/ViewInflater;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstancePort:Lcom/sec/daliviews/views/ViewInflater;

    sget-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstancePort:Lcom/sec/daliviews/views/ViewInflater;

    sput-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstance:Lcom/sec/daliviews/views/ViewInflater;

    :cond_0
    sget-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstanceLand:Lcom/sec/daliviews/views/ViewInflater;

    if-nez v0, :cond_1

    new-instance v0, Lcom/sec/daliviews/views/ViewInflater;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/views/ViewInflater;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstanceLand:Lcom/sec/daliviews/views/ViewInflater;

    :cond_1
    sget-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstance:Lcom/sec/daliviews/views/ViewInflater;

    return-object v0
.end method

.method public static orientationChanged(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    sget-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstancePort:Lcom/sec/daliviews/views/ViewInflater;

    sput-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstance:Lcom/sec/daliviews/views/ViewInflater;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstanceLand:Lcom/sec/daliviews/views/ViewInflater;

    sput-object v0, Lcom/sec/daliviews/views/ViewInflater;->mInstance:Lcom/sec/daliviews/views/ViewInflater;

    goto :goto_0
.end method


# virtual methods
.method public finalize()V
    .locals 1

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Lcom/sec/daliviews/views/ViewInflater;->destroy()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method

.method public inflate(I)Lcom/sec/daliviews/views/NativeViewBase;
    .locals 11

    const/4 v8, 0x0

    const/4 v4, 0x0

    :try_start_0
    sget-object v7, Lcom/sec/daliviews/views/ViewInflater;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "ViewInflater.inflate("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ") > Entering."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v6, 0x0

    iget-object v9, p0, Lcom/sec/daliviews/views/ViewInflater;->sViewLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v7, p0, Lcom/sec/daliviews/views/ViewInflater;->sViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v0, v7

    check-cast v0, Lcom/sec/daliviews/views/NativeViewBase;

    move-object v6, v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_2

    :try_start_2
    sget-object v7, Lcom/sec/daliviews/views/ViewInflater;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewInflater.inflate("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") > Exiting. (cloned)"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v6}, Lcom/sec/daliviews/views/NativeViewBase;->clone()Lcom/sec/daliviews/views/NativeViewBase;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-object v7

    if-eqz v4, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    :goto_0
    return-object v7

    :catchall_0
    move-exception v7

    :try_start_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v7
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catch_0
    move-exception v3

    :try_start_5
    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    if-eqz v7, :cond_9

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Throwable;->printStackTrace()V

    new-instance v7, Landroid/view/InflateException;

    invoke-virtual {v3}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/view/InflateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v7

    if-eqz v4, :cond_1

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_1
    throw v7

    :cond_2
    :try_start_6
    iget-object v7, p0, Lcom/sec/daliviews/views/ViewInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-result-object v4

    if-nez v4, :cond_4

    if-eqz v4, :cond_3

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_3
    move-object v7, v8

    goto :goto_0

    :cond_4
    :try_start_7
    invoke-static {v4}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v5, 0x0

    const/4 v7, 0x0

    invoke-direct {p0, v4, v1, v7, v5}, Lcom/sec/daliviews/views/ViewInflater;->inflateNode(Landroid/content/res/XmlResourceParser;Landroid/util/AttributeSet;Lcom/sec/daliviews/views/NativeViewBase;I)Lcom/sec/daliviews/views/NativeViewBase;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    move-result-object v6

    if-nez v6, :cond_6

    if-eqz v4, :cond_5

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    move-object v7, v8

    goto :goto_0

    :cond_6
    :try_start_8
    invoke-virtual {v6}, Lcom/sec/daliviews/views/NativeViewBase;->isCloneable()Z

    move-result v7

    if-eqz v7, :cond_7

    invoke-virtual {v6}, Lcom/sec/daliviews/views/NativeViewBase;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v2

    iget-object v8, p0, Lcom/sec/daliviews/views/ViewInflater;->sViewLock:Ljava/lang/Object;

    monitor-enter v8
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    iget-object v7, p0, Lcom/sec/daliviews/views/ViewInflater;->sViewMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v8
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :cond_7
    :try_start_a
    sget-object v7, Lcom/sec/daliviews/views/ViewInflater;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ViewInflater.inflate("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ") > Exiting."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    if-eqz v4, :cond_8

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_8
    move-object v7, v6

    goto/16 :goto_0

    :catchall_2
    move-exception v7

    :try_start_b
    monitor-exit v8
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw v7
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    :cond_9
    :try_start_d
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v7, Landroid/view/InflateException;

    invoke-direct {v7, v3}, Landroid/view/InflateException;-><init>(Ljava/lang/Throwable;)V

    throw v7
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
.end method
