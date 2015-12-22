.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
.super Ljava/lang/Object;
.source "XMLHandler.java"


# static fields
.field public static sInstance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    .locals 2

    const-class v1, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    monitor-enter v1

    :try_start_0
    const-string v0, "OtpDbHelper::getInstance Enter"

    invoke-static {v0}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    invoke-direct {v0}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;-><init>()V

    sput-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;

    :cond_0
    sget-object v0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;->sInstance:Lcom/android/server/enterprise/otp/engine/handler/xml/XMLHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public declared-synchronized parsePskc(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPackage;",
            ">;"
        }
    .end annotation

    const/4 v5, 0x0

    monitor-enter p0

    :try_start_0
    const-string v6, "XMLHandler::parsePskc: ENTER"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->i(Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v2, 0x0

    new-instance v6, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;

    invoke-direct {v6}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;-><init>()V

    invoke-virtual {v6, p1, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->isPskcValid(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->getInstance()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyPin;->setKeyPin(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    const-string v5, "UTF-8"

    invoke-static {v5}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    invoke-direct {v1, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v3, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;

    invoke-direct {v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;->parse(Ljava/io/InputStream;)V

    :cond_0
    invoke-virtual {v3}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLParserPskc;->getKeyContainer()Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    :goto_0
    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/android/server/enterprise/otp/engine/handler/proto/pskc/generic/KeyContainer;->getKeys()Ljava/util/List;

    move-result-object v4

    :cond_1
    if-eqz v4, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XMLHandler::parsePskc: EXIT [KeyPackage count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    move-object v5, v4

    :goto_2
    monitor-exit p0

    return-object v5

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "XMLHandler::parsePskc: Exception "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    :cond_2
    :try_start_4
    const-string v6, "XMLHandler::parsePskc: XML is not valid"

    invoke-static {v6}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string v5, "XMLHandler::parsePskc: EXIT [KeyPackage List is null]"

    invoke-static {v5}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1
.end method
