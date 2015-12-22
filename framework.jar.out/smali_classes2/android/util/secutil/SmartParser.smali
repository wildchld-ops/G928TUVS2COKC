.class public Landroid/util/secutil/SmartParser;
.super Ljava/lang/Object;
.source "SmartParser.java"


# static fields
.field static final DEBUG:Z = true

.field private static final DELIMITER:Ljava/lang/String; = "\uff03"

.field static final TAG:Ljava/lang/String; = "SmartParser"


# instance fields
.field private dayOfToday:I

.field mContext:Landroid/content/Context;

.field private mDegree:I

.field private mParsingData:Landroid/util/secutil/SmartParsingData;

.field private mWorkStr:Ljava/lang/String;

.field private mWorkStrForMillis:Ljava/lang/String;

.field private monthOfToday:I

.field private today:Ljava/util/Calendar;

.field private yearOfToday:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput v0, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    invoke-virtual {p0, p1}, Landroid/util/secutil/SmartParser;->init(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/secutil/SmartParser;->doParsing()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    iput p3, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    invoke-virtual {p0, p1}, Landroid/util/secutil/SmartParser;->init(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/util/secutil/SmartParser;->doParsing()V

    return-void
.end method

.method private arrangeRemainData()V
    .locals 3

    const-string v1, "(\uff03|[[:space:]])+"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    iget-object v1, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    return-void
.end method

.method private convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v4, Landroid/text/format/Time;

    const-string v5, "UTC"

    invoke-direct {v4, v5}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    if-ne p2, v6, :cond_2

    :try_start_0
    const-string v5, "[[[:space:]]\\-\\/\\.\ub144\uc6d4\uc77c]+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-ne v5, v8, :cond_0

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->year:I

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    :goto_0
    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->hour:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->minute:I

    const/4 v5, 0x0

    iput v5, v4, Landroid/text/format/Time;->second:I

    const-string v5, "SmartParser"

    const-string v6, "convertDateToMillis() completed successfully"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "SmartParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "year:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->year:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", month:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->month:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", day:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->monthDay:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", hour:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->hour:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", minute:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->minute:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", second:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Landroid/text/format/Time;->second:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    :goto_1
    return-object v5

    :cond_0
    array-length v5, v1

    if-ne v5, v7, :cond_1

    iget v5, p0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    const/4 v5, 0x0

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const-string v5, "SmartParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "fail convertDateToMillis() by exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    goto :goto_1

    :cond_1
    :try_start_1
    const-string v5, "SmartParser"

    const-string v6, "fail convertDateToMillis() by invalid length. (type:1)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    goto :goto_1

    :cond_2
    if-ne p2, v7, :cond_5

    const-string v5, "[[[:space:]]\\,\\.]+"

    invoke-virtual {p1, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v5, v1

    if-ne v5, v8, :cond_3

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->year:I

    sget-object v5, Landroid/util/secutil/SmartPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {p0, v5}, Landroid/util/secutil/SmartParser;->convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_0

    :cond_3
    array-length v5, v1

    if-ne v5, v7, :cond_4

    iget v5, p0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    iput v5, v4, Landroid/text/format/Time;->year:I

    sget-object v5, Landroid/util/secutil/SmartPatterns;->globalDateMap:Ljava/util/Map;

    const/4 v6, 0x0

    aget-object v6, v1, v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    iput v5, v4, Landroid/text/format/Time;->month:I

    const/4 v5, 0x1

    aget-object v5, v1, v5

    invoke-virtual {p0, v5}, Landroid/util/secutil/SmartParser;->convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iput v5, v4, Landroid/text/format/Time;->monthDay:I

    goto/16 :goto_0

    :cond_4
    const-string v5, "SmartParser"

    const-string v6, "fail convertDateToMillis() by invalid length. (type:2)"

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    goto/16 :goto_1

    :cond_5
    const-string v5, "SmartParser"

    const-string v6, "fail convertDateToMillis() by invalid patternType : "

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private convertTimeToMillis(Ljava/lang/String;)Ljava/lang/String;
    .locals 17

    new-instance v13, Landroid/text/format/Time;

    const-string v14, "UTC"

    invoke-direct {v13, v14}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    :try_start_0
    const-string v14, "((Time|time|\uc2dc\uac04)[[[:space:]]\\:\\;\\-]+)"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v9

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move-object/from16 v0, p1

    invoke-virtual {v9, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v14, 0x2

    new-array v12, v14, [Ljava/lang/String;

    const-string/jumbo v2, "\uc624\uc804"

    const-string/jumbo v7, "\uc624\ud6c4"

    const-string v14, "[0-9]+"

    invoke-static {v14}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    move-object/from16 v0, p1

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v14

    if-eqz v14, :cond_0

    const/4 v14, 0x0

    invoke-virtual {v5, v14}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v14

    aput-object v14, v12, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    iput v14, v13, Landroid/text/format/Time;->year:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/secutil/SmartParser;->monthOfToday:I

    iput v14, v13, Landroid/text/format/Time;->month:I

    move-object/from16 v0, p0

    iget v14, v0, Landroid/util/secutil/SmartParser;->dayOfToday:I

    iput v14, v13, Landroid/text/format/Time;->monthDay:I

    const/4 v14, 0x0

    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Landroid/text/format/Time;->hour:I

    const-string/jumbo v14, "pm"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    const-string v14, "PM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_3

    :cond_1
    iget v14, v13, Landroid/text/format/Time;->hour:I

    const/16 v15, 0xc

    if-eq v14, v15, :cond_2

    iget v14, v13, Landroid/text/format/Time;->hour:I

    add-int/lit8 v14, v14, 0xc

    iput v14, v13, Landroid/text/format/Time;->hour:I

    :cond_2
    :goto_1
    const/4 v14, 0x1

    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Landroid/text/format/Time;->minute:I

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->second:I

    const-string v14, "SmartParser"

    const-string v15, "convertTimeToMillis() completed successfully"

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, "SmartParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "year:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->year:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", month:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->month:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", day:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->monthDay:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", hour:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->hour:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", minute:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->minute:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", second:"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    iget v0, v13, Landroid/text/format/Time;->second:I

    move/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    :goto_2
    return-object v14

    :cond_3
    const-string v14, "am"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    const-string v14, "AM"

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_4

    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    iget v14, v13, Landroid/text/format/Time;->hour:I

    const/16 v15, 0xc

    if-ne v14, v15, :cond_2

    const/4 v14, 0x0

    iput v14, v13, Landroid/text/format/Time;->hour:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    :catch_0
    move-exception v3

    const-string v14, "SmartParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "fail convertTimeToMillis() by exception : "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const-string v14, ""

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :try_start_1
    aget-object v14, v12, v14

    invoke-static {v14}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    iput v14, v13, Landroid/text/format/Time;->hour:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1
.end method

.method private parsingDateInfo()V
    .locals 14

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v9, "(((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]]))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v9, v4, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date(pattern type1): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v9, "(((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]]))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v9, v4, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date(pattern type2): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/util/secutil/SmartPatterns;->getCountryDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v9

    const/16 v10, 0x7c

    if-ne v9, v10, :cond_2

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v9, v4, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date(pattern type3, country): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    return-void
.end method

.method private parsingDateMillisInfo()V
    .locals 15

    const/4 v14, 0x1

    const/4 v13, 0x6

    const/4 v12, 0x0

    const-string v9, "((((19|20)(([02468][048])|([13579][26]))[\\-|\\/|\\.]0?2[\\-|\\/|\\.]29)|((((20[0-9][0-9])|(19[0-9][0-9]))[\\-|\\/|\\.])?(((0?[13578]|10|12)[\\-|\\/|\\.]31)|((0?[1,3-9]|1[0-2])[\\-|\\/|\\.](29|30))|((0?[1-9]|1[0-2])[\\-|\\/|\\.](1[0-9]|2[0-8]|0?[1-9])))[[:space:]])))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v5, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-virtual {v1, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-direct {p0, v4, v14}, Landroid/util/secutil/SmartParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date for millis(type1): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v9, "((((Jan|January|Mar|March|May|Jul|July|Aug|August|Oct|October|Dec|December)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Apr|April|Jun|June|Sep|September|Nov|November)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])|((Feb|February)(\\.[[:space:]]?|[[:space:]])((([1-2][0-9]|3[01])(th)?)|0?1(st)?|0?2(nd)?|0?3(rd)?|0?[4-9](th)?)((\\,[[:space:]]?|\\.[[:space:]]?|[[:space:]]?)((20[0-9][0-9])|(19[0-9][0-9]))?)?[[:space:]])))"

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v6

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v6, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    :goto_1
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-virtual {v2, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v10, 0x2

    invoke-direct {p0, v4, v10}, Landroid/util/secutil/SmartParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date for millis(type2): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/util/secutil/SmartPatterns;->getCountryDateString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_2

    invoke-virtual {v0, v12}, Ljava/lang/String;->charAt(I)C

    move-result v9

    const/16 v10, 0x7c

    if-ne v9, v10, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "("

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ")"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v7

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v9

    const-string/jumbo v10, "\uff03"

    invoke-virtual {v9, v10}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    :goto_2
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-virtual {v3, v12}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, v9}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v9, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-direct {p0, v4, v14}, Landroid/util/secutil/SmartParser;->convertDateToMillis(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v13}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v9, "SmartParser"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "add date for millis(type3, country): "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    return-void
.end method

.method private parsingEmailInfo()V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-ltz v4, :cond_1

    sget-object v3, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    :goto_0
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-lt v4, v8, :cond_0

    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string/jumbo v5, "\uff03"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    :cond_0
    sget-object v0, Landroid/util/secutil/SmartPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, ""

    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-lt v4, v8, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v5, 0x4

    invoke-virtual {v4, v2, v5}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v4, "SmartParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add email address : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/util/secutil/SmartPatterns;->EMAIL_ADDRESS_WEAK:Ljava/util/regex/Pattern;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    return-void
.end method

.method private parsingPhoneNumInfo()V
    .locals 8

    const/4 v7, 0x0

    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    if-ltz v4, :cond_1

    sget-object v3, Landroid/util/secutil/SmartPatterns;->PHONE_NUMBER:Ljava/util/regex/Pattern;

    :goto_0
    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string/jumbo v5, "\uff03"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    sget-object v0, Landroid/util/secutil/SmartPatterns;->HYPHEN:Ljava/util/regex/Pattern;

    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_3

    const-string v2, ""

    iget v4, p0, Landroid/util/secutil/SmartParser;->mDegree:I

    const/4 v5, -0x1

    if-lt v4, v5, :cond_2

    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4, v7}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v0, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, "-"

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x7

    if-lt v4, v5, :cond_0

    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v5, 0x3

    invoke-virtual {v4, v2, v5}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v4, "SmartParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add tel number : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_1
    sget-object v3, Landroid/util/secutil/SmartPatterns;->PHONE_NUMBER_WEAK:Ljava/util/regex/Pattern;

    goto :goto_0

    :cond_2
    invoke-virtual {v1, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->refactoringPhoneNumber()V

    return-void
.end method

.method private parsingTimeInfo()V
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/util/secutil/SmartPatterns;->getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v4, "\uff03"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v4, 0x2

    invoke-virtual {v3, v1, v4}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v3, "SmartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parsingTimeMillisInfo()V
    .locals 6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "(((((0[1-9]|1[1-2])[[:space:]]?\\:[[:space:]]?[0-5][0-9][[:space:]]?(am|pm|AM|PM))|(([0-1][0-9]|2[0-3])[[:space:]]?\\:[[:space:]]?[0-5][0-9]))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/util/secutil/SmartParser;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/util/secutil/SmartPatterns;->getCountryTimeString(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "))"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v4, "\uff03"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-direct {p0, v1}, Landroid/util/secutil/SmartParser;->convertTimeToMillis(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v3, "SmartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add time for millis : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private parsingURLInfo()V
    .locals 6

    sget-object v2, Landroid/util/Patterns;->WEB_URL_EX:Ljava/util/regex/Pattern;

    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    const-string/jumbo v4, "\uff03"

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    const/4 v4, 0x5

    invoke-virtual {v3, v1, v4}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v3, "SmartParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "add URL : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private refactoringPhoneNumber()V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v5, v9}, Landroid/util/secutil/SmartParsingData;->getCount(I)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2

    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v5, v9}, Landroid/util/secutil/SmartParsingData;->getInfo(I)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v0, v5, :cond_1

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_0

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-lez v3, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    div-int/2addr v5, v3

    add-int/lit8 v5, v5, 0x1

    const/16 v6, 0x8

    if-le v5, v6, :cond_2

    sget-object v2, Landroid/util/secutil/SmartPatterns;->REFACTORING_PHONE_NUMBER:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v5, v8, v9}, Landroid/util/secutil/SmartParsingData;->deleteInfo(II)Z

    :goto_1
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v9}, Landroid/util/secutil/SmartParsingData;->setInfo(Ljava/lang/String;I)V

    const-string v5, "SmartParser"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "add refactoring phone number : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method private removeUnnecessary(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Landroid/util/secutil/SmartParser;->removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private removeUnnecessary(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, ""

    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    const-string v4, "\n"

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    const-string v4, " "

    invoke-virtual {p1, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    if-nez p2, :cond_4

    const-string v4, "[:space:]"

    invoke-static {v4}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    :goto_0
    return-object v3

    :cond_4
    move-object v3, v2

    goto :goto_0
.end method


# virtual methods
.method public clear()V
    .locals 1

    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v0}, Landroid/util/secutil/SmartParsingData;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    return-void
.end method

.method public convertDayToInteger(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "st"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "nd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "rd"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "th"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_2
    return-object p1
.end method

.method public doParsing()V
    .locals 2

    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingEmailInfo()V

    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingDateInfo()V

    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingTimeInfo()V

    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingPhoneNumInfo()V

    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingURLInfo()V

    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingDateMillisInfo()V

    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->parsingTimeMillisInfo()V

    invoke-direct {p0}, Landroid/util/secutil/SmartParser;->arrangeRemainData()V

    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    iget-object v1, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/util/secutil/SmartParsingData;->setRemainData(Ljava/lang/String;)V

    return-void
.end method

.method public getTotalData()Landroid/util/secutil/SmartParsingData;
    .locals 1

    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    return-object v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/util/secutil/SmartParsingData;

    invoke-direct {v0}, Landroid/util/secutil/SmartParsingData;-><init>()V

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    iget-object v0, p0, Landroid/util/secutil/SmartParser;->mParsingData:Landroid/util/secutil/SmartParsingData;

    invoke-virtual {v0, p1}, Landroid/util/secutil/SmartParsingData;->setOriginalData(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mWorkStr:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->mWorkStrForMillis:Ljava/lang/String;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    iget-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/secutil/SmartParser;->yearOfToday:I

    iget-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/secutil/SmartParser;->monthOfToday:I

    iget-object v0, p0, Landroid/util/secutil/SmartParser;->today:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iput v0, p0, Landroid/util/secutil/SmartParser;->dayOfToday:I

    return-void
.end method
