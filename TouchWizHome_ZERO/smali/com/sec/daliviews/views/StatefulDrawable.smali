.class public Lcom/sec/daliviews/views/StatefulDrawable;
.super Ljava/lang/Object;
.source "StatefulDrawable.java"


# static fields
.field private static ALWAYS_ENABLE_RESOURCECONNECTOR:Z = false

.field private static final SCHEMAS:Ljava/lang/String; = "http://schemas.android.com/apk/res/android"

.field private static final gCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static final gStateMap:Landroid/util/SparseIntArray;


# instance fields
.field private mStates:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    sput-boolean v2, Lcom/sec/daliviews/views/StatefulDrawable;->ALWAYS_ENABLE_RESOURCECONNECTOR:Z

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    sput-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x101009d

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x10100a7

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x10100a1

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x101009c

    const/16 v2, 0x8

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x101009e

    const/16 v2, 0x10

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x10102fe

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x101031b

    const/16 v2, 0x40

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x1010367

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x1010368

    const/16 v2, 0x100

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x1010369

    const/16 v2, 0x200

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    const v1, 0x10100a0

    const/16 v2, 0x400

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gCache:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/sec/daliviews/views/StatefulDrawable;->mStates:Ljava/util/HashMap;

    :try_start_0
    invoke-direct {p0, p1, p2}, Lcom/sec/daliviews/views/StatefulDrawable;->parseResource(Landroid/content/Context;I)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private native addState(JILjava/lang/String;)V
.end method

.method private native addStateImage(JILandroid/graphics/Bitmap;)V
.end method

.method private cacheBitmap(Landroid/content/Context;I)V
    .locals 3

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/sec/daliviews/views/StatefulDrawable;->gCache:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p1, p2}, Lcom/sec/daliviews/utils/BitmapUtils;->decode(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method private init(J)V
    .locals 7

    iget-object v5, p0, Lcom/sec/daliviews/views/StatefulDrawable;->mStates:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sget-boolean v5, Lcom/sec/daliviews/views/StatefulDrawable;->ALWAYS_ENABLE_RESOURCECONNECTOR:Z

    if-nez v5, :cond_1

    sget-object v5, Lcom/sec/daliviews/views/StatefulDrawable;->gCache:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, p1, p2, v5, v0}, Lcom/sec/daliviews/views/StatefulDrawable;->addStateImage(JILandroid/graphics/Bitmap;)V

    goto :goto_0

    :cond_1
    invoke-static {v4}, Lcom/sec/daliviews/resource/ResourceConnector;->composeResPath(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-direct {p0, p1, p2, v5, v3}, Lcom/sec/daliviews/views/StatefulDrawable;->addState(JILjava/lang/String;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method private parseNode(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V
    .locals 8

    const/4 v7, -0x1

    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "item"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v3, 0x10

    const/4 v2, -0x1

    const/4 v1, 0x0

    :goto_1
    invoke-interface {p2}, Landroid/content/res/XmlResourceParser;->getAttributeCount()I

    move-result v5

    if-ge v1, v5, :cond_5

    invoke-interface {p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v0

    const-string v5, "drawable"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v5, "http://schemas.android.com/apk/res/android"

    invoke-interface {p2, v5, v0, v7}, Landroid/content/res/XmlResourceParser;->getAttributeResourceValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v2

    :cond_2
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    sget-object v5, Lcom/sec/daliviews/views/StatefulDrawable;->gStateMap:Landroid/util/SparseIntArray;

    invoke-interface {p2, v1}, Landroid/content/res/XmlResourceParser;->getAttributeNameResource(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    const-string v5, "http://schemas.android.com/apk/res/android"

    invoke-interface {p2, v5, v0}, Landroid/content/res/XmlResourceParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_4

    or-int/2addr v3, v4

    goto :goto_2

    :cond_4
    const-string v5, "state_enabled"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    and-int/lit8 v3, v3, -0x11

    goto :goto_2

    :cond_5
    if-eq v2, v7, :cond_0

    iget-object v5, p0, Lcom/sec/daliviews/views/StatefulDrawable;->mStates:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v5, Lcom/sec/daliviews/views/StatefulDrawable;->ALWAYS_ENABLE_RESOURCECONNECTOR:Z

    if-nez v5, :cond_0

    invoke-direct {p0, p1, v2}, Lcom/sec/daliviews/views/StatefulDrawable;->cacheBitmap(Landroid/content/Context;I)V

    goto :goto_0
.end method

.method private parseResource(Landroid/content/Context;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->getEventType()I

    move-result v1

    :goto_0
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/sec/daliviews/views/StatefulDrawable;->parseNode(Landroid/content/Context;Landroid/content/res/XmlResourceParser;)V

    :cond_0
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Lcom/sec/daliviews/views/StatefulDrawable;
    .locals 3

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/StatefulDrawable;

    iget-object v2, p0, Lcom/sec/daliviews/views/StatefulDrawable;->mStates:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    iput-object v2, v0, Lcom/sec/daliviews/views/StatefulDrawable;->mStates:Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    const/4 v2, 0x0

    return-object v2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/CloneNotSupportedException;->printStackTrace()V

    goto :goto_0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/StatefulDrawable;->clone()Lcom/sec/daliviews/views/StatefulDrawable;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method createPeer()J
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/StatefulDrawable;->create()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/StatefulDrawable;->init(J)V

    return-wide v0
.end method
