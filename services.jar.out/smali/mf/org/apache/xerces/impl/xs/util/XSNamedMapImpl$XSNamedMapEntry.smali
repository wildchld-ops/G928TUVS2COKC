.class final Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;
.super Ljava/lang/Object;
.source "XSNamedMapImpl.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "XSNamedMapEntry"
.end annotation


# instance fields
.field private final key:Lmf/javax/xml/namespace/QName;

.field private final value:Lmf/org/apache/xerces/xs/XSObject;


# direct methods
.method public constructor <init>(Lmf/javax/xml/namespace/QName;Lmf/org/apache/xerces/xs/XSObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->key:Lmf/javax/xml/namespace/QName;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->value:Lmf/org/apache/xerces/xs/XSObject;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v3, 0x0

    instance-of v4, p1, Ljava/util/Map$Entry;

    if-eqz v4, :cond_0

    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->key:Lmf/javax/xml/namespace/QName;

    if-nez v4, :cond_1

    if-nez v1, :cond_0

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->value:Lmf/org/apache/xerces/xs/XSObject;

    if-nez v4, :cond_2

    if-nez v2, :cond_0

    :goto_1
    const/4 v3, 0x1

    :cond_0
    return v3

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->key:Lmf/javax/xml/namespace/QName;

    invoke-virtual {v4, v1}, Lmf/javax/xml/namespace/QName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->value:Lmf/org/apache/xerces/xs/XSObject;

    invoke-virtual {v4, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->key:Lmf/javax/xml/namespace/QName;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->value:Lmf/org/apache/xerces/xs/XSObject;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    const/4 v1, 0x0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->key:Lmf/javax/xml/namespace/QName;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->value:Lmf/org/apache/xerces/xs/XSObject;

    if-nez v2, :cond_1

    :goto_1
    xor-int/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->key:Lmf/javax/xml/namespace/QName;

    invoke-virtual {v0}, Lmf/javax/xml/namespace/QName;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->value:Lmf/org/apache/xerces/xs/XSObject;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->key:Lmf/javax/xml/namespace/QName;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl$XSNamedMapEntry;->value:Lmf/org/apache/xerces/xs/XSObject;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
