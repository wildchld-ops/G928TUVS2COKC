.class public Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;
.super Ljava/lang/Object;
.source "XMLValidation.java"


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->mContext:Landroid/content/Context;

    return-void
.end method

.method private schemaValidation(Ljava/lang/String;)Z
    .locals 13

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    :try_start_0
    invoke-virtual {v2}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v11

    const-string/jumbo v12, "pskc_schema.xsd"

    invoke-virtual {v11, v12}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v9

    new-instance v8, Ljava/io/ByteArrayInputStream;

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v11

    invoke-direct {v8, v11}, Ljava/io/ByteArrayInputStream;-><init>([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v1, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;

    invoke-direct {v1}, Lmf/org/apache/xerces/jaxp/validation/XMLSchemaFactory;-><init>()V

    new-instance v5, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-direct {v5, v9}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    new-instance v4, Lmf/javax/xml/transform/stream/StreamSource;

    invoke-direct {v4, v8}, Lmf/javax/xml/transform/stream/StreamSource;-><init>(Ljava/io/InputStream;)V

    :try_start_1
    invoke-virtual {v1, v5}, Lmf/javax/xml/validation/SchemaFactory;->newSchema(Lmf/javax/xml/transform/Source;)Lmf/javax/xml/validation/Schema;

    move-result-object v3

    invoke-virtual {v3}, Lmf/javax/xml/validation/Schema;->newValidator()Lmf/javax/xml/validation/Validator;

    move-result-object v6

    invoke-virtual {v6, v4}, Lmf/javax/xml/validation/Validator;->validate(Lmf/javax/xml/transform/Source;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    const-string v10, "XMLValidation::schemaValidation: XML is Valid."

    invoke-static {v10}, Lcom/android/server/enterprise/otp/engine/common/Print;->d(Ljava/lang/String;)V

    const/4 v10, 0x1

    move-object v7, v8

    :goto_0
    return v10

    :catch_0
    move-exception v0

    const-string v11, "XMLValidation::schemaValidation: unable to open xsd"

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v11, "XMLValidation::schemaValidation: resources not found"

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XMLValidation::schemaValidation: Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_0

    :catch_2
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XMLValidation::schemaValidation: Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_0

    :catch_3
    move-exception v0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "XMLValidation::schemaValidation: Exception: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/android/server/enterprise/otp/engine/common/Print;->e(Ljava/lang/String;)V

    move-object v7, v8

    goto :goto_0
.end method


# virtual methods
.method public isPskcValid(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->mContext:Landroid/content/Context;

    invoke-direct {p0, p2}, Lcom/android/server/enterprise/otp/engine/handler/xml/XMLValidation;->schemaValidation(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
