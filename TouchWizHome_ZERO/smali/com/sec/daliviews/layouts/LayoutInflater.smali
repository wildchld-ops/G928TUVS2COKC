.class public Lcom/sec/daliviews/layouts/LayoutInflater;
.super Ljava/lang/Object;
.source "LayoutInflater.java"


# static fields
.field private static mInstance:Lcom/sec/daliviews/layouts/LayoutInflater;

.field private static final sConstructorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lcom/sec/daliviews/layouts/LayoutBase;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutInflater;->mInstance:Lcom/sec/daliviews/layouts/LayoutInflater;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutInflater;->sConstructorSignature:[Ljava/lang/Class;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/daliviews/layouts/LayoutInflater;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createLayout(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/sec/daliviews/layouts/LayoutBase;
    .locals 5
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

    sget-object v2, Lcom/sec/daliviews/layouts/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Constructor;

    const/4 v0, 0x0

    if-nez v1, :cond_0

    iget-object v2, p0, Lcom/sec/daliviews/layouts/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-class v3, Lcom/sec/daliviews/layouts/LayoutBase;

    invoke-virtual {v2, v3}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v0

    sget-object v2, Lcom/sec/daliviews/layouts/LayoutInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    sget-object v2, Lcom/sec/daliviews/layouts/LayoutInflater;->sConstructorMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-eqz v1, :cond_1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/sec/daliviews/layouts/LayoutInflater;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sec/daliviews/layouts/LayoutBase;

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private createLayoutFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/sec/daliviews/layouts/LayoutBase;
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

    const-string v0, "layout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "class"

    invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/layouts/LayoutInflater;->createLayout(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v0

    return-object v0
.end method

.method private inflate(Landroid/content/res/XmlResourceParser;)Lcom/sec/daliviews/layouts/LayoutBase;
    .locals 6
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

    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v4, "LayoutPosition"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No layout is found!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    iget-object v4, p0, Lcom/sec/daliviews/layouts/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4, v0}, Lcom/sec/daliviews/layouts/LayoutBase;->inflateAndAddPosition(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v2, v0}, Lcom/sec/daliviews/layouts/LayoutInflater;->createLayoutFromTag(Ljava/lang/String;Landroid/util/AttributeSet;)Lcom/sec/daliviews/layouts/LayoutBase;

    move-result-object v1

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "No layout is found!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_4
    return-object v1
.end method

.method public static instance(Landroid/content/Context;)Lcom/sec/daliviews/layouts/LayoutInflater;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/layouts/LayoutInflater;->mInstance:Lcom/sec/daliviews/layouts/LayoutInflater;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/layouts/LayoutInflater;

    invoke-direct {v0, p0}, Lcom/sec/daliviews/layouts/LayoutInflater;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutInflater;->mInstance:Lcom/sec/daliviews/layouts/LayoutInflater;

    :cond_0
    sget-object v0, Lcom/sec/daliviews/layouts/LayoutInflater;->mInstance:Lcom/sec/daliviews/layouts/LayoutInflater;

    return-object v0
.end method


# virtual methods
.method public inflate(I)Lcom/sec/daliviews/layouts/LayoutBase;
    .locals 4

    iget-object v2, p0, Lcom/sec/daliviews/layouts/LayoutInflater;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;

    move-result-object v1

    :try_start_0
    invoke-direct {p0, v1}, Lcom/sec/daliviews/layouts/LayoutInflater;->inflate(Landroid/content/res/XmlResourceParser;)Lcom/sec/daliviews/layouts/LayoutBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    return-object v2

    :catch_0
    move-exception v0

    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v2

    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    throw v2
.end method
