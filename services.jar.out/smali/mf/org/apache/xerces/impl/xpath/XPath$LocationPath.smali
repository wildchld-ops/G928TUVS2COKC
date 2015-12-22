.class public Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;
.super Ljava/lang/Object;
.source "XPath.java"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xpath/XPath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LocationPath"
.end annotation


# instance fields
.field public final steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length v1, v1

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length v1, v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>([Lmf/org/apache/xerces/impl/xpath/XPath$Step;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    return-void
.end method


# virtual methods
.method public clone()Ljava/lang/Object;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;

    invoke-direct {v0, p0}, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;-><init>(Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, 0x4

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    array-length v2, v2

    if-lt v0, v2, :cond_0

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_0
    if-lez v0, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    add-int/lit8 v3, v0, -0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    if-eq v2, v4, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->axis:Lmf/org/apache/xerces/impl/xpath/XPath$Axis;

    iget-short v2, v2, Lmf/org/apache/xerces/impl/xpath/XPath$Axis;->type:S

    if-eq v2, v4, :cond_1

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xpath/XPath$LocationPath;->steps:[Lmf/org/apache/xerces/impl/xpath/XPath$Step;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xpath/XPath$Step;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
