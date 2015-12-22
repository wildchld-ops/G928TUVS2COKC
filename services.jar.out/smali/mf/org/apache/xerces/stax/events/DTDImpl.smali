.class public final Lmf/org/apache/xerces/stax/events/DTDImpl;
.super Lmf/org/apache/xerces/stax/events/XMLEventImpl;
.source "DTDImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/DTD;


# instance fields
.field private final fDTD:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lmf/javax/xml/stream/Location;)V
    .locals 1

    const/16 v0, 0xb

    invoke-direct {p0, v0, p2}, Lmf/org/apache/xerces/stax/events/XMLEventImpl;-><init>(ILmf/javax/xml/stream/Location;)V

    if-eqz p1, :cond_0

    :goto_0
    iput-object p1, p0, Lmf/org/apache/xerces/stax/events/DTDImpl;->fDTD:Ljava/lang/String;

    return-void

    :cond_0
    const/4 p1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getDocumentTypeDeclaration()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/stax/events/DTDImpl;->fDTD:Ljava/lang/String;

    return-object v0
.end method

.method public getEntities()Ljava/util/List;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getNotations()Ljava/util/List;
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v0
.end method

.method public getProcessedDTD()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    iget-object v1, p0, Lmf/org/apache/xerces/stax/events/DTDImpl;->fDTD:Ljava/lang/String;

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
