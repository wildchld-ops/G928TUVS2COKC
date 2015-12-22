.class Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;
.super Lmf/org/apache/xerces/impl/dv/xs/DurationDV;
.source "DayTimeDurationDV.java"


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

    const/4 v3, 0x2

    const/4 v1, 0x2

    :try_start_0
    invoke-virtual {p0, p1, v1}, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;->parse(Ljava/lang/String;I)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    :catch_0
    move-exception v0

    new-instance v1, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;

    const-string v2, "cvc-datatype-valid.1.2.1"

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    const-string v5, "dayTimeDuration"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getDuration(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/Duration;
    .locals 14

    const/4 v1, 0x1

    const/high16 v9, -0x80000000

    const/4 v2, 0x0

    const/4 v8, 0x1

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-ltz v0, :cond_0

    iget v0, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-ltz v0, :cond_0

    iget-wide v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/16 v6, 0x0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    :cond_0
    const/4 v8, -0x1

    :cond_1
    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/DayTimeDurationDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    if-ne v8, v1, :cond_2

    :goto_0
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-eq v3, v9, :cond_3

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    mul-int/2addr v3, v8

    int-to-long v4, v3

    invoke-static {v4, v5}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v4

    :goto_1
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    if-eq v3, v9, :cond_4

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hour:I

    mul-int/2addr v3, v8

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    :goto_2
    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    if-eq v3, v9, :cond_5

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->minute:I

    mul-int/2addr v3, v8

    int-to-long v6, v3

    invoke-static {v6, v7}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v6

    :goto_3
    iget-wide v10, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    const-wide/high16 v12, -0x3e20000000000000L    # -2.147483648E9

    cmpl-double v3, v10, v12

    if-eqz v3, :cond_6

    new-instance v7, Ljava/math/BigDecimal;

    int-to-double v10, v8

    iget-wide v12, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->second:D

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v7, v3}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    :goto_4
    move-object v3, v2

    invoke-virtual/range {v0 .. v7}, Lmf/javax/xml/datatype/DatatypeFactory;->newDuration(ZLjava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigInteger;Ljava/math/BigDecimal;)Lmf/javax/xml/datatype/Duration;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    move-object v4, v2

    goto :goto_1

    :cond_4
    move-object v5, v2

    goto :goto_2

    :cond_5
    move-object v6, v2

    goto :goto_3

    :cond_6
    move-object v7, v2

    goto :goto_4
.end method
