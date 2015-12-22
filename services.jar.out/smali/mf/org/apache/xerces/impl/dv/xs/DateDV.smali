.class public Lmf/org/apache/xerces/impl/dv/xs/DateDV;
.super Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;
.source "DateDV.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/DateTimeDV;-><init>()V

    return-void
.end method


# virtual methods
.method protected dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 5

    const/16 v4, 0x2d

    const/4 v3, 0x2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    const/4 v2, 0x4

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->append(Ljava/lang/StringBuffer;II)V

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getActualValue(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/ValidationContext;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
        }
    .end annotation

    :try_start_0
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
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

    const/4 v4, 0x1

    const-string v5, "date"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    const/high16 v4, -0x80000000

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormYear:I

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hasTimeZone()Z

    move-result v5

    if-eqz v5, :cond_0

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    mul-int/lit8 v5, v5, 0x3c

    iget v6, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    add-int v8, v5, v6

    :goto_0
    move v5, v4

    move v6, v4

    move v7, v4

    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0

    :cond_0
    move v8, v4

    goto :goto_0
.end method

.method protected parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v0, p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3, v2, v0}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->getDate(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)I

    move-result v1

    invoke-virtual {p0, p1, v1, v2, v0}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->parseTimeZone(Ljava/lang/String;IILmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->validateDateTime(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->saveUnnormalized(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    iget v3, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eqz v3, :cond_0

    iget v3, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v4, 0x5a

    if-eq v3, v4, :cond_0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/DateDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    :cond_0
    return-object v0
.end method
