.class public Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;
.super Ljava/lang/Object;
.source "Xt9Datatype.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/engine/xt9/Xt9Datatype;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "S_ET9JMidashigoWord"
.end annotation


# instance fields
.field public bIncluded:B

.field public nSegLen:[I

.field public sSegWord:[C

.field public sWord:[B

.field public wConvScore:S

.field public wFinalScore:S

.field public wLen:[S


# direct methods
.method public constructor <init>()V
    .locals 3

    const/16 v2, 0x81

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->wLen:[S

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->nSegLen:[I

    new-array v0, v2, [B

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    new-array v0, v2, [C

    iput-object v0, p0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sSegWord:[C

    invoke-virtual {p0}, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x81

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sWord:[B

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/ime/framework/engine/xt9/Xt9Datatype$S_ET9JMidashigoWord;->sSegWord:[C

    aput-char v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
