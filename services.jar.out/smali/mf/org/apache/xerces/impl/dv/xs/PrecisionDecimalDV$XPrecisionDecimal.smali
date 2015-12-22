.class Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;
.super Ljava/lang/Object;
.source "PrecisionDecimalDV.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XPrecisionDecimal"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field fracDigits:I

.field fvalue:Ljava/lang/String;

.field intDigits:I

.field ivalue:Ljava/lang/String;

.field pvalue:I

.field sign:I

.field totalDigits:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->totalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    const-string v0, "NaN"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    :cond_0
    const-string v0, "+INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "-INF"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_1
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2b

    if-ne v0, v1, :cond_2

    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    :cond_2
    iput-object p1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->initD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private compare(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 8

    const/16 v7, 0x30

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-nez v4, :cond_0

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-eqz v4, :cond_9

    :cond_0
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-ne v4, v5, :cond_1

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intComp(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result v4

    :goto_0
    return v4

    :cond_1
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    add-int/2addr v4, v5

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    add-int/2addr v5, v6

    if-eq v4, v5, :cond_3

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    add-int/2addr v4, v5

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    add-int/2addr v5, v6

    if-le v4, v5, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    const/4 v4, -0x1

    goto :goto_0

    :cond_3
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-le v4, v5, :cond_6

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    sub-int v1, v4, v5

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_1
    if-lt v3, v1, :cond_4

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {p0, v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto :goto_0

    :cond_4
    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_5
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_6
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v5, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    sub-int v1, v4, v5

    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_3
    if-lt v3, v1, :cond_7

    iget-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v4, v5, v6, v7}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    goto/16 :goto_0

    :cond_7
    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-ge v3, v4, :cond_8

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_8
    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_4

    :cond_9
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intComp(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result v4

    goto/16 :goto_0
.end method

.method private compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I
    .locals 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1, p3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_2

    if-lez v0, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    move v3, v4

    goto :goto_0

    :cond_2
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    move v3, v5

    goto :goto_0

    :cond_3
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1, p2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2, p4}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->truncateTrailingZeros(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    move v3, v5

    goto :goto_0

    :cond_4
    if-gtz v0, :cond_0

    move v3, v4

    goto :goto_0
.end method

.method private compareFractionalPart(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_0
    new-instance v0, Ljava/lang/StringBuffer;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->truncateTrailingZeros(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    goto :goto_0
.end method

.method private intComp(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 4

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v1, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-direct {p0, v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareDecimal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method private makeCanonical()V
    .locals 1

    const-string v0, "TBD by Working Group"

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->canonical:Ljava/lang/String;

    return-void
.end method

.method private truncateTrailingZeros(Ljava/lang/StringBuffer;Ljava/lang/StringBuffer;)V
    .locals 3

    const/16 v2, 0x30

    invoke-virtual {p1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_0
    if-gez v0, :cond_2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    :goto_1
    if-gez v0, :cond_3

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->charAt(I)C

    move-result v1

    if-ne v1, v2, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, -0x1

    goto :goto_1
.end method


# virtual methods
.method public compareTo(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I
    .locals 5

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v1, -0x1

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-nez v3, :cond_1

    const/4 v0, 0x2

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v4, "INF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v4, "INF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v3, "INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v4, "-INF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v4, "-INF"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    :cond_5
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v3, "-INF"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    :cond_7
    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-eq v2, v3, :cond_8

    iget v2, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_8
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compare(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->compareTo(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)I

    move-result v3

    if-eqz v3, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method initD(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v10, 0x2e

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_0

    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    :cond_0
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2b

    if-ne v7, v8, :cond_4

    const/4 v5, 0x1

    :cond_1
    :goto_0
    move v0, v5

    :goto_1
    if-ge v0, v6, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x30

    if-eq v7, v8, :cond_5

    :cond_2
    move v4, v0

    :goto_2
    if-ge v4, v6, :cond_3

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_6

    :cond_3
    if-ge v4, v6, :cond_8

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x45

    if-eq v7, v8, :cond_7

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x65

    if-eq v7, v8, :cond_7

    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    :cond_4
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x2d

    if-ne v7, v8, :cond_1

    const/4 v5, 0x1

    const/4 v7, -0x1

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-ne v7, v10, :cond_a

    add-int/lit8 v3, v4, 0x1

    move v1, v3

    :goto_3
    if-ge v1, v6, :cond_8

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_9

    :cond_8
    :goto_4
    if-ne v5, v4, :cond_b

    if-ne v3, v1, :cond_b

    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    add-int/lit8 v7, v4, 0x1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    goto :goto_4

    :cond_b
    move v2, v3

    :goto_5
    if-lt v2, v1, :cond_e

    sub-int v7, v4, v0

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    sub-int v7, v1, v3

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    if-lez v7, :cond_c

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    :cond_c
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-lez v7, :cond_d

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    if-ge v1, v6, :cond_d

    add-int/lit8 v7, v1, 0x1

    invoke-virtual {p1, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    :cond_d
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v8, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    add-int/2addr v7, v8

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->totalDigits:I

    return-void

    :cond_e
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_f

    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto :goto_5
.end method

.method public isIdentical(Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;)Z
    .locals 3

    const/4 v0, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v2, "INF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v2, "-INF"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    const-string v2, "NaN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->sign:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->intDigits:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fracDigits:I

    if-ne v1, v2, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->pvalue:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->canonical:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->makeCanonical()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/PrecisionDecimalDV$XPrecisionDecimal;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
