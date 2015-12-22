.class public abstract Lmf/org/apache/xml/serialize/SerializerFactory;
.super Ljava/lang/Object;
.source "SerializerFactory.java"


# static fields
.field public static final FactoriesProperty:Ljava/lang/String; = "org.apache.xml.serialize.factories"

.field private static _factories:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    new-instance v5, Ljava/util/Hashtable;

    invoke-direct {v5}, Ljava/util/Hashtable;-><init>()V

    sput-object v5, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    new-instance v2, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    const-string/jumbo v5, "xml"

    invoke-direct {v2, v5}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    new-instance v2, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    const-string/jumbo v5, "html"

    invoke-direct {v2, v5}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    new-instance v2, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    const-string/jumbo v5, "xhtml"

    invoke-direct {v2, v5}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    new-instance v2, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;

    const-string/jumbo v5, "text"

    invoke-direct {v2, v5}, Lmf/org/apache/xml/serialize/SerializerFactoryImpl;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V

    const-string/jumbo v5, "org.apache.xml.serialize.factories"

    invoke-static {v5}, Lmf/org/apache/xml/serialize/SecuritySupport;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    new-instance v4, Ljava/util/StringTokenizer;

    const-string v5, " ;,:"

    invoke-direct {v4, v3, v5}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    return-void

    :cond_2
    invoke-virtual {v4}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    const-class v5, Lmf/org/apache/xml/serialize/SerializerFactory;

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v1, v5, v6}, Lmf/org/apache/xml/serialize/ObjectFactory;->newInstance(Ljava/lang/String;Ljava/lang/ClassLoader;Z)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Lmf/org/apache/xml/serialize/SerializerFactory;

    move-object v2, v0

    sget-object v5, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    sget-object v5, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v2}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v5

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getSerializerFactory(Ljava/lang/String;)Lmf/org/apache/xml/serialize/SerializerFactory;
    .locals 1

    sget-object v0, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xml/serialize/SerializerFactory;

    return-object v0
.end method

.method public static registerSerializerFactory(Lmf/org/apache/xml/serialize/SerializerFactory;)V
    .locals 3

    sget-object v2, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    monitor-enter v2

    :try_start_0
    invoke-virtual {p0}, Lmf/org/apache/xml/serialize/SerializerFactory;->getSupportedMethod()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lmf/org/apache/xml/serialize/SerializerFactory;->_factories:Ljava/util/Hashtable;

    invoke-virtual {v1, v0, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v2

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected abstract getSupportedMethod()Ljava/lang/String;
.end method

.method public abstract makeSerializer(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/UnsupportedEncodingException;
        }
    .end annotation
.end method

.method public abstract makeSerializer(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
.end method

.method public abstract makeSerializer(Lmf/org/apache/xml/serialize/OutputFormat;)Lmf/org/apache/xml/serialize/Serializer;
.end method
