.class public Lcom/sec/daliviews/utils/GetProperties;
.super Ljava/lang/Object;
.source "GetProperties.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 11

    move-object v2, p1

    :try_start_0
    new-instance v7, Ljava/lang/ProcessBuilder;

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    const-string v10, "getprop"

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object p0, v8, v9

    invoke-direct {v7, v8}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    const/4 v5, 0x0

    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    new-instance v6, Ljava/util/Scanner;

    invoke-direct {v6, v1}, Ljava/util/Scanner;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v6}, Ljava/util/Scanner;->nextLine()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v7

    if-nez v7, :cond_0

    move-object v2, p1

    :cond_0
    invoke-static {v6}, Lcom/sec/daliviews/utils/Utils;->close(Ljava/util/Scanner;)V

    invoke-static {v1}, Lcom/sec/daliviews/utils/Utils;->close(Ljava/io/Closeable;)V

    move-object v3, v2

    :goto_0
    return-object v3

    :catch_0
    move-exception v0

    move-object v3, v2

    goto :goto_0

    :catchall_0
    move-exception v7

    :goto_1
    invoke-static {v5}, Lcom/sec/daliviews/utils/Utils;->close(Ljava/util/Scanner;)V

    invoke-static {v1}, Lcom/sec/daliviews/utils/Utils;->close(Ljava/io/Closeable;)V

    throw v7

    :catchall_1
    move-exception v7

    move-object v5, v6

    goto :goto_1
.end method
