.class public Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
.super Ljava/lang/Object;
.source "XSWildcardDecl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSWildcard;


# static fields
.field public static final ABSENT:Ljava/lang/String;


# instance fields
.field public fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private fDescription:Ljava/lang/String;

.field public fNamespaceList:[Ljava/lang/String;

.field public fProcessContents:S

.field public fType:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    return-void
.end method

.method private areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-short v4, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v3, v4, :cond_4

    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v3, v1, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-short v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v3, v2

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v4, v4, v2

    if-eq v3, v4, :cond_0

    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v3, v3

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v4, v4

    if-ne v3, v4, :cond_4

    const/4 v0, 0x0

    :goto_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    goto :goto_0
.end method


# virtual methods
.method public allowNamespace(Ljava/lang/String;)Z
    .locals 6

    const/4 v3, 0x1

    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v4, v3, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    const/4 v0, 0x0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v4

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_2

    if-eqz v0, :cond_5

    :cond_2
    if-eqz v0, :cond_0

    :cond_3
    iget-short v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v4

    const/4 v1, 0x0

    :goto_2
    if-lt v1, v2, :cond_7

    :cond_4
    const/4 v3, 0x0

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-ne p1, v4, :cond_6

    const/4 v0, 0x1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_7
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v4, v4, v1

    if-eq p1, v4, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    return v0

    :cond_1
    aget-object v2, p2, v1

    if-ne p1, v2, :cond_2

    const/4 v0, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getAnnotation()Lmf/org/apache/xerces/xs/XSAnnotation;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lmf/org/apache/xerces/xs/XSObjectList;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSAnnotation;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_0
.end method

.method public getConstraintType()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespace()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNamespaceItem()Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getNsConstraintList()Lmf/org/apache/xerces/xs/StringList;
    .locals 3

    new-instance v1, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-direct {v1, v2, v0}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    return-object v1

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public getProcessContents()S
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    return v0
.end method

.method public getProcessContentsAsString()Ljava/lang/String;
    .locals 1

    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    packed-switch v0, :pswitch_data_0

    const-string/jumbo v0, "invalid value"

    :goto_0
    return-object v0

    :pswitch_0
    const-string/jumbo v0, "skip"

    goto :goto_0

    :pswitch_1
    const-string/jumbo v0, "lax"

    goto :goto_0

    :pswitch_2
    const-string/jumbo v0, "strict"

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType()S
    .locals 1

    const/16 v0, 0x9

    return v0
.end method

.method intersect2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 8

    const/4 v7, 0x0

    array-length v5, p1

    array-length v6, p2

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    new-array v3, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v5, p1

    if-lt v2, v5, :cond_0

    new-array v4, v0, [Ljava/lang/String;

    invoke-static {v3, v7, v4, v7, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_0
    aget-object v5, p1, v2

    invoke-virtual {p0, v5, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-object v5, p1, v2

    aput-object v5, v3, v0

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public isSubsetOf(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v4, :cond_3

    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v4, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v3, v3, v0

    if-ne v2, v3, :cond_3

    move v0, v1

    goto :goto_0

    :cond_3
    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v5, :cond_0

    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v5, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->subset2sets([Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_0

    :cond_4
    iget-short v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v2, v4, :cond_0

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public performIntersectionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 11

    if-nez p1, :cond_1

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    iput-short p2, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v8

    if-eqz v8, :cond_2

    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    :cond_3
    move-object v7, p0

    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x1

    if-ne v8, v9, :cond_4

    move-object v7, p1

    :cond_4
    iget-short v8, v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_6

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x3

    if-eq v8, v9, :cond_7

    :cond_6
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x3

    if-ne v8, v9, :cond_a

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_a

    :cond_7
    const/4 v3, 0x0

    const/4 v7, 0x0

    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_8

    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    :goto_1
    array-length v4, v3

    new-array v1, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v0, 0x0

    move v6, v5

    :goto_2
    if-lt v0, v4, :cond_9

    const/4 v8, 0x3

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array v8, v6, [Ljava/lang/String;

    iput-object v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v8, 0x0

    iget-object v9, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v10, 0x0

    invoke-static {v1, v8, v9, v10, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :cond_8
    iget-object v7, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_1

    :cond_9
    aget-object v8, v3, v0

    const/4 v9, 0x0

    aget-object v9, v7, v9

    if-eq v8, v9, :cond_e

    aget-object v8, v3, v0

    sget-object v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v8, v9, :cond_e

    add-int/lit8 v5, v6, 0x1

    aget-object v8, v3, v0

    aput-object v8, v1, v6

    :goto_3
    add-int/lit8 v0, v0, 0x1

    move v6, v5

    goto :goto_2

    :cond_a
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x3

    if-ne v8, v9, :cond_b

    const/4 v8, 0x3

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v9, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->intersect2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_b
    iget-short v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-short v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v8, v9, :cond_c

    iget-object v8, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v8, v9, :cond_c

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_c
    move-object v7, p0

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v9, 0x0

    aget-object v8, v8, v9

    sget-object v9, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-ne v8, v9, :cond_d

    move-object v7, p1

    :cond_d
    iget-short v8, v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v8, v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v8, v2, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_e
    move v5, v6

    goto :goto_3
.end method

.method public performUnionWith(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;S)Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;
    .locals 11

    const/4 v5, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    if-nez p1, :cond_1

    move-object v4, v5

    :cond_0
    :goto_0
    return-object v4

    :cond_1
    new-instance v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    iput-short p2, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->areSame(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z

    move-result v6

    if-eqz v6, :cond_2

    iget-short v5, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-short v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v6, v9, :cond_3

    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v9, :cond_4

    :cond_3
    iput-short v9, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    goto :goto_0

    :cond_4
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v7, :cond_5

    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v7, :cond_5

    iput-short v7, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    invoke-virtual {p0, v5, v6}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->union2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_0

    :cond_5
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v8, :cond_6

    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v8, :cond_6

    iput-short v8, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array v5, v8, [Ljava/lang/String;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v6, v5, v10

    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v6, v5, v9

    goto :goto_0

    :cond_6
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v8, :cond_7

    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v6, v7, :cond_8

    :cond_7
    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v7, :cond_0

    iget-short v6, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v8, :cond_0

    :cond_8
    const/4 v3, 0x0

    const/4 v2, 0x0

    iget-short v6, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-ne v6, v8, :cond_9

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    :goto_1
    sget-object v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    invoke-virtual {p0, v6, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    aget-object v6, v3, v10

    sget-object v7, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    if-eq v6, v7, :cond_d

    aget-object v6, v3, v10

    invoke-virtual {p0, v6, v2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iput-short v9, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    goto/16 :goto_0

    :cond_9
    iget-object v3, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto :goto_1

    :cond_a
    if-eqz v1, :cond_b

    if-nez v0, :cond_b

    iput-short v8, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    new-array v5, v8, [Ljava/lang/String;

    iput-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v6, v5, v10

    iget-object v5, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    sget-object v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->ABSENT:Ljava/lang/String;

    aput-object v6, v5, v9

    goto/16 :goto_0

    :cond_b
    if-nez v1, :cond_c

    if-eqz v0, :cond_c

    move-object v4, v5

    goto/16 :goto_0

    :cond_c
    iput-short v8, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_d
    if-eqz v0, :cond_e

    iput-short v9, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    goto/16 :goto_0

    :cond_e
    iput-short v8, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    iput-object v3, v4, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method subset2sets([Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-lt v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_0
    aget-object v1, p1, v0

    invoke-virtual {p0, v1, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    if-nez v2, :cond_1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "WC["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    const/16 v2, 0x5d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fDescription:Ljava/lang/String;

    return-object v2

    :pswitch_0
    const-string v2, "##any"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_1
    const-string v2, "##other"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v2, ":\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-eqz v2, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :pswitch_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_0

    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-eqz v2, :cond_3

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v1, 0x1

    :goto_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    const-string v2, ",\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v1

    if-eqz v2, :cond_4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    const-string v2, "\""

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method union2sets([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 7

    const/4 v6, 0x0

    array-length v5, p1

    new-array v3, v5, [Ljava/lang/String;

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v5, p1

    if-lt v2, v5, :cond_0

    array-length v5, p2

    add-int/2addr v5, v0

    new-array v4, v5, [Ljava/lang/String;

    invoke-static {v3, v6, v4, v6, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v5, p2

    invoke-static {p2, v6, v4, v0, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v4

    :cond_0
    aget-object v5, p1, v2

    invoke-virtual {p0, v5, p2}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->elementInSet(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_1

    add-int/lit8 v1, v0, 0x1

    aget-object v5, p1, v2

    aput-object v5, v3, v0

    move v0, v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public weakerProcessContents(Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;)Z
    .locals 4

    const/4 v3, 0x2

    const/4 v0, 0x1

    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-eq v1, v0, :cond_2

    :cond_0
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v1, v3, :cond_1

    iget-short v1, p1, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    if-ne v1, v3, :cond_2

    :cond_1
    const/4 v0, 0x0

    :cond_2
    return v0
.end method
