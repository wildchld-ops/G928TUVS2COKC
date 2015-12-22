.class public Lcom/android/server/wm/VrHelper;
.super Ljava/lang/Object;
.source "VrHelper.java"


# static fields
.field private static mInstance:Lcom/android/server/wm/VrHelper;


# instance fields
.field mSkipVRAppList:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/VrHelper;->mInstance:Lcom/android/server/wm/VrHelper;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/VrHelper;->mSkipVRAppList:Ljava/util/Vector;

    return-void
.end method

.method private fillVRSkipList()V
    .locals 9

    iget-object v7, p0, Lcom/android/server/wm/VrHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v7}, Ljava/util/Vector;->size()I

    move-result v7

    if-nez v7, :cond_3

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v3, "/data/data/com.gvrf.vrlauncher/files/vrskiplist.txt"

    const/4 v6, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-nez v7, :cond_0

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :cond_0
    if-eqz v4, :cond_5

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_4

    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_4

    iget-object v7, p0, Lcom/android/server/wm/VrHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v7, v6}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v7

    move-object v0, v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_2
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_2
    const/4 v0, 0x0

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4

    :cond_2
    :goto_3
    const/4 v4, 0x0

    :cond_3
    :goto_4
    return-void

    :cond_4
    move-object v0, v1

    :cond_5
    if-eqz v0, :cond_6

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :cond_6
    :goto_5
    const/4 v0, 0x0

    if-eqz v4, :cond_7

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    :cond_7
    :goto_6
    const/4 v4, 0x0

    goto :goto_4

    :catchall_0
    move-exception v7

    :goto_7
    if-eqz v0, :cond_8

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_8
    :goto_8
    const/4 v0, 0x0

    if-eqz v4, :cond_9

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_9
    :goto_9
    const/4 v4, 0x0

    throw v7

    :catch_1
    move-exception v7

    goto :goto_5

    :catch_2
    move-exception v7

    goto :goto_6

    :catch_3
    move-exception v7

    goto :goto_2

    :catch_4
    move-exception v7

    goto :goto_3

    :catch_5
    move-exception v8

    goto :goto_8

    :catch_6
    move-exception v8

    goto :goto_9

    :catchall_1
    move-exception v7

    move-object v0, v1

    goto :goto_7

    :catch_7
    move-exception v7

    goto :goto_1
.end method

.method public static getInstance()Lcom/android/server/wm/VrHelper;
    .locals 1

    sget-object v0, Lcom/android/server/wm/VrHelper;->mInstance:Lcom/android/server/wm/VrHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/VrHelper;

    invoke-direct {v0}, Lcom/android/server/wm/VrHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/VrHelper;->mInstance:Lcom/android/server/wm/VrHelper;

    :cond_0
    sget-object v0, Lcom/android/server/wm/VrHelper;->mInstance:Lcom/android/server/wm/VrHelper;

    return-object v0
.end method


# virtual methods
.method public isVRFlingerMode()Z
    .locals 9

    const/4 v7, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    const-string v3, "/data/data/com.gvrf.vrlauncher/files/flinger_status.txt"

    const/4 v6, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-nez v8, :cond_0

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    :cond_0
    if-eqz v4, :cond_7

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v8, Ljava/io/InputStreamReader;

    invoke-direct {v8, v4}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v8}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_6

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_6

    const-string v8, "1"

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result v8

    if-eqz v8, :cond_3

    const/4 v7, 0x1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    const/4 v4, 0x0

    :goto_2
    return v7

    :cond_3
    if-eqz v1, :cond_4

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :cond_4
    :goto_3
    const/4 v0, 0x0

    if-eqz v4, :cond_5

    :try_start_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    :cond_5
    :goto_4
    const/4 v4, 0x0

    goto :goto_2

    :cond_6
    move-object v0, v1

    :cond_7
    if-eqz v0, :cond_8

    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    :cond_8
    :goto_5
    const/4 v0, 0x0

    if-eqz v4, :cond_9

    :try_start_7
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    :cond_9
    :goto_6
    const/4 v4, 0x0

    goto :goto_2

    :catch_0
    move-exception v8

    :goto_7
    if-eqz v0, :cond_a

    :try_start_8
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7

    :cond_a
    :goto_8
    const/4 v0, 0x0

    if-eqz v4, :cond_b

    :try_start_9
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_8

    :cond_b
    :goto_9
    const/4 v4, 0x0

    goto :goto_2

    :catchall_0
    move-exception v7

    :goto_a
    if-eqz v0, :cond_c

    :try_start_a
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_9

    :cond_c
    :goto_b
    const/4 v0, 0x0

    if-eqz v4, :cond_d

    :try_start_b
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_a

    :cond_d
    :goto_c
    const/4 v4, 0x0

    throw v7

    :catch_1
    move-exception v8

    goto :goto_0

    :catch_2
    move-exception v8

    goto :goto_1

    :catch_3
    move-exception v8

    goto :goto_3

    :catch_4
    move-exception v8

    goto :goto_4

    :catch_5
    move-exception v8

    goto :goto_5

    :catch_6
    move-exception v8

    goto :goto_6

    :catch_7
    move-exception v8

    goto :goto_8

    :catch_8
    move-exception v8

    goto :goto_9

    :catch_9
    move-exception v8

    goto :goto_b

    :catch_a
    move-exception v8

    goto :goto_c

    :catchall_1
    move-exception v7

    move-object v0, v1

    goto :goto_a

    :catch_b
    move-exception v8

    move-object v0, v1

    goto :goto_7
.end method

.method public skipPackage(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/wm/VrHelper;->fillVRSkipList()V

    iget-object v0, p0, Lcom/android/server/wm/VrHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/VrHelper;->mSkipVRAppList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
