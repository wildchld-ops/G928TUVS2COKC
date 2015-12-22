.class public final Lmf/org/apache/xerces/stax/events/EndElementImpl;
.super Lmf/org/apache/xerces/stax/events/ElementImpl;
.source "EndElementImpl.java"

# interfaces
.implements Lmf/javax/xml/stream/events/EndElement;


# direct methods
.method public constructor <init>(Lmf/javax/xml/namespace/QName;Ljava/util/Iterator;Lmf/javax/xml/stream/Location;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Lmf/org/apache/xerces/stax/events/ElementImpl;-><init>(Lmf/javax/xml/namespace/QName;ZLjava/util/Iterator;Lmf/javax/xml/stream/Location;)V

    return-void
.end method


# virtual methods
.method public writeAsEncodedUnicode(Ljava/io/Writer;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/javax/xml/stream/XMLStreamException;
        }
    .end annotation

    :try_start_0
    const-string v3, "</"

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    invoke-virtual {p0}, Lmf/org/apache/xerces/stax/events/EndElementImpl;->getName()Lmf/javax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Lmf/javax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x3a

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V

    :cond_0
    invoke-virtual {v1}, Lmf/javax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    const/16 v3, 0x3e

    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v3, Lmf/javax/xml/stream/XMLStreamException;

    invoke-direct {v3, v0}, Lmf/javax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method
