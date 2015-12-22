.class public Lmf/org/apache/xerces/impl/dv/xs/DayDV;
.super Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.source "DayDV.java"


# static fields
.field private static final DAY_SIZE:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;-><init>()V

    return-void
.end method


# virtual methods
.method protected dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 3

    const/16 v2, 0x2d

    new-instance v0, Ljava/lang/StringBuffer;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;->append(Ljava/lang/StringBuffer;II)V

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;->append(Ljava/lang/StringBuffer;II)V

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
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;->parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
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

    const-string/jumbo v5, "gDay"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    const/high16 v1, -0x80000000

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/DayDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hasTimeZone()Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    mul-int/lit8 v2, v2, 0x3c

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    add-int v8, v2, v4

    :goto_0
    move v2, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Lmf/javax/xml/datatype/DatatypeFactory;->newXMLGregorianCalendar(IIIIIIII)Lmf/javax/xml/datatype/XMLGregorianCalendar;

    move-result-object v0

    return-object v0

    :cond_0
    move v8, v1

    goto :goto_0
.end method

.method protected parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, 0x2d

    const/4 v3, 0x5

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v0, p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v4, :cond_0

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v4, :cond_1

    :cond_0
    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    const-string v3, "Error in day parsing"

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_1
    const/16 v2, 0x7d0

    iput v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    iput v5, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    const/4 v2, 0x3

    invoke-virtual {p0, p1, v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;->parseInt(Ljava/lang/String;II)I

    move-result v2

    iput v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ge v3, v1, :cond_3

    invoke-virtual {p0, p1, v3, v1}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;->isNextCharUTCSign(Ljava/lang/String;II)Z

    move-result v2

    if-nez v2, :cond_2

    new-instance v2, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    const-string v3, "Error in day parsing"

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    invoke-virtual {p0, p1, v0, v3, v1}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;->getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V

    :cond_3
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;->validateDateTime(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;->saveUnnormalized(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    iget v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eqz v2, :cond_4

    iget v2, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v3, 0x5a

    if-eq v2, v3, :cond_4

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/DayDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    :cond_4
    iput v6, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    return-object v0
.end method
