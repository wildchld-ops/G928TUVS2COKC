.class public Lmf/org/apache/xml/serialize/XHTMLSerializer;
.super Lmf/org/apache/xml/serialize/HTMLSerializer;
.source "XHTMLSerializer.java"


# direct methods
.method public constructor <init>()V
    .locals 5

    const/4 v0, 0x1

    new-instance v1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v2, "xhtml"

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-direct {p0, v0, v1}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {p0, v0, p2}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XHTMLSerializer;->setOutputByteStream(Ljava/io/OutputStream;)V

    return-void

    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xhtml"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p2, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/io/Writer;Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    :goto_0
    invoke-direct {p0, v0, p2}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    invoke-virtual {p0, p1}, Lmf/org/apache/xml/serialize/XHTMLSerializer;->setOutputCharStream(Ljava/io/Writer;)V

    return-void

    :cond_0
    new-instance p2, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xhtml"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p2, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method public constructor <init>(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 4

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    :goto_0
    invoke-direct {p0, v0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;-><init>(ZLmf/org/apache/xml/serialize/OutputFormat;)V

    return-void

    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v1, "xhtml"

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p1, v1, v2, v3}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method


# virtual methods
.method public setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V
    .locals 3

    if-eqz p1, :cond_0

    :goto_0
    invoke-super {p0, p1}, Lmf/org/apache/xml/serialize/HTMLSerializer;->setOutputFormat(Lmf/org/apache/xml/serialize/OutputFormat;)V

    return-void

    :cond_0
    new-instance p1, Lmf/org/apache/xml/serialize/OutputFormat;

    const-string/jumbo v0, "xhtml"

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lmf/org/apache/xml/serialize/OutputFormat;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method
