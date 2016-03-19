.class public Lcom/myscript/atk/rmc/RMLanguageModel;
.super Ljava/lang/Object;
.source "RMLanguageModel.java"


# instance fields
.field private mName:Ljava/lang/String;

.field private mPreloaded:Ljava/lang/String;

.field private mVersion:Lcom/myscript/atk/rmc/Version;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/myscript/atk/rmc/Version;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/rmc/RMLanguageModel;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/myscript/atk/rmc/RMLanguageModel;->mVersion:Lcom/myscript/atk/rmc/Version;

    const-string v0, "false"

    iput-object v0, p0, Lcom/myscript/atk/rmc/RMLanguageModel;->mPreloaded:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/myscript/atk/rmc/Version;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/myscript/atk/rmc/RMLanguageModel;->mName:Ljava/lang/String;

    iput-object p2, p0, Lcom/myscript/atk/rmc/RMLanguageModel;->mVersion:Lcom/myscript/atk/rmc/Version;

    iput-object p3, p0, Lcom/myscript/atk/rmc/RMLanguageModel;->mPreloaded:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMLanguageModel;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Lcom/myscript/atk/rmc/Version;
    .locals 1

    iget-object v0, p0, Lcom/myscript/atk/rmc/RMLanguageModel;->mVersion:Lcom/myscript/atk/rmc/Version;

    return-object v0
.end method

.method public isPreloaded()Z
    .locals 2

    const-string v0, "true"

    iget-object v1, p0, Lcom/myscript/atk/rmc/RMLanguageModel;->mPreloaded:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
