.class public Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;
.super Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;
.source "MonthDayDV.java"


# static fields
.field private static final MONTHDAY_SIZE:I = 0x7


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;-><init>()V

    return-void
.end method


# virtual methods
.method protected dateToString(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Ljava/lang/String;
    .locals 4

    const/4 v3, 0x2

    const/16 v2, 0x2d

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->append(Ljava/lang/StringBuffer;II)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    invoke-virtual {p0, v0, v1, v3}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->append(Ljava/lang/StringBuffer;II)V

    iget v1, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    int-to-char v1, v1

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->append(Ljava/lang/StringBuffer;II)V

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
    invoke-virtual {p0, p1}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->parse(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;
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

    const-string/jumbo v5, "gMonthDay"

    aput-object v5, v3, v4

    invoke-direct {v1, v2, v3}, Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v1
.end method

.method protected getXMLGregorianCalendar(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)Lmf/javax/xml/datatype/XMLGregorianCalendar;
    .locals 9

    const/high16 v1, -0x80000000

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->datatypeFactory:Lmf/javax/xml/datatype/DatatypeFactory;

    iget v2, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormMonth:I

    iget v3, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->unNormDay:I

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->hasTimeZone()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneHr:I

    mul-int/lit8 v4, v4, 0x3c

    iget v5, p1, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->timezoneMin:I

    add-int v8, v4, v5

    :goto_0
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
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;
        }
    .end annotation

    const/4 v8, 0x1

    const/16 v7, 0x2d

    const/4 v6, 0x7

    new-instance v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;

    invoke-direct {v0, p1, p0}, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV;)V

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v4, 0x7d0

    iput v4, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->year:I

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-ne v4, v7, :cond_0

    invoke-virtual {p1, v8}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_1

    :cond_0
    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid format for gMonthDay: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1
    const/4 v4, 0x2

    const/4 v5, 0x4

    invoke-virtual {p0, p1, v4, v5}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->parseInt(Ljava/lang/String;II)I

    move-result v4

    iput v4, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->month:I

    const/4 v2, 0x4

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v7, :cond_2

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Invalid format for gMonthDay: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-virtual {p0, p1, v3, v6}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->parseInt(Ljava/lang/String;II)I

    move-result v4

    iput v4, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->day:I

    if-ge v6, v1, :cond_4

    invoke-virtual {p0, p1, v6, v1}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->isNextCharUTCSign(Ljava/lang/String;II)Z

    move-result v4

    if-nez v4, :cond_3

    new-instance v4, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Error in month parsing:"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lmf/org/apache/xerces/impl/dv/xs/SchemaDateTimeException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_3
    invoke-virtual {p0, p1, v0, v6, v1}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->getTimeZone(Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;II)V

    :cond_4
    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->validateDateTime(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->saveUnnormalized(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    iget v4, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    if-eqz v4, :cond_5

    iget v4, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->utc:I

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_5

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/impl/dv/xs/MonthDayDV;->normalize(Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;)V

    :cond_5
    iput v8, v0, Lmf/org/apache/xerces/impl/dv/xs/AbstractDateTimeDV$DateTimeData;->position:I

    return-object v0
.end method
