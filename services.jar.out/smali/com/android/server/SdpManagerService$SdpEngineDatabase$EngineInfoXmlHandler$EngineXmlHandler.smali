.class Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SdpManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EngineXmlHandler"
.end annotation


# instance fields
.field private attrAlias:Ljava/lang/String;

.field private attrFlags:I

.field private attrId:I

.field private attrIsMigrating:Z

.field private attrPkgName:Ljava/lang/String;

.field private attrUserId:I

.field private attrVersion:I

.field private elementStack:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private info:Lcom/sec/sdp/engine/SdpEngineInfo;

.field final synthetic this$2:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;


# direct methods
.method public constructor <init>(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;)V
    .locals 2

    const/4 v1, -0x1

    iput-object p1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->this$2:Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler;

    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->info:Lcom/sec/sdp/engine/SdpEngineInfo;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrAlias:Ljava/lang/String;

    iput v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrId:I

    iput v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrUserId:I

    iput v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrFlags:I

    iput v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrVersion:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrIsMigrating:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrPkgName:Ljava/lang/String;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->elementStack:Ljava/util/Stack;

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;)Lcom/sec/sdp/engine/SdpEngineInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->getEngineInfoLocked()Lcom/sec/sdp/engine/SdpEngineInfo;

    move-result-object v0

    return-object v0
.end method

.method private getEngineInfoLocked()Lcom/sec/sdp/engine/SdpEngineInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->info:Lcom/sec/sdp/engine/SdpEngineInfo;

    return-object v0
.end method


# virtual methods
.method public characters([CII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "start characters : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "SdpManagerService"

    const-string v1, "end document     : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    const-string v0, "SdpManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end element      : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "user"

    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/sec/sdp/engine/SdpEngineInfo;

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrAlias:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrId:I

    iget v3, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrUserId:I

    const/4 v4, 0x1

    iget v5, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrFlags:I

    iget v6, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrVersion:I

    iget-boolean v7, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrIsMigrating:Z

    invoke-direct/range {v0 .. v7}, Lcom/sec/sdp/engine/SdpEngineInfo;-><init>(Ljava/lang/String;IIIIIZ)V

    iput-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->info:Lcom/sec/sdp/engine/SdpEngineInfo;

    iget-object v0, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->info:Lcom/sec/sdp/engine/SdpEngineInfo;

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/sec/sdp/engine/SdpEngineInfo;->setPackageName(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public startDocument()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    const-string v0, "SdpManagerService"

    const-string/jumbo v1, "start document   : "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    iget-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->elementStack:Ljava/util/Stack;

    invoke-virtual {v1, p3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "SdpManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start element    : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v1, "user"

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "alias"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrAlias:Ljava/lang/String;

    const-string/jumbo v1, "pkgName"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrPkgName:Ljava/lang/String;

    const-string/jumbo v1, "id"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrId:I

    :cond_0
    const-string/jumbo v1, "userid"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrUserId:I

    :cond_1
    :goto_0
    const-string/jumbo v1, "flags"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrFlags:I

    :cond_2
    const-string/jumbo v1, "version"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrVersion:I

    :cond_3
    const-string/jumbo v1, "isMigrating"

    invoke-interface {p4, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    const-string/jumbo v1, "true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrIsMigrating:Z

    :cond_4
    :goto_1
    return-void

    :cond_5
    iget v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrId:I

    invoke-static {v1}, Lcom/sec/sdp/SdpUtil;->isAndroidDefaultUser(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrId:I

    iput v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrUserId:I

    goto :goto_0

    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/SdpManagerService$SdpEngineDatabase$EngineInfoXmlHandler$EngineXmlHandler;->attrIsMigrating:Z

    goto :goto_1
.end method
