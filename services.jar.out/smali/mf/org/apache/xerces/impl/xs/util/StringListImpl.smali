.class public final Lmf/org/apache/xerces/impl/xs/util/StringListImpl;
.super Ljava/util/AbstractList;
.source "StringListImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/StringList;


# static fields
.field public static final EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;


# instance fields
.field private final fArray:[Ljava/lang/String;

.field private final fLength:I

.field private final fVector:Ljava/util/Vector;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    new-instance v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    new-array v1, v2, [Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    return-void
.end method

.method public constructor <init>(Ljava/util/Vector;)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/Vector;->size()I

    move-result v0

    goto :goto_0
.end method

.method public constructor <init>([Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    return-void
.end method

.method private toArray0([Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 3

    const/4 v1, 0x1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v2, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v1

    :cond_0
    :goto_0
    return v1

    :cond_1
    if-nez p1, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-lt v0, v2, :cond_3

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-ge v0, v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-ge p1, v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    return v0
.end method

.method public item(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fArray:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->toArray()[Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->toArray0([Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fVector:Ljava/util/Vector;

    invoke-virtual {v2, p1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_0
    array-length v2, p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-ge v2, v3, :cond_1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_1
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->toArray0([Ljava/lang/Object;)V

    array-length v2, p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    if-le v2, v3, :cond_2

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;->fLength:I

    const/4 v3, 0x0

    aput-object v3, p1, v2

    :cond_2
    move-object v2, p1

    goto :goto_0
.end method
