.class Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;
.super Lmf/org/apache/xerces/impl/dv/xs/DurationDV;
.source "YearMonthDurationDV.java"


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/DurationDV;-><init>()V

    return-void
.end method


# virtual methods
.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    const/4 v5, 0x1

    const/4 v1, 0x1

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;->parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const-string/jumbo v4, "yearMonthDuration"

    aput-object v4, v3, v5

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/Duration;
    .locals 9

    const/4 v1, 0x1

    const/high16 v5, -0x80000000

    const/4 v4, 0x0

    const/4 v8, 0x1

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-gez v0, :cond_1

    :cond_0
    const/4 v8, -0x1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/YearMonthDurationDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    if-ne v8, v1, :cond_2

    :goto_0
    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    if-eq v2, v5, :cond_3

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    mul-int/2addr v2, v8

    int-to-long v2, v2

    invoke-static {v2, v3}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v2

    :goto_1
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    if-eq v3, v5, :cond_4

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    mul-int/2addr v3, v8

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    :goto_2
    move-object v5, v4

    move-object v6, v4

    move-object v7, v4

    invoke-virtual/range {v0 .. v7}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object v2, v4

    goto :goto_1

    :cond_4
    move-object v3, v4

    goto :goto_2
.end method
