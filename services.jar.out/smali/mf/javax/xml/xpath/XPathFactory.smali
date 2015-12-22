.class public abstract Lmf/javax/xml/xpath/XPathFactory;
.super Ljava/lang/Object;
.source "XPathFactory.java"


# static fields
.field public static final DEFAULT_OBJECT_MODEL_URI:Ljava/lang/String; = "http://java.sun.com/jaxp/xpath/dom"

.field public static final DEFAULT_PROPERTY_NAME:Ljava/lang/String; = "javax.xml.xpath.XPathFactory"

.field private static ss:Lmf/javax/xml/xpath/SecuritySupport;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/javax/xml/xpath/SecuritySupport;

    invoke-direct {v0}, Lmf/javax/xml/xpath/SecuritySupport;-><init>()V

    sput-object v0, Lmf/javax/xml/xpath/XPathFactory;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final newInstance()Lmf/javax/xml/xpath/XPathFactory;
    .locals 4

    :try_start_0
    const-string/jumbo v1, "http://java.sun.com/jaxp/xpath/dom"

    invoke-static {v1}, Lmf/javax/xml/xpath/XPathFactory;->newInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    :try_end_0
    .catch Lmf/javax/xml/xpath/XPathFactoryConfigurationException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "XPathFactory#newInstance() failed to create an XPathFactory for the default object model: http://java.sun.com/jaxp/xpath/dom with the XPathFactoryConfigurationException: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final newInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "XPathFactory#newInstance(String uri) cannot be called with uri == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    sget-object v2, Lmf/javax/xml/xpath/XPathFactory;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v2}, Lmf/javax/xml/xpath/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    if-nez v0, :cond_2

    const-class v2, Lmf/javax/xml/xpath/XPathFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_2
    new-instance v2, Lmf/javax/xml/xpath/XPathFactoryFinder;

    invoke-direct {v2, v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, p0}, Lmf/javax/xml/xpath/XPathFactoryFinder;->newFactory(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v2, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No XPathFactory implementation found for the object model: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    return-object v1
.end method

.method public static newInstance(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)Lmf/javax/xml/xpath/XPathFactory;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation

    move-object v0, p2

    if-nez p0, :cond_0

    new-instance v2, Ljava/lang/NullPointerException;

    const-string v3, "XPathFactory#newInstance(String uri) cannot be called with uri == null"

    invoke-direct {v2, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "XPathFactory#newInstance(String uri) cannot be called with uri == \"\""

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    if-nez v0, :cond_2

    sget-object v2, Lmf/javax/xml/xpath/XPathFactory;->ss:Lmf/javax/xml/xpath/SecuritySupport;

    invoke-virtual {v2}, Lmf/javax/xml/xpath/SecuritySupport;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    :cond_2
    new-instance v2, Lmf/javax/xml/xpath/XPathFactoryFinder;

    invoke-direct {v2, v0}, Lmf/javax/xml/xpath/XPathFactoryFinder;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v2, p1}, Lmf/javax/xml/xpath/XPathFactoryFinder;->createInstance(Ljava/lang/String;)Lmf/javax/xml/xpath/XPathFactory;

    move-result-object v1

    if-nez v1, :cond_3

    new-instance v2, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "No XPathFactory implementation found for the object model: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_3
    invoke-virtual {v1, p0}, Lmf/javax/xml/xpath/XPathFactory;->isObjectModelSupported(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    return-object v1

    :cond_4
    new-instance v2, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Factory "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " doesn\'t support given "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " object model"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lmf/javax/xml/xpath/XPathFactoryConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public abstract getFeature(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract isObjectModelSupported(Ljava/lang/String;)Z
.end method

.method public abstract newXPath()Lmf/javax/xml/xpath/XPath;
.end method

.method public abstract setFeature(Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/xpath/XPathFactoryConfigurationException;
        }
    .end annotation
.end method

.method public abstract setXPathFunctionResolver(Lmf/javax/xml/xpath/XPathFunctionResolver;)V
.end method

.method public abstract setXPathVariableResolver(Lmf/javax/xml/xpath/XPathVariableResolver;)V
.end method
