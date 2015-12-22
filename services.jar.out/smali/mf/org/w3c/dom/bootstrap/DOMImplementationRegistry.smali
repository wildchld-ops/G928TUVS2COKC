.class public final Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;
.super Ljava/lang/Object;
.source "DOMImplementationRegistry.java"


# static fields
.field private static final DEFAULT_DOM_IMPLEMENTATION_SOURCE:Ljava/lang/String; = "mf.org.apache.xerces.dom.DOMXSImplementationSourceImpl"

.field private static final DEFAULT_LINE_LENGTH:I = 0x50

.field public static final PROPERTY:Ljava/lang/String; = "org.w3c.dom.DOMImplementationSourceList"


# instance fields
.field private sources:Ljava/util/Vector;


# direct methods
.method private constructor <init>(Ljava/util/Vector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    return-void
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    :try_start_0
    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getContextClassLoader()Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    const-class v2, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-class v2, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    goto :goto_0
.end method

.method private static getContextClassLoader()Ljava/lang/ClassLoader;
    .locals 1

    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->isJRE11()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$2;

    invoke-direct {v0}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$2;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    goto :goto_0
.end method

.method private static getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2

    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->isJRE11()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p0, :cond_0

    invoke-static {p1}, Ljava/lang/ClassLoader;->getSystemResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v1, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;

    invoke-direct {v1, p0, p1}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$4;-><init>(Ljava/lang/ClassLoader;Ljava/lang/String;)V

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;

    move-object v0, v1

    goto :goto_0
.end method

.method private static getServiceValue(Ljava/lang/ClassLoader;)Ljava/lang/String;
    .locals 9

    const/4 v6, 0x0

    const-string v4, "META-INF/services/org.w3c.dom.DOMImplementationSourceList"

    :try_start_0
    invoke-static {p0, v4}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getResourceAsStream(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    const-string v8, "UTF-8"

    invoke-direct {v7, v2, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    const/16 v8, 0x50

    invoke-direct {v3, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    const/4 v5, 0x0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_0

    :goto_1
    return-object v5

    :catch_0
    move-exception v0

    new-instance v3, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v8, 0x50

    invoke-direct {v3, v7, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    goto :goto_0

    :catchall_0
    move-exception v7

    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V

    throw v7
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    :catch_1
    move-exception v1

    move-object v5, v6

    goto :goto_1

    :cond_0
    move-object v5, v6

    goto :goto_1
.end method

.method private static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->isJRE11()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$3;

    invoke-direct {v0, p0}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$3;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0
.end method

.method private static isJRE11()Z
    .locals 2

    :try_start_0
    const-string/jumbo v1, "java.security.AccessController"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    return v1

    :catch_0
    move-exception v1

    const/4 v1, 0x1

    goto :goto_0
.end method

.method public static newInstance()Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/ClassCastException;
        }
    .end annotation

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    invoke-static {}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string/jumbo v7, "org.w3c.dom.DOMImplementationSourceList"

    invoke-static {v7}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_1

    :cond_0
    invoke-static {v0}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->getServiceValue(Ljava/lang/ClassLoader;)Ljava/lang/String;

    move-result-object v1

    :cond_1
    if-nez v1, :cond_2

    const-string/jumbo v1, "mf.org.apache.xerces.dom.DOMXSImplementationSourceImpl"

    :cond_2
    if-eqz v1, :cond_3

    new-instance v6, Ljava/util/StringTokenizer;

    invoke-direct {v6, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v7

    if-nez v7, :cond_4

    :cond_3
    new-instance v7, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;

    invoke-direct {v7, v5}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;-><init>(Ljava/util/Vector;)V

    return-object v7

    :cond_4
    invoke-virtual {v6}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v4

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    invoke-virtual {v0, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    :goto_1
    invoke-virtual {v3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/w3c/dom/DOMImplementationSource;

    invoke-virtual {v5, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    goto :goto_1
.end method


# virtual methods
.method public addSource(Lmf/org/w3c/dom/DOMImplementationSource;)V
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;
    .locals 6

    iget-object v5, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    return-object v1

    :cond_1
    iget-object v5, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v5, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lmf/org/w3c/dom/DOMImplementationSource;

    invoke-interface {v4, p1}, Lmf/org/w3c/dom/DOMImplementationSource;->getDOMImplementation(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;
    .locals 8

    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    iget-object v7, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    new-instance v7, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;

    invoke-direct {v7, p0, v2}, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry$1;-><init>(Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;Ljava/util/Vector;)V

    return-object v7

    :cond_0
    iget-object v7, p0, Lmf/org/w3c/dom/bootstrap/DOMImplementationRegistry;->sources:Ljava/util/Vector;

    invoke-virtual {v7, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/w3c/dom/DOMImplementationSource;

    invoke-interface {v6, p1}, Lmf/org/w3c/dom/DOMImplementationSource;->getDOMImplementationList(Ljava/lang/String;)Lmf/org/w3c/dom/DOMImplementationList;

    move-result-object v3

    const/4 v4, 0x0

    :goto_1
    invoke-interface {v3}, Lmf/org/w3c/dom/DOMImplementationList;->getLength()I

    move-result v7

    if-lt v4, v7, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v3, v4}, Lmf/org/w3c/dom/DOMImplementationList;->item(I)Lmf/org/w3c/dom/DOMImplementation;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
