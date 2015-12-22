.class Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;
.super Ljava/lang/Object;
.source "DecimalDV.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/datatypes/XSDecimal;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/dv/xs/DecimalDV;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "XDecimal"
.end annotation


# instance fields
.field private canonical:Ljava/lang/String;

.field fracDigits:I

.field fvalue:Ljava/lang/String;

.field intDigits:I

.field integer:Z

.field ivalue:Ljava/lang/String;

.field sign:I

.field totalDigits:I


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->initD(Ljava/lang/String;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iput v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->initI(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->initD(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private intComp(Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;)I
    .locals 5

    const/4 v1, 0x1

    const/4 v2, -0x1

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-eq v3, v4, :cond_2

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-le v3, v4, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_3

    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    iget-object v4, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_4

    const/4 v1, 0x0

    goto :goto_0

    :cond_4
    if-gtz v0, :cond_0

    move v1, v2

    goto :goto_0
.end method

.method private makeCanonical()V
    .locals 4

    const/16 v3, 0x30

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-eqz v1, :cond_0

    const-string v1, "0"

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    const-string v1, "0.0"

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-eqz v1, :cond_2

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-lez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    add-int/lit8 v1, v1, 0x3

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-eqz v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    if-nez v1, :cond_4

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v1, :cond_6

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    goto :goto_0

    :cond_5
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_2
.end method


# virtual methods
.method public compareTo(Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;)I
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-eq v0, v1, :cond_1

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intComp(Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;)I

    move-result v1

    mul-int/2addr v0, v1

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, p0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    instance-of v3, p1, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    iget v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-eq v3, v4, :cond_3

    move v1, v2

    goto :goto_0

    :cond_3
    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-eqz v3, :cond_0

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-ne v3, v4, :cond_4

    iget v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    iget v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-ne v3, v4, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    iget-object v4, v0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0
.end method

.method public getBigDecimal()Ljava/math/BigDecimal;
    .locals 2

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_0

    new-instance v0, Ljava/math/BigDecimal;

    sget-object v1, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/math/BigInteger;)V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getBigInteger()Ljava/math/BigInteger;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    sget-object v0, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    :goto_0
    return-object v0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    new-instance v0, Ljava/math/BigInteger;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/math/BigInteger;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/math/BigInteger;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public getByte()B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Byte;->parseByte(Ljava/lang/String;)B

    move-result v0

    goto :goto_0
.end method

.method public getInt()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public getLong()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_0
.end method

.method public getShort()S
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NumberFormatException;

    invoke-direct {v0}, Ljava/lang/NumberFormatException;-><init>()V

    throw v0

    :cond_0
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    iget v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    goto :goto_0
.end method

.method initD(Ljava/lang/String;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/16 v10, 0x30

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

    if-eq v7, v10, :cond_5

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

    const/16 v8, 0x2e

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

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_7
    add-int/lit8 v3, v4, 0x1

    move v1, v6

    :cond_8
    if-ne v5, v4, :cond_a

    if-ne v3, v1, :cond_a

    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    :cond_9
    add-int/lit8 v1, v1, -0x1

    :cond_a
    if-le v1, v3, :cond_b

    add-int/lit8 v7, v1, -0x1

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v7

    if-eq v7, v10, :cond_9

    :cond_b
    move v2, v3

    :goto_3
    if-lt v2, v1, :cond_d

    sub-int v7, v4, v0

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    sub-int v7, v1, v3

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iget v8, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    add-int/2addr v7, v8

    iput v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-lez v7, :cond_f

    invoke-virtual {p1, v0, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-lez v7, :cond_c

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    :cond_c
    :goto_4
    return-void

    :cond_d
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v7

    invoke-static {v7}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v7

    if-nez v7, :cond_e

    new-instance v7, Ljava/lang/NumberFormatException;

    invoke-direct {v7}, Ljava/lang/NumberFormatException;-><init>()V

    throw v7

    :cond_e
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_f
    iget v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    if-lez v7, :cond_10

    invoke-virtual {p1, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fvalue:Ljava/lang/String;

    goto :goto_4

    :cond_10
    iput v9, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    goto :goto_4
.end method

.method initI(Ljava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NumberFormatException;
        }
    .end annotation

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_0

    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    :cond_0
    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2b

    if-ne v4, v5, :cond_4

    const/4 v2, 0x1

    :cond_1
    :goto_0
    move v0, v2

    :goto_1
    if-ge v0, v3, :cond_2

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-eq v4, v5, :cond_5

    :cond_2
    move v1, v0

    :goto_2
    if-ge v1, v3, :cond_3

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lmf/org/apache/xerces/impl/dv/xs/TypeValidator;->isDigit(C)Z

    move-result v4

    if-nez v4, :cond_6

    :cond_3
    if-ge v1, v3, :cond_7

    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    :cond_4
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x2d

    if-ne v4, v5, :cond_1

    const/4 v2, 0x1

    const/4 v4, -0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    goto :goto_0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_7
    if-ne v2, v1, :cond_8

    new-instance v4, Ljava/lang/NumberFormatException;

    invoke-direct {v4}, Ljava/lang/NumberFormatException;-><init>()V

    throw v4

    :cond_8
    sub-int v4, v1, v0

    iput v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iput v6, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->fracDigits:I

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    iput v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->totalDigits:I

    iget v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->intDigits:I

    if-lez v4, :cond_9

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->ivalue:Ljava/lang/String;

    :goto_3
    const/4 v4, 0x1

    iput-boolean v4, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->integer:Z

    return-void

    :cond_9
    iput v6, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->sign:I

    goto :goto_3
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->makeCanonical()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/dv/xs/DecimalDV$XDecimal;->canonical:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
