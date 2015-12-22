.class Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection$RequestBodyPart;
.super Ljava/lang/Object;
.source "KddiHttpsUrlConnection.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestBodyPart"
.end annotation


# direct methods
.method public static build(Landroid/content/Context;)[B
    .locals 7

    # getter for: Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "prepare HTTP Request body part"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection$RequestBodyPart;->readKddiDummyData(Landroid/content/Context;)[B

    move-result-object v0

    # getter for: Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dummy data length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    array-length v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    array-length v4, v0

    add-int/lit8 v4, v4, 0x16

    int-to-short v2, v4

    # getter for: Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "expected message length : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    # getter for: Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "message type : 16"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x10

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :try_start_0
    invoke-static {v2}, Lcom/android/settings/simcardstatus/SimStatusUtils;->toBytes(S)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    # getter for: Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "type of request : 34"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0x22

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write(I)V

    invoke-static {p0}, Lcom/android/settings/simcardstatus/SimStatusUtils;->getImei(Landroid/content/Context;)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    # getter for: Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v4

    const-string v5, "pki key id : 0"

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    invoke-static {v4}, Lcom/android/settings/simcardstatus/SimStatusUtils;->toBytes(S)[B

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    invoke-virtual {v3, v0}, Ljava/io/ByteArrayOutputStream;->write([B)V

    # getter for: Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/settings/simcardstatus/KddiHttpsUrlConnection;->access$000()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "body part written : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/secutil/Log;->secD(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v4

    return-object v4

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method private static readKddiDummyData(Landroid/content/Context;)[B
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v4, 0x7f080000

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2}, Lcom/android/settings/simcardstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v2}, Lcom/android/settings/simcardstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    goto :goto_0

    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/android/settings/simcardstatus/SimStatusUtils;->closeSilently(Ljava/io/Closeable;)V

    throw v3
.end method
