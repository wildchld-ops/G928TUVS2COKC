.class public Lmf/org/apache/xerces/xinclude/XIncludeTextReader;
.super Ljava/lang/Object;
.source "XIncludeTextReader.java"


# instance fields
.field private fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

.field private final fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

.field private fReader:Ljava/io/Reader;

.field private fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

.field private fTempString:Lmf/org/apache/xerces/xni/XMLString;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/xni/parser/XMLInputSource;Lmf/org/apache/xerces/xinclude/XIncludeHandler;I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    invoke-direct {v0}, Lmf/org/apache/xerces/xni/XMLString;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iput-object p2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    new-instance v0, Lmf/org/apache/xerces/xni/XMLString;

    add-int/lit8 v1, p3, 0x1

    new-array v1, v1, [C

    invoke-direct {v0, v1, v2, v2}, Lmf/org/apache/xerces/xni/XMLString;-><init>([CII)V

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    return-void
.end method

.method private createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    new-instance v0, Lmf/org/apache/xerces/impl/io/ASCIIReader;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/ASCIIReader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method private createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/io/Latin1Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    invoke-direct {v0, p1, v1}, Lmf/org/apache/xerces/impl/io/Latin1Reader;-><init>(Ljava/io/InputStream;I)V

    return-object v0
.end method

.method private createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;
    .locals 6

    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF16Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    shl-int/lit8 v2, v1, 0x1

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v1, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v4

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v5

    move-object v1, p1

    move v3, p2

    invoke-direct/range {v0 .. v5}, Lmf/org/apache/xerces/impl/io/UTF16Reader;-><init>(Ljava/io/InputStream;IZLmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method

.method private createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;
    .locals 4

    new-instance v0, Lmf/org/apache/xerces/impl/io/UTF8Reader;

    iget-object v1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v1, v1, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v1, v1

    iget-object v2, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v3, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v2

    iget-object v3, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v3

    invoke-direct {v0, p1, v1, v2, v3}, Lmf/org/apache/xerces/impl/io/UTF8Reader;-><init>(Ljava/io/InputStream;ILmf/org/apache/xerces/util/MessageFormatter;Ljava/util/Locale;)V

    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    :cond_0
    return-void
.end method

.method protected consumeBOM(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v10, 0xfe

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x0

    new-array v0, v7, [B

    const/4 v4, 0x0

    invoke-virtual {p1, v7}, Ljava/io/InputStream;->mark(I)V

    const-string v5, "UTF-8"

    invoke-virtual {p2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {p1, v0, v6, v7}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v7, :cond_2

    aget-byte v5, v0, v6

    and-int/lit16 v1, v5, 0xff

    aget-byte v5, v0, v9

    and-int/lit16 v2, v5, 0xff

    aget-byte v5, v0, v8

    and-int/lit16 v3, v5, 0xff

    const/16 v5, 0xef

    if-ne v1, v5, :cond_0

    const/16 v5, 0xbb

    if-ne v2, v5, :cond_0

    const/16 v5, 0xbf

    if-eq v3, v5, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    :cond_1
    :goto_0
    return-object p2

    :cond_2
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    :cond_3
    const-string v5, "UTF-16"

    invoke-virtual {p2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p1, v0, v6, v8}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-ne v4, v8, :cond_5

    aget-byte v5, v0, v6

    and-int/lit16 v1, v5, 0xff

    aget-byte v5, v0, v9

    and-int/lit16 v2, v5, 0xff

    if-ne v1, v10, :cond_4

    const/16 v5, 0xff

    if-ne v2, v5, :cond_4

    const-string p2, "UTF-16BE"

    goto :goto_0

    :cond_4
    const/16 v5, 0xff

    if-ne v1, v5, :cond_5

    if-ne v2, v10, :cond_5

    const-string p2, "UTF-16LE"

    goto :goto_0

    :cond_5
    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    goto :goto_0
.end method

.method protected getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v4, 0x4

    new-array v0, v4, [B

    const/4 v2, 0x0

    invoke-virtual {p1, v4}, Ljava/io/InputStream;->mark(I)V

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v4}, Ljava/io/InputStream;->read([BII)I

    move-result v1

    invoke-virtual {p1}, Ljava/io/InputStream;->reset()V

    if-ne v1, v4, :cond_0

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName([B)Ljava/lang/String;

    move-result-object v2

    :cond_0
    return-object v2
.end method

.method protected getEncodingName([B)Ljava/lang/String;
    .locals 9

    const/16 v8, 0xff

    const/16 v7, 0xfe

    const/16 v6, 0x3f

    const/16 v5, 0x3c

    const/4 v4, 0x0

    aget-byte v4, p1, v4

    and-int/lit16 v0, v4, 0xff

    const/4 v4, 0x1

    aget-byte v4, p1, v4

    and-int/lit16 v1, v4, 0xff

    if-ne v0, v7, :cond_0

    if-ne v1, v8, :cond_0

    const-string v4, "UTF-16BE"

    :goto_0
    return-object v4

    :cond_0
    if-ne v0, v8, :cond_1

    if-ne v1, v7, :cond_1

    const-string v4, "UTF-16LE"

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    aget-byte v4, p1, v4

    and-int/lit16 v2, v4, 0xff

    const/16 v4, 0xef

    if-ne v0, v4, :cond_2

    const/16 v4, 0xbb

    if-ne v1, v4, :cond_2

    const/16 v4, 0xbf

    if-ne v2, v4, :cond_2

    const-string v4, "UTF-8"

    goto :goto_0

    :cond_2
    const/4 v4, 0x3

    aget-byte v4, p1, v4

    and-int/lit16 v3, v4, 0xff

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    if-nez v2, :cond_3

    if-ne v3, v5, :cond_3

    const-string v4, "ISO-10646-UCS-4"

    goto :goto_0

    :cond_3
    if-ne v0, v5, :cond_4

    if-nez v1, :cond_4

    if-nez v2, :cond_4

    if-nez v3, :cond_4

    const-string v4, "ISO-10646-UCS-4"

    goto :goto_0

    :cond_4
    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-ne v2, v5, :cond_5

    if-nez v3, :cond_5

    const-string v4, "ISO-10646-UCS-4"

    goto :goto_0

    :cond_5
    if-nez v0, :cond_6

    if-ne v1, v5, :cond_6

    if-nez v2, :cond_6

    if-nez v3, :cond_6

    const-string v4, "ISO-10646-UCS-4"

    goto :goto_0

    :cond_6
    if-nez v0, :cond_7

    if-ne v1, v5, :cond_7

    if-nez v2, :cond_7

    if-ne v3, v6, :cond_7

    const-string v4, "UTF-16BE"

    goto :goto_0

    :cond_7
    if-ne v0, v5, :cond_8

    if-nez v1, :cond_8

    if-ne v2, v6, :cond_8

    if-nez v3, :cond_8

    const-string v4, "UTF-16LE"

    goto :goto_0

    :cond_8
    const/16 v4, 0x4c

    if-ne v0, v4, :cond_9

    const/16 v4, 0x6f

    if-ne v1, v4, :cond_9

    const/16 v4, 0xa7

    if-ne v2, v4, :cond_9

    const/16 v4, 0x94

    if-ne v3, v4, :cond_9

    const-string v4, "CP037"

    goto :goto_0

    :cond_9
    const/4 v4, 0x0

    goto :goto_0
.end method

.method protected getReader(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Ljava/io/Reader;
    .locals 26
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v22

    if-eqz v22, :cond_0

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getCharacterStream()Ljava/io/Reader;

    move-result-object v22

    :goto_0
    return-object v22

    :cond_0
    const/16 v17, 0x0

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getEncoding()Ljava/lang/String;

    move-result-object v8

    if-nez v8, :cond_1

    const-string v8, "UTF-8"

    :cond_1
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v22

    if-eqz v22, :cond_3

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getByteStream()Ljava/io/InputStream;

    move-result-object v17

    move-object/from16 v0, v17

    instance-of v0, v0, Ljava/io/BufferedInputStream;

    move/from16 v22, v0

    if-nez v22, :cond_2

    new-instance v18, Ljava/io/BufferedInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v22, v0

    move-object/from16 v0, v18

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object/from16 v17, v18

    :cond_2
    :goto_1
    sget-object v22, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v8}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->consumeBOM(Ljava/io/InputStream;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v22, "UTF-8"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_11

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createUTF8Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v22

    goto :goto_0

    :cond_3
    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getSystemId()Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lmf/org/apache/xerces/xni/parser/XMLInputSource;->getBaseSystemId()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Lmf/org/apache/xerces/impl/XMLEntityManager;->expandSystemId(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v10

    new-instance v19, Ljava/net/URL;

    move-object/from16 v0, v19

    invoke-direct {v0, v10}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v20

    move-object/from16 v0, v20

    instance-of v0, v0, Ljava/net/HttpURLConnection;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Lmf/org/apache/xerces/util/HTTPInputSource;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    move-object/from16 v21, v20

    check-cast v21, Ljava/net/HttpURLConnection;

    move-object/from16 v12, p1

    check-cast v12, Lmf/org/apache/xerces/util/HTTPInputSource;

    invoke-virtual {v12}, Lmf/org/apache/xerces/util/HTTPInputSource;->getHTTPRequestProperties()Ljava/util/Iterator;

    move-result-object v15

    :goto_2
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-nez v22, :cond_9

    invoke-virtual {v12}, Lmf/org/apache/xerces/util/HTTPInputSource;->getFollowHTTPRedirects()Z

    move-result v11

    if-nez v11, :cond_4

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    :cond_4
    new-instance v17, Ljava/io/BufferedInputStream;

    invoke-virtual/range {v20 .. v20}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v22

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual/range {v20 .. v20}, Ljava/net/URLConnection;->getContentType()Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_a

    const/16 v22, 0x3b

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v13

    :goto_3
    const/4 v6, 0x0

    const/4 v5, 0x0

    const/16 v22, -0x1

    move/from16 v0, v22

    if-eq v13, v0, :cond_c

    const/16 v22, 0x0

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v22, v13, 0x1

    move-object/from16 v0, v16

    move/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const-string v22, "charset="

    move-object/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_b

    const/16 v22, 0x8

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x22

    move/from16 v0, v22

    move/from16 v1, v23

    if-eq v0, v1, :cond_6

    :cond_5
    const/16 v22, 0x0

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x27

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, -0x1

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/String;->charAt(I)C

    move-result v22

    const/16 v23, 0x27

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    :cond_6
    const/16 v22, 0x1

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v23

    add-int/lit8 v23, v23, -0x1

    move/from16 v0, v22

    move/from16 v1, v23

    invoke-virtual {v5, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    :cond_7
    :goto_4
    const/4 v7, 0x0

    const-string/jumbo v22, "text/xml"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_e

    if-eqz v5, :cond_d

    move-object v7, v5

    :cond_8
    :goto_5
    if-eqz v7, :cond_2

    move-object v8, v7

    goto/16 :goto_1

    :cond_9
    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/Map$Entry;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/lang/String;

    invoke-interface {v9}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/String;

    invoke-virtual/range {v21 .. v23}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_a
    const/4 v13, -0x1

    goto/16 :goto_3

    :cond_b
    const/4 v5, 0x0

    goto :goto_4

    :cond_c
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    :cond_d
    const-string v7, "US-ASCII"

    goto :goto_5

    :cond_e
    const-string v22, "application/xml"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_10

    if-eqz v5, :cond_f

    move-object v7, v5

    goto :goto_5

    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_10
    const-string v22, "+xml"

    move-object/from16 v0, v22

    invoke-virtual {v6, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v22

    if-eqz v22, :cond_8

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getEncodingName(Ljava/io/InputStream;)Ljava/lang/String;

    move-result-object v7

    goto :goto_5

    :cond_11
    const-string v22, "UTF-16BE"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_12

    const/16 v22, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v22

    goto/16 :goto_0

    :cond_12
    const-string v22, "UTF-16LE"

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_13

    const/16 v22, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    move/from16 v2, v22

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createUTF16Reader(Ljava/io/InputStream;Z)Ljava/io/Reader;

    move-result-object v22

    goto/16 :goto_0

    :cond_13
    invoke-static {v8}, Lmf/org/apache/xerces/util/EncodingMap;->getIANA2JavaMapping(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-nez v14, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v22, v0

    const-string/jumbo v23, "http://www.w3.org/TR/1998/REC-xml-19980210"

    invoke-virtual/range {v22 .. v23}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getMessageFormatter(Ljava/lang/String;)Lmf/org/apache/xerces/util/MessageFormatter;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->getLocale()Ljava/util/Locale;

    move-result-object v4

    new-instance v22, Ljava/io/IOException;

    const-string v23, "EncodingDeclInvalid"

    const/16 v24, 0x1

    move/from16 v0, v24

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v24, v0

    const/16 v25, 0x0

    aput-object v8, v24, v25

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v3, v4, v0, v1}, Lmf/org/apache/xerces/util/MessageFormatter;->formatMessage(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v23

    invoke-direct/range {v22 .. v23}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v22

    :cond_14
    const-string v22, "ASCII"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_15

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createASCIIReader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v22

    goto/16 :goto_0

    :cond_15
    const-string v22, "ISO8859_1"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_16

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->createLatin1Reader(Ljava/io/InputStream;)Ljava/io/Reader;

    move-result-object v22

    goto/16 :goto_0

    :cond_16
    new-instance v22, Ljava/io/InputStreamReader;

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-direct {v0, v1, v14}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method protected isValid(I)Z
    .locals 1

    invoke-static {p1}, Lmf/org/apache/xerces/util/XMLChar;->isValid(I)Z

    move-result v0

    return v0
.end method

.method public parse()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    invoke-virtual {p0, v6}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->getReader(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)Ljava/io/Reader;

    move-result-object v6

    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    const/4 v6, 0x0

    iput-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/4 v8, 0x0

    iget-object v9, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Reader;->read([CII)I

    move-result v3

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    const/4 v7, 0x1

    iput-boolean v7, v6, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->fHasIncludeReportedContent:Z

    :goto_0
    const/4 v6, -0x1

    if-ne v3, v6, :cond_0

    return-void

    :cond_0
    const/4 v2, 0x0

    move v4, v3

    :goto_1
    if-lt v2, v4, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    if-eqz v6, :cond_1

    if-lez v4, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    const/4 v7, 0x0

    iput v7, v6, Lmf/org/apache/xerces/xni/XMLString;->offset:I

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iput v4, v6, Lmf/org/apache/xerces/xni/XMLString;->length:I

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v8, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fHandler:Lmf/org/apache/xerces/xinclude/XIncludeHandler;

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-virtual {v8, v9, v10}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->modifyAugmentations(Lmf/org/apache/xerces/xni/Augmentations;Z)Lmf/org/apache/xerces/xni/Augmentations;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Lmf/org/apache/xerces/xinclude/XIncludeHandler;->characters(Lmf/org/apache/xerces/xni/XMLString;Lmf/org/apache/xerces/xni/Augmentations;)V

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    iget-object v7, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v7, v7, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    const/4 v8, 0x0

    iget-object v9, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v9, v9, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v9, v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v6, v7, v8, v9}, Ljava/io/Reader;->read([CII)I

    move-result v3

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v0, v6, v2

    invoke-virtual {p0, v0}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v0}, Lmf/org/apache/xerces/util/XMLChar;->isHighSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_6

    add-int/lit8 v2, v2, 0x1

    if-ge v2, v4, :cond_4

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    aget-char v1, v6, v2

    move v3, v4

    :goto_2
    invoke-static {v1}, Lmf/org/apache/xerces/util/XMLChar;->isLowSurrogate(I)Z

    move-result v6

    if-eqz v6, :cond_5

    int-to-char v6, v1

    invoke-static {v0, v6}, Lmf/org/apache/xerces/util/XMLChar;->supplemental(CC)I

    move-result v5

    invoke-virtual {p0, v5}, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->isValid(I)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "InvalidCharInContent"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-static {v5, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_3
    :goto_3
    add-int/lit8 v2, v2, 0x1

    move v4, v3

    goto :goto_1

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fReader:Ljava/io/Reader;

    invoke-virtual {v6}, Ljava/io/Reader;->read()I

    move-result v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_8

    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v6, v6, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    add-int/lit8 v3, v4, 0x1

    int-to-char v7, v1

    aput-char v7, v6, v4

    goto :goto_2

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "InvalidCharInContent"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-static {v1, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    goto :goto_3

    :cond_6
    iget-object v6, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    const-string/jumbo v7, "http://www.w3.org/TR/1998/REC-xml-19980210"

    const-string v8, "InvalidCharInContent"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    const/16 v11, 0x10

    invoke-static {v0, v11}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-virtual {v6, v7, v8, v9, v10}, Lmf/org/apache/xerces/impl/XMLErrorReporter;->reportError(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;S)Ljava/lang/String;

    :cond_7
    move v3, v4

    goto :goto_3

    :cond_8
    move v3, v4

    goto :goto_2
.end method

.method protected setBufferSize(I)V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    iget-object v0, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    array-length v0, v0

    add-int/lit8 p1, p1, 0x1

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fTempString:Lmf/org/apache/xerces/xni/XMLString;

    new-array v1, p1, [C

    iput-object v1, v0, Lmf/org/apache/xerces/xni/XMLString;->ch:[C

    :cond_0
    return-void
.end method

.method public setErrorReporter(Lmf/org/apache/xerces/impl/XMLErrorReporter;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fErrorReporter:Lmf/org/apache/xerces/impl/XMLErrorReporter;

    return-void
.end method

.method public setInputSource(Lmf/org/apache/xerces/xni/parser/XMLInputSource;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/xinclude/XIncludeTextReader;->fSource:Lmf/org/apache/xerces/xni/parser/XMLInputSource;

    return-void
.end method
