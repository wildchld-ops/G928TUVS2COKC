.class public Lcom/android/phone/photoring/http/multipart/MultipartEntity;
.super Lorg/apache/http/entity/AbstractHttpEntity;
.source "MultipartEntity.java"


# static fields
.field public static final MULTIPART_BOUNDARY:Ljava/lang/String;

.field private static final log:Lorg/apache/commons/logging/Log;


# instance fields
.field private contentConsumed:Z

.field private isWriteComplete:Z

.field private multipartBoundary:[B

.field protected parts:[Lcom/android/phone/photoring/http/multipart/Part;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;

    invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;

    move-result-object v0

    sput-object v0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->log:Lorg/apache/commons/logging/Log;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "----WebKitFormBoundary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->MULTIPART_BOUNDARY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([Lcom/android/phone/photoring/http/multipart/Part;)V
    .locals 1

    sget-object v0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->MULTIPART_BOUNDARY:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/android/phone/photoring/http/multipart/MultipartEntity;-><init>([Lcom/android/phone/photoring/http/multipart/Part;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->isWriteComplete:Z

    return-void
.end method

.method public constructor <init>([Lcom/android/phone/photoring/http/multipart/Part;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Lorg/apache/http/entity/AbstractHttpEntity;-><init>()V

    iput-boolean v0, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->contentConsumed:Z

    iput-boolean v0, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->isWriteComplete:Z

    const-string v0, "multipart/form-data"

    invoke-virtual {p0, v0}, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->setContentType(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->generateMultipartBoundary(Ljava/lang/String;)[B

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "parts cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->parts:[Lcom/android/phone/photoring/http/multipart/Part;

    return-void
.end method

.method private generateMultipartBoundary(Ljava/lang/String;)[B
    .locals 1

    if-nez p1, :cond_0

    sget-object p1, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->MULTIPART_BOUNDARY:Ljava/lang/String;

    :cond_0
    invoke-static {p1}, Lorg/apache/http/util/EncodingUtils;->getAsciiBytes(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->multipartBoundary:[B

    iget-object v0, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->multipartBoundary:[B

    return-object v0
.end method


# virtual methods
.method public getContent()Ljava/io/InputStream;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->contentConsumed:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Content has been consumed"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->contentConsumed:Z

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iget-object v1, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->parts:[Lcom/android/phone/photoring/http/multipart/Part;

    iget-object v2, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->multipartBoundary:[B

    invoke-static {v0, v1, v2}, Lcom/android/phone/photoring/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/phone/photoring/http/multipart/Part;[B)V

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    return-object v1
.end method

.method public getContentLength()J
    .locals 4

    :try_start_0
    iget-object v1, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->parts:[Lcom/android/phone/photoring/http/multipart/Part;

    invoke-virtual {p0}, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/phone/photoring/http/multipart/Part;->getLengthOfParts([Lcom/android/phone/photoring/http/multipart/Part;[B)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    :goto_0
    return-wide v2

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->log:Lorg/apache/commons/logging/Log;

    const-string v2, "An exception occurred while getting the length of the parts"

    invoke-interface {v1, v2, v0}, Lorg/apache/commons/logging/Log;->error(Ljava/lang/Object;Ljava/lang/Throwable;)V

    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method public getContentType()Lorg/apache/http/Header;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "multipart/form-data"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    const-string v1, "; boundary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p0}, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {v1}, Lorg/apache/http/util/EncodingUtils;->getAsciiString([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v1, Lorg/apache/http/message/BasicHeader;

    const-string v2, "Content-Type"

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lorg/apache/http/message/BasicHeader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method protected getMultipartBoundary()[B
    .locals 1

    iget-object v0, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->multipartBoundary:[B

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->generateMultipartBoundary(Ljava/lang/String;)[B

    :cond_0
    iget-object v0, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->multipartBoundary:[B

    return-object v0
.end method

.method public isRepeatable()Z
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->parts:[Lcom/android/phone/photoring/http/multipart/Part;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->parts:[Lcom/android/phone/photoring/http/multipart/Part;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/android/phone/photoring/http/multipart/Part;->isRepeatable()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public isSendDataComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->isWriteComplete:Z

    return v0
.end method

.method public isStreaming()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeTo(Ljava/io/OutputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->parts:[Lcom/android/phone/photoring/http/multipart/Part;

    invoke-virtual {p0}, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->getMultipartBoundary()[B

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/android/phone/photoring/http/multipart/Part;->sendParts(Ljava/io/OutputStream;[Lcom/android/phone/photoring/http/multipart/Part;[B)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/photoring/http/multipart/MultipartEntity;->isWriteComplete:Z

    return-void
.end method
