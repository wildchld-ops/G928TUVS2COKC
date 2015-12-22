.class public Lcom/sec/daliviews/effects/EffectLoader;
.super Ljava/lang/Object;
.source "EffectLoader.java"


# static fields
.field private static mInstance:Lcom/sec/daliviews/effects/EffectLoader;

.field private static final sCtorLock:Ljava/lang/Object;

.field private static final sCtorMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Lcom/sec/daliviews/effects/NativeEffect;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sCtorSignature:[Ljava/lang/Class;
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

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    const-class v2, Landroid/content/Context;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-class v2, Landroid/util/AttributeSet;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/daliviews/effects/EffectLoader;->sCtorSignature:[Ljava/lang/Class;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sec/daliviews/effects/EffectLoader;->sCtorLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sec/daliviews/effects/EffectLoader;->sCtorMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    sput-object v0, Lcom/sec/daliviews/effects/EffectLoader;->mInstance:Lcom/sec/daliviews/effects/EffectLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destroy()V
    .locals 2

    sget-object v1, Lcom/sec/daliviews/effects/EffectLoader;->sCtorLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/sec/daliviews/effects/EffectLoader;->sCtorMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static instance()Lcom/sec/daliviews/effects/EffectLoader;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/effects/EffectLoader;->mInstance:Lcom/sec/daliviews/effects/EffectLoader;

    if-nez v0, :cond_0

    new-instance v0, Lcom/sec/daliviews/effects/EffectLoader;

    invoke-direct {v0}, Lcom/sec/daliviews/effects/EffectLoader;-><init>()V

    sput-object v0, Lcom/sec/daliviews/effects/EffectLoader;->mInstance:Lcom/sec/daliviews/effects/EffectLoader;

    :cond_0
    sget-object v0, Lcom/sec/daliviews/effects/EffectLoader;->mInstance:Lcom/sec/daliviews/effects/EffectLoader;

    return-object v0
.end method

.method public static loadEffect(Landroid/content/Context;I)Lcom/sec/daliviews/effects/NativeEffect;
    .locals 15

    const/4 v11, 0x0

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    move/from16 v0, p1

    invoke-virtual {v10, v0}, Landroid/content/res/Resources;->getLayout(I)Landroid/content/res/XmlResourceParser;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-result-object v6

    if-nez v6, :cond_2

    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_0
    move-object v10, v11

    :cond_1
    :goto_0
    return-object v10

    :cond_2
    :try_start_1
    invoke-static {v6}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    const/4 v9, 0x0

    const/4 v8, 0x0

    :cond_3
    :goto_1
    if-nez v8, :cond_8

    if-eq v9, v13, :cond_8

    if-ne v9, v14, :cond_7

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v3, 0x0

    sget-object v12, Lcom/sec/daliviews/effects/EffectLoader;->sCtorLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    sget-object v10, Lcom/sec/daliviews/effects/EffectLoader;->sCtorMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v0, v10

    check-cast v0, Ljava/lang/reflect/Constructor;

    move-object v3, v0

    monitor-exit v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v2, 0x0

    if-nez v3, :cond_4

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v10

    const-class v12, Lcom/sec/daliviews/effects/NativeEffect;

    invoke-virtual {v10, v12}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v2

    sget-object v10, Lcom/sec/daliviews/effects/EffectLoader;->sCtorSignature:[Ljava/lang/Class;

    invoke-virtual {v2, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    sget-object v12, Lcom/sec/daliviews/effects/EffectLoader;->sCtorLock:Ljava/lang/Object;

    monitor-enter v12
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v10, Lcom/sec/daliviews/effects/EffectLoader;->sCtorMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    if-eqz v3, :cond_7

    const/4 v10, 0x2

    :try_start_5
    new-array v10, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v10, v12

    const/4 v12, 0x1

    aput-object v1, v10, v12

    invoke-virtual {v3, v10}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/sec/daliviews/effects/NativeEffect;
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v6, :cond_1

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_0

    :catchall_0
    move-exception v10

    :try_start_6
    monitor-exit v12
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v10
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_0
    move-exception v4

    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    :goto_2
    move-object v10, v11

    goto :goto_0

    :catchall_1
    move-exception v10

    :try_start_9
    monitor-exit v12
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :try_start_a
    throw v10
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v10

    if-eqz v6, :cond_6

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw v10

    :cond_7
    if-nez v8, :cond_3

    :try_start_b
    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->next()I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    move-result v9

    goto :goto_1

    :cond_8
    if-eqz v6, :cond_5

    invoke-interface {v6}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_2
.end method
