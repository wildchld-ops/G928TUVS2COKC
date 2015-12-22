.class public Lcom/sec/sdp/engine/SdpCreationParamBuilder;
.super Ljava/lang/Object;
.source "SdpCreationParamBuilder.java"


# instance fields
.field private mAlias:Ljava/lang/String;

.field private mFlags:I

.field private mPrivilegedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/sec/sdp/engine/SdpDomain;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 2

    const/4 v1, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    if-nez p1, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    :goto_0
    iput v1, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    return-void

    :cond_0
    iput-object p1, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    goto :goto_0
.end method


# virtual methods
.method public addPrivilegedApp(Lcom/sec/sdp/engine/SdpDomain;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public disableChamber()V
    .locals 1

    iget v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    return-void
.end method

.method public enableChamber()V
    .locals 1

    iget v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    return-void
.end method

.method public getParam()Lcom/sec/sdp/engine/SdpCreationParam;
    .locals 4

    iget-object v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/sec/sdp/engine/SdpCreationParam;

    iget-object v1, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mAlias:Ljava/lang/String;

    iget v2, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    iget-object v3, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mPrivilegedApps:Ljava/util/ArrayList;

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/sdp/engine/SdpCreationParam;-><init>(Ljava/lang/String;ILjava/util/ArrayList;)V

    goto :goto_0
.end method

.method public setMdfpp()V
    .locals 1

    iget v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    return-void
.end method

.method public setMinor()V
    .locals 1

    iget v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/sec/sdp/engine/SdpCreationParamBuilder;->mFlags:I

    return-void
.end method
