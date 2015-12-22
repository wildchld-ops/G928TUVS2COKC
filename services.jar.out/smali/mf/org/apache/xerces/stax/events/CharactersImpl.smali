.class public final Lmf/org/apache/xerces/stax/events/CharactersImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "CharactersImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/Characters;


# instance fields
.field private final fData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILmf/javax/xml/stream/Location;)V
    .locals 0

    invoke-direct {p0, p2, p3}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    return-void

    :cond_0
    const-string p1, ""

    goto :goto_0
.end method


# virtual methods
.method public getData()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    return-object v0
.end method

.method public isCData()Z
    .locals 2

    const/16 v0, 0xc

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/CharactersImpl;->getEventType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIgnorableWhiteSpace()Z
    .locals 2

    const/4 v0, 0x6

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/CharactersImpl;->getEventType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWhiteSpace()Z
    .locals 4

    const/4 v2, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    :goto_0
    if-nez v1, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-lt v0, v1, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Lmf/org/apache/xerces/util/XMLChar;->isSpace(I)Z

    move-result v3

    if-eqz v3, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/CharactersImpl;->fData:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
