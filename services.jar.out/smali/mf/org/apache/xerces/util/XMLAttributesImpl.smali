.class public Lmf/org/apache/xerces/util/XMLAttributesImpl;
.super Ljava/lang/Object;
.source "XMLAttributesImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xni/XMLAttributes;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;
    }
.end annotation


# static fields
.field protected static final SIZE_LIMIT:I = 0x14

.field protected static final TABLE_SIZE:I = 0x65


# instance fields
.field protected fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fAttributeTableViewChainState:[I

.field protected fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

.field protected fIsTableViewConsistent:Z

.field protected fLargeCount:I

.field protected fLength:I

.field protected fNamespaces:Z

.field protected fTableViewBuckets:I


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x65

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;-><init>(I)V

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    const/4 v1, 0x4

    new-array v1, v1, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    new-instance v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v2}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private getReportableType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_0

    const-string p1, "NMTOKEN"

    :cond_0
    return-object p1
.end method


# virtual methods
.method public addAttribute(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)I
    .locals 11

    const/16 v10, 0x14

    const/4 v9, -0x1

    const/4 v8, 0x0

    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ge v6, v10, :cond_3

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    :goto_0
    if-ne v5, v9, :cond_0

    iget v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    if-ne v6, v7, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v6, v6

    add-int/lit8 v6, v6, 0x4

    new-array v1, v6, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v6

    :goto_1
    array-length v6, v1

    if-lt v4, v6, :cond_2

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    :cond_0
    :goto_2
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v6, v5

    iget-object v6, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v6, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    iput-boolean v8, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    iget-object v6, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v6}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    return v5

    :cond_1
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v5

    goto :goto_0

    :cond_2
    new-instance v6, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v6, :cond_4

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {p0, v6, v7}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-ne v5, v9, :cond_0

    :cond_4
    iget-boolean v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    if-eqz v6, :cond_5

    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-ne v6, v10, :cond_6

    :cond_5
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareAndPopulateTableView()V

    const/4 v6, 0x1

    iput-boolean v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    :cond_6
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v2

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v6, v6, v2

    iget v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v6, v7, :cond_9

    iget v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    if-ne v6, v7, :cond_7

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v6

    :goto_3
    array-length v6, v1

    if-lt v4, v6, :cond_8

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v7, v6, v2

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v6, v6, v5

    const/4 v7, 0x0

    iput-object v7, v6, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v7, v7, v5

    aput-object v7, v6, v2

    goto/16 :goto_2

    :cond_8
    new-instance v6, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v6, v2

    :goto_4
    if-nez v3, :cond_c

    :cond_a
    if-nez v3, :cond_e

    iget v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    if-ne v6, v7, :cond_b

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v6, v6

    shl-int/lit8 v6, v6, 0x1

    new-array v1, v6, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v7, v7

    invoke-static {v6, v8, v1, v8, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v6

    :goto_5
    array-length v6, v1

    if-lt v4, v6, :cond_d

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    :cond_b
    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v6, v6, v5

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v7, v7, v2

    iput-object v7, v6, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v6, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v7, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v7, v7, v5

    aput-object v7, v6, v2

    goto/16 :goto_2

    :cond_c
    iget-object v6, v3, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    iget-object v7, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v6, v7, :cond_a

    iget-object v3, v3, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_4

    :cond_d
    new-instance v6, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v6, v1, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_e
    iget-object v6, p1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndexFast(Ljava/lang/String;)I

    move-result v5

    goto/16 :goto_2
.end method

.method public addAttributeNS(Lmf/org/apache/xerces/xni/QName;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    iget v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v5, v5

    if-ne v4, v5, :cond_0

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v5, 0x14

    if-ge v4, v5, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    add-int/lit8 v4, v4, 0x4

    new-array v1, v4, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    :goto_0
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v5, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v5, v5

    invoke-static {v4, v6, v1, v6, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v2, v4

    :goto_1
    array-length v4, v1

    if-lt v2, v4, :cond_2

    iput-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    :cond_0
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v4, v3

    iget-object v4, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v4, p1}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    iput-object p3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    iput-boolean v6, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    iget-object v4, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    invoke-interface {v4}, Lmf/org/apache/xerces/xni/Augmentations;->removeAllItems()V

    return-void

    :cond_1
    iget-object v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    array-length v4, v4

    shl-int/lit8 v4, v4, 0x1

    new-array v1, v4, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_0

    :cond_2
    new-instance v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    invoke-direct {v4}, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;-><init>()V

    aput-object v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public checkDuplicatesNS()Lmf/org/apache/xerces/xni/QName;
    .locals 10

    const/4 v7, 0x0

    iget v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    const/16 v9, 0x14

    if-gt v8, v9, :cond_4

    const/4 v5, 0x0

    :goto_0
    iget v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v8, v8, -0x1

    if-lt v5, v8, :cond_1

    :cond_0
    :goto_1
    return-object v7

    :cond_1
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v8, v5

    add-int/lit8 v6, v5, 0x1

    :goto_2
    iget v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v6, v8, :cond_2

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v8, v6

    iget-object v8, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v8, v9, :cond_3

    iget-object v8, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v9, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v8, v9, :cond_3

    iget-object v7, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x0

    iput-boolean v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    iget v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v5, v8, -0x1

    :goto_3
    if-ltz v5, :cond_0

    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v2, v8, v5

    iget-object v8, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {p0, v8, v9}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v8, v8, v3

    iget v9, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v8, v9, :cond_5

    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v9, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v9, v8, v3

    iput-object v7, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v2, v8, v3

    :goto_4
    add-int/lit8 v5, v5, -0x1

    goto :goto_3

    :cond_5
    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v4, v8, v3

    :goto_5
    if-nez v4, :cond_6

    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v8, v8, v3

    iput-object v8, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v8, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v2, v8, v3

    goto :goto_4

    :cond_6
    iget-object v8, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    iget-object v9, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v8, v9, :cond_7

    iget-object v8, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v8, v8, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    iget-object v9, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-ne v8, v9, :cond_7

    iget-object v7, v2, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    goto/16 :goto_1

    :cond_7
    iget-object v4, v4, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    goto :goto_5
.end method

.method protected cleanTableView()V
    .locals 3

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-gez v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    if-eqz v1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-gez v0, :cond_2

    :cond_0
    const/4 v1, 0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    const/4 v2, 0x0

    aput v2, v1, v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public getAugmentations(I)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getAugmentations(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xni/Augmentations;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v1, v2, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getIndex(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v1, v2, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq p1, v2, :cond_0

    if-eqz p1, :cond_2

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getIndexFast(Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v1, v2, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-eq v2, p1, :cond_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getIndexFast(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v1, v2, :cond_1

    const/4 v1, -0x1

    :cond_0
    return v1

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v2, v1

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    if-ne v2, p2, :cond_2

    iget-object v2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v2, v2, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    if-eq v2, p1, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return v0
.end method

.method public getLocalName(I)Ljava/lang/String;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->localpart:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    goto :goto_0
.end method

.method public getName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {p2, v0}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    return-void
.end method

.method public getNonNormalizedValue(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v0, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-object v0
.end method

.method public getPrefix(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v1, Lmf/org/apache/xerces/xni/QName;->prefix:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0
.end method

.method public getQName(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v1, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v1, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    if-nez v0, :cond_1

    const-string v0, ""

    goto :goto_0
.end method

.method protected getTableViewBucket(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v0, v1

    return v0
.end method

.method protected getTableViewBucket(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3

    const v2, 0x7fffffff

    if-nez p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    and-int/2addr v0, v2

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    and-int/2addr v0, v2

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    rem-int/2addr v0, v1

    goto :goto_0
.end method

.method public getType(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getType(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v1, 0x0

    iget-boolean v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    if-nez v2, :cond_1

    :cond_0
    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    invoke-direct {p0, v1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getReportableType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getURI(I)Ljava/lang/String;
    .locals 2

    if-ltz p1, :cond_0

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v1, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, p1

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v0, v1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(I)Ljava/lang/String;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v1, v1, v0

    iget-object v1, v1, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p1, p2}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getIndex(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getValue(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isSpecified(I)Z
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-boolean v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    return v0
.end method

.method protected prepareAndPopulateTableView()V
    .locals 5

    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->prepareTableView()V

    const/4 v2, 0x0

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    if-lt v2, v3, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v3, v2

    iget-object v3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iget-object v3, v3, Lmf/org/apache/xerces/xni/QName;->rawname:Ljava/lang/String;

    invoke-virtual {p0, v3}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->getTableViewBucket(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    aget v3, v3, v1

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLargeCount:I

    aput v4, v3, v1

    const/4 v3, 0x0

    iput-object v3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v0, v3, v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v3, v3, v1

    iput-object v3, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->next:Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aput-object v0, v3, v1

    goto :goto_1
.end method

.method protected prepareTableView()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    if-nez v0, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v0, v0, [Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableView:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fTableViewBuckets:I

    new-array v0, v0, [I

    iput-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributeTableViewChainState:[I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/util/XMLAttributesImpl;->cleanTableView()V

    goto :goto_0
.end method

.method public removeAllAttributes()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return-void
.end method

.method public removeAttributeAt(I)V
    .locals 5

    const/4 v1, 0x0

    iput-boolean v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fIsTableViewConsistent:Z

    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v1, -0x1

    if-ge p1, v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, p1

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    add-int/lit8 v2, p1, 0x1

    iget-object v3, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget v4, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    sub-int/2addr v4, p1

    add-int/lit8 v4, v4, -0x1

    invoke-static {v1, v2, v3, p1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    iget v2, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v2, v2, -0x1

    aput-object v0, v1, v2

    :cond_0
    iget v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fLength:I

    return-void
.end method

.method public setAugmentations(ILmf/org/apache/xerces/xni/Augmentations;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->augs:Lmf/org/apache/xerces/xni/Augmentations;

    return-void
.end method

.method public setName(ILmf/org/apache/xerces/xni/QName;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/xni/QName;->setValues(Lmf/org/apache/xerces/xni/QName;)V

    return-void
.end method

.method public setNamespaces(Z)V
    .locals 0

    iput-boolean p1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fNamespaces:Z

    return-void
.end method

.method public setNonNormalizedValue(ILjava/lang/String;)V
    .locals 1

    if-nez p2, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-void
.end method

.method public setSpecified(IZ)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-boolean p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->specified:Z

    return-void
.end method

.method public setType(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->type:Ljava/lang/String;

    return-void
.end method

.method public setURI(ILjava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v0, p1

    iget-object v0, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->name:Lmf/org/apache/xerces/xni/QName;

    iput-object p2, v0, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    return-void
.end method

.method public setValue(ILjava/lang/String;)V
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/util/XMLAttributesImpl;->fAttributes:[Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;

    aget-object v0, v1, p1

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->value:Ljava/lang/String;

    iput-object p2, v0, Lmf/org/apache/xerces/util/XMLAttributesImpl$Attribute;->nonNormalizedValue:Ljava/lang/String;

    return-void
.end method
