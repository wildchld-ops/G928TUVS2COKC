.class public final Lmf/org/apache/xerces/impl/xpath/regex/REUtil;
.super Ljava/lang/Object;
.source "REUtil.java"


# static fields
.field static final CACHESIZE:I = 0x14

.field static final regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x14

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    sput-object v0, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static final composeFromSurrogates(II)I
    .locals 2

    const/high16 v0, 0x10000

    const v1, 0xd800

    sub-int v1, p0, v1

    shl-int/lit8 v1, v1, 0xa

    add-int/2addr v0, v1

    add-int/2addr v0, p1

    const v1, 0xdc00

    sub-int/2addr v0, v1

    return v0
.end method

.method static final createOptionString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(I)V

    and-int/lit16 v1, p0, 0x100

    if-eqz v1, :cond_0

    const/16 v1, 0x46

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_0
    and-int/lit16 v1, p0, 0x80

    if-eqz v1, :cond_1

    const/16 v1, 0x48

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_1
    and-int/lit16 v1, p0, 0x200

    if-eqz v1, :cond_2

    const/16 v1, 0x58

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    and-int/lit8 v1, p0, 0x2

    if-eqz v1, :cond_3

    const/16 v1, 0x69

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    and-int/lit8 v1, p0, 0x8

    if-eqz v1, :cond_4

    const/16 v1, 0x6d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_4
    and-int/lit8 v1, p0, 0x4

    if-eqz v1, :cond_5

    const/16 v1, 0x73

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_5
    and-int/lit8 v1, p0, 0x20

    if-eqz v1, :cond_6

    const/16 v1, 0x75

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_6
    and-int/lit8 v1, p0, 0x40

    if-eqz v1, :cond_7

    const/16 v1, 0x77

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_7
    and-int/lit8 v1, p0, 0x10

    if-eqz v1, :cond_8

    const/16 v1, 0x78

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_8
    and-int/lit16 v1, p0, 0x400

    if-eqz v1, :cond_9

    const/16 v1, 0x2c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_9
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-static {p1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->parseOptions(Ljava/lang/String;)I

    move-result v2

    sget-object v6, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    monitor-enter v6

    const/4 v1, 0x0

    :goto_0
    const/16 v5, 0x14

    if-lt v1, v5, :cond_0

    move-object v4, v3

    :goto_1
    if-eqz v4, :cond_3

    if-eqz v1, :cond_4

    :try_start_0
    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v9, 0x1

    invoke-static {v5, v7, v8, v9, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v7, 0x0

    aput-object v4, v5, v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v3, v4

    :goto_2
    :try_start_1
    monitor-exit v6

    return-object v3

    :cond_0
    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    aget-object v0, v5, v1

    if-nez v0, :cond_1

    const/4 v1, -0x1

    move-object v4, v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0, p0, v2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->equals(Ljava/lang/String;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v5

    if-eqz v5, :cond_2

    move-object v3, v0

    move-object v4, v3

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :try_start_2
    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-direct {v3, p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v7, 0x0

    sget-object v8, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v9, 0x1

    const/16 v10, 0x13

    invoke-static {v5, v7, v8, v9, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v5, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->regexCache:[Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    const/4 v7, 0x0

    aput-object v3, v5, v7

    goto :goto_2

    :catchall_0
    move-exception v5

    :goto_3
    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v5

    :catchall_1
    move-exception v5

    move-object v3, v4

    goto :goto_3

    :cond_4
    move-object v3, v4

    goto :goto_2
.end method

.method static final decomposeToSurrogates(I)Ljava/lang/String;
    .locals 4

    const/4 v1, 0x2

    new-array v0, v1, [C

    const/high16 v1, 0x10000

    sub-int/2addr p0, v1

    const/4 v1, 0x0

    shr-int/lit8 v2, p0, 0xa

    const v3, 0xd800

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    const/4 v1, 0x1

    and-int/lit16 v2, p0, 0x3ff

    const v3, 0xdc00

    add-int/2addr v2, v3

    int-to-char v2, v2

    aput-char v2, v0, v1

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([C)V

    return-object v1
.end method

.method static dumpString(Ljava/lang/String;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-lt v0, v1, :cond_0

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    return-void

    :cond_0
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method static final getOptionValue(I)I
    .locals 1

    const/4 v0, 0x0

    sparse-switch p0, :sswitch_data_0

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x8

    goto :goto_0

    :sswitch_2
    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x10

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x20

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x40

    goto :goto_0

    :sswitch_6
    const/16 v0, 0x100

    goto :goto_0

    :sswitch_7
    const/16 v0, 0x80

    goto :goto_0

    :sswitch_8
    const/16 v0, 0x200

    goto :goto_0

    :sswitch_9
    const/16 v0, 0x400

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x2c -> :sswitch_9
        0x46 -> :sswitch_6
        0x48 -> :sswitch_7
        0x58 -> :sswitch_8
        0x69 -> :sswitch_0
        0x6d -> :sswitch_1
        0x73 -> :sswitch_2
        0x75 -> :sswitch_4
        0x77 -> :sswitch_5
        0x78 -> :sswitch_3
    .end sparse-switch
.end method

.method static final isHighSurrogate(I)Z
    .locals 2

    const v0, 0xfc00

    and-int/2addr v0, p0

    const v1, 0xd800

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static final isLowSurrogate(I)Z
    .locals 2

    const v0, 0xfc00

    and-int/2addr v0, p0

    const v1, 0xdc00

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 13

    const/4 v6, 0x0

    :try_start_0
    const-string v5, ""

    const/4 v9, 0x0

    array-length v10, p0

    if-nez v10, :cond_0

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Error:Usage: java REUtil -i|-m|-s|-u|-w|-X regularExpression String"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    :cond_0
    const/4 v1, 0x0

    :goto_0
    array-length v10, p0

    if-lt v1, v10, :cond_2

    new-instance v8, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    invoke-direct {v8, v6, v5}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "RegularExpression: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v4, Lmf/org/apache/xerces/impl/xpath/regex/Match;

    invoke-direct {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;-><init>()V

    invoke-virtual {v8, v9, v4}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;Lmf/org/apache/xerces/impl/xpath/regex/Match;)Z

    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getNumberOfGroups()I

    move-result v10

    if-lt v1, v10, :cond_d

    :cond_1
    :goto_2
    return-void

    :cond_2
    aget-object v10, p0, v1

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-eqz v10, :cond_3

    aget-object v10, p0, v1

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    const/16 v11, 0x2d

    if-eq v10, v11, :cond_6

    :cond_3
    if-nez v6, :cond_4

    aget-object v6, p0, v1

    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    if-nez v9, :cond_5

    aget-object v9, p0, v1

    goto :goto_3

    :cond_5
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unnecessary: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, p0, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_3

    :catch_0
    move-exception v7

    if-nez v6, :cond_10

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->printStackTrace()V

    goto :goto_2

    :cond_6
    :try_start_1
    aget-object v10, p0, v1

    const-string v11, "-i"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "i"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_7
    aget-object v10, p0, v1

    const-string v11, "-m"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "m"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    :cond_8
    aget-object v10, p0, v1

    const-string v11, "-s"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "s"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    :cond_9
    aget-object v10, p0, v1

    const-string v11, "-u"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "u"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    :cond_a
    aget-object v10, p0, v1

    const-string v11, "-w"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_b

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v11, "w"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    :cond_b
    aget-object v10, p0, v1

    const-string v11, "-X"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_c

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v11, "X"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    :cond_c
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "Unknown option: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    aget-object v12, p0, v1

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    :cond_d
    if-nez v1, :cond_e

    :try_start_2
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "Matched range for the whole pattern: "

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_4
    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v10

    if-gez v10, :cond_f

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v11, "-1"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    :goto_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_e
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "["

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "]: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getBeginning(I)I

    move-result v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getEnd(I)I

    move-result v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string v12, "\""

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xpath/regex/Match;->getCapturedText(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Lmf/org/apache/xerces/impl/xpath/regex/ParseException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_5

    :cond_10
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    const-string/jumbo v12, "mf.org.apache.xerces.utils.regex.ParseException: "

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    const-string v2, "        "

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;->getLocation()I

    move-result v3

    if-ltz v3, :cond_1

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v10, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    const/4 v1, 0x0

    :goto_6
    if-lt v1, v3, :cond_11

    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "^"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_11
    sget-object v10, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v11, "-"

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static matches(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    invoke-static {p0, p1}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->createRegex(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;

    move-result-object v0

    invoke-virtual {v0, p2}, Lmf/org/apache/xerces/impl/xpath/regex/RegularExpression;->matches(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static final parseOptions(Ljava/lang/String;)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xpath/regex/ParseException;
        }
    .end annotation

    if-nez p0, :cond_1

    const/4 v1, 0x0

    :cond_0
    return v1

    :cond_1
    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/impl/xpath/regex/REUtil;->getOptionValue(I)I

    move-result v2

    if-nez v2, :cond_2

    new-instance v3, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown Option: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    invoke-direct {v3, v4, v5}, Lmf/org/apache/xerces/impl/xpath/regex/ParseException;-><init>(Ljava/lang/String;I)V

    throw v3

    :cond_2
    or-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static quoteMeta(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    if-lt v2, v3, :cond_1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    :cond_1
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const-string v4, ".*+?{[()|\\^$"

    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-ltz v4, :cond_4

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuffer;

    sub-int v4, v3, v2

    mul-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v2

    invoke-direct {v0, v4}, Ljava/lang/StringBuffer;-><init>(I)V

    if-lez v2, :cond_2

    const/4 v4, 0x0

    invoke-virtual {p0, v4, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    const/16 v4, 0x5c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    if-eqz v0, :cond_3

    int-to-char v4, v1

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_1
.end method

.method static stripExtendedComment(Ljava/lang/String;)Ljava/lang/String;
    .locals 13

    const/16 v12, 0x9

    const/16 v11, 0x5d

    const/16 v10, 0x5b

    const/16 v9, 0xd

    const/16 v8, 0xa

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v5, 0x0

    const/4 v2, 0x0

    move v6, v5

    :cond_0
    :goto_0
    if-lt v6, v3, :cond_1

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7

    :cond_1
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v12, :cond_2

    if-eq v1, v8, :cond_2

    const/16 v7, 0xc

    if-eq v1, v7, :cond_2

    if-eq v1, v9, :cond_2

    const/16 v7, 0x20

    if-ne v1, v7, :cond_3

    :cond_2
    if-lez v2, :cond_d

    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move v6, v5

    goto :goto_0

    :cond_3
    const/16 v7, 0x23

    if-ne v1, v7, :cond_4

    move v6, v5

    :goto_1
    if-ge v6, v3, :cond_0

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-eq v1, v9, :cond_d

    if-ne v1, v8, :cond_e

    move v6, v5

    goto :goto_0

    :cond_4
    const/16 v7, 0x5c

    if-ne v1, v7, :cond_7

    if-ge v5, v3, :cond_7

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v7, 0x23

    if-eq v4, v7, :cond_5

    if-eq v4, v12, :cond_5

    if-eq v4, v8, :cond_5

    const/16 v7, 0xc

    if-eq v4, v7, :cond_5

    if-eq v4, v9, :cond_5

    const/16 v7, 0x20

    if-ne v4, v7, :cond_6

    :cond_5
    int-to-char v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    move v6, v5

    goto :goto_0

    :cond_6
    const/16 v7, 0x5c

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    move v6, v5

    goto :goto_0

    :cond_7
    if-ne v1, v10, :cond_b

    add-int/lit8 v2, v2, 0x1

    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    if-ge v5, v3, :cond_d

    invoke-virtual {p0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v10, :cond_8

    if-ne v4, v11, :cond_9

    :cond_8
    int-to-char v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x1

    move v6, v5

    goto :goto_0

    :cond_9
    const/16 v7, 0x5e

    if-ne v4, v7, :cond_d

    add-int/lit8 v7, v5, 0x1

    if-ge v7, v3, :cond_d

    add-int/lit8 v7, v5, 0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->charAt(I)C

    move-result v4

    if-eq v4, v10, :cond_a

    if-ne v4, v11, :cond_d

    :cond_a
    const/16 v7, 0x5e

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    int-to-char v7, v4

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v5, v5, 0x2

    move v6, v5

    goto/16 :goto_0

    :cond_b
    if-lez v2, :cond_c

    if-ne v1, v11, :cond_c

    add-int/lit8 v2, v2, -0x1

    :cond_c
    int-to-char v7, v1

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_d
    move v6, v5

    goto/16 :goto_0

    :cond_e
    move v6, v5

    goto/16 :goto_1
.end method

.method static final substring(Ljava/text/CharacterIterator;II)Ljava/lang/String;
    .locals 3

    sub-int v2, p2, p1

    new-array v1, v2, [C

    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-lt v0, v2, :cond_0

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([C)V

    return-object v2

    :cond_0
    add-int v2, v0, p1

    invoke-interface {p0, v2}, Ljava/text/CharacterIterator;->setIndex(I)C

    move-result v2

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
