.class public final Lmf/org/apache/xerces/stax/events/StartDocumentImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "StartDocumentImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/StartDocument;


# instance fields
.field private final fCharEncoding:Ljava/lang/String;

.field private final fEncodingSet:Z

.field private final fIsStandalone:Z

.field private final fStandaloneSet:Z

.field private final fVersion:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZZZLjava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1

    const/4 v0, 0x7

    invoke-direct {p0, v0, p6}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    iput-boolean p2, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fEncodingSet:Z

    iput-boolean p3, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    iput-boolean p4, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fStandaloneSet:Z

    iput-object p5, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public encodingSet()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fEncodingSet:Z

    return v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    return-object v0
.end method

.method public getSystemId()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->getLocation()Lmf/javax/xml/stream/Location;

    move-result-object v0

    invoke-interface {v0}, Lmf/javax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    return-object v0
.end method

.method public isStandalone()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    return v0
.end method

.method public standaloneSet()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fStandaloneSet:Z

    return v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    const-string v1, "<?xml version=\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fVersion:Ljava/lang/String;

    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->encodingSet()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, " encoding=\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fCharEncoding:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_0
    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->standaloneSet()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, " standalone=\""

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    iget-boolean v1, p0, Lmf/org/apache/xerces/stax/events/StartDocumentImpl;->fIsStandalone:Z

    if-eqz v1, :cond_3

    const-string/jumbo v1, "yes"

    :goto_1
    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v1, 0x22

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(I)V

    :cond_1
    const-string v1, "?>"

    invoke-virtual {p1, v1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    return-void

    :cond_2
    const-string v1, "1.0"

    goto :goto_0

    :cond_3
    const-string/jumbo v1, "no"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
