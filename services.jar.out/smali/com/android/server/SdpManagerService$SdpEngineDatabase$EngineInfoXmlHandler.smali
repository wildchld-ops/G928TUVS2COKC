.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
.super Ljava/lang/Object;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineInfoXmlHandler"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;
    }
.end annotation


# static fields
.field private static final ENGINE_XML:Ljava/lang/String; = "SdpUser"


# instance fields
.field private final ATTR_ALIAS:Ljava/lang/String;

.field private final ATTR_CHAMBER_PATH:Ljava/lang/String;

.field private final ATTR_FLAGS:Ljava/lang/String;

.field private final ATTR_ID:Ljava/lang/String;

.field private final ATTR_IS_MIGRATING:Ljava/lang/String;

.field private final ATTR_PKG_NAME:Ljava/lang/String;

.field private final ATTR_USERID:Ljava/lang/String;

.field private final ATTR_VAL_FALSE:Ljava/lang/String;

.field private final ATTR_VAL_TRUE:Ljava/lang/String;

.field private final ATTR_VERSION:Ljava/lang/String;

.field private final ELEMENT_USER:Ljava/lang/String;

.field final synthetic this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;


# direct methods
.method private constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "user"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ELEMENT_USER:Ljava/lang/String;

    const-string v0, "alias"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ATTR_ALIAS:Ljava/lang/String;

    const-string/jumbo v0, "id"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ATTR_ID:Ljava/lang/String;

    const-string/jumbo v0, "userid"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ATTR_USERID:Ljava/lang/String;

    const-string/jumbo v0, "flags"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ATTR_FLAGS:Ljava/lang/String;

    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ATTR_VERSION:Ljava/lang/String;

    const-string/jumbo v0, "isMigrating"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ATTR_IS_MIGRATING:Ljava/lang/String;

    const-string v0, "chamberPath"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ATTR_CHAMBER_PATH:Ljava/lang/String;

    const-string/jumbo v0, "pkgName"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ATTR_PKG_NAME:Ljava/lang/String;

    const-string/jumbo v0, "true"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ATTR_VAL_TRUE:Ljava/lang/String;

    const-string/jumbo v0, "false"

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->ATTR_VAL_FALSE:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Lcom/android/server/SdpManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/sec/sdp/engine/SdpEngineInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->removeEngineInfoLocked(Lcom/sec/sdp/engine/SdpEngineInfo;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;I)Lcom/sec/sdp/engine/SdpEngineInfo;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineInfoLocked(I)Lcom/sec/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;Lcom/sec/sdp/engine/SdpEngineInfo;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->updateEngineInfoLocked(Lcom/sec/sdp/engine/SdpEngineInfo;)I

    move-result v0

    return v0
.end method

.method private getEngineInfoLocked(I)Lcom/sec/sdp/engine/SdpEngineInfo;
    .locals 5

    new-instance v1, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;

    invoke-direct {v1, p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;-><init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;)V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->this$1:Lcom/android/server/SdpManagerService$SdpEngineDatabase;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {p0, p1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineXmlFile(I)Ljava/io/File;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase;->parseXml(Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    invoke-static {v2, v3, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase;->access$1400(Lcom/android/server/SdpManagerService$SdpEngineDatabase;Ljava/io/InputStream;Lorg/xml/sax/helpers/DefaultHandler;)Z
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    # invokes: Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->getEngineInfoLocked()Lcom/sec/sdp/engine/SdpEngineInfo;
    invoke-static {v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->access$1600(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;)Lcom/sec/sdp/engine/SdpEngineInfo;

    move-result-object v2

    return-object v2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t load engine "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getEngineXmlFile(I)Ljava/io/File;
    .locals 5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SdpUser"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".xml"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/data/system/users/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "SdpManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cant make directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/data/system/users/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    return-object v2
.end method

.method private removeEngineInfoLocked(Lcom/sec/sdp/engine/SdpEngineInfo;)V
    .locals 4

    invoke-virtual {p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getId()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineXmlFile(I)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "can\'t remove engine info xml file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateEngineInfoLocked(Lcom/sec/sdp/engine/SdpEngineInfo;)I
    .locals 24

    invoke-virtual/range {p1 .. p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getId()I

    move-result v21

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;->getEngineXmlFile(I)Ljava/io/File;

    move-result-object v13

    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v12

    invoke-virtual {v12}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v10

    const-string/jumbo v21, "user"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    const-string v21, "SdpManagerService"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v23, "updateEngine :: inserting \n"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {p1 .. p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->toString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v21, "alias"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getAlias()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v3}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v21, "pkgName"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getPackageName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v7, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v7}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v21, "id"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v5, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v5}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v21, "userid"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v8

    invoke-virtual/range {p1 .. p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getUserId()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v8, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v8}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v21, "flags"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getFlag()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v4, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v4}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v21, "version"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v9

    invoke-virtual/range {p1 .. p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->getVersion()I

    move-result v21

    invoke-static/range {v21 .. v21}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-interface {v9, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    move-object/from16 v0, v16

    invoke-interface {v0, v9}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    const-string/jumbo v21, "isMigrating"

    move-object/from16 v0, v21

    invoke-interface {v10, v0}, Lorg/w3c/dom/Document;->createAttribute(Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/sec/sdp/engine/SdpEngineInfo;->isMigrating()Z

    move-result v21

    if-eqz v21, :cond_0

    const-string/jumbo v21, "true"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    :goto_0
    move-object/from16 v0, v16

    invoke-interface {v0, v6}, Lorg/w3c/dom/Element;->setAttributeNode(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v19

    const-string/jumbo v21, "indent"

    const-string/jumbo v22, "yes"

    move-object/from16 v0, v19

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v17, Ljavax/xml/transform/dom/DOMSource;

    move-object/from16 v0, v17

    invoke-direct {v0, v10}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    new-instance v15, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v15, v13}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/File;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v15}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    const/16 v21, 0x0

    :goto_1
    return v21

    :cond_0
    const-string/jumbo v21, "false"

    move-object/from16 v0, v21

    invoke-interface {v6, v0}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/xml/transform/TransformerException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    :catch_0
    move-exception v14

    invoke-virtual {v14}, Ljavax/xml/parsers/ParserConfigurationException;->printStackTrace()V

    const-string v21, "SdpManagerService"

    const-string v22, " putPolicy failed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, -0x63

    goto :goto_1

    :catch_1
    move-exception v18

    invoke-virtual/range {v18 .. v18}, Ljavax/xml/transform/TransformerException;->printStackTrace()V

    const-string v21, "SdpManagerService"

    const-string v22, " putPolicy failed"

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v21, -0x63

    goto :goto_1
.end method
