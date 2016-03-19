.class final Lcom/nuance/nmdp/speechkit/e;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/DataUploadResult;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/e$a;
    }
.end annotation


# instance fields
.field private a:[Lcom/nuance/nmdp/speechkit/e$a;

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/e;->b:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/e;->a:[Lcom/nuance/nmdp/speechkit/e$a;

    return-void
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/e;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/nuance/nmdp/speechkit/e;->b:Z

    return p1
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/e;)[Lcom/nuance/nmdp/speechkit/e$a;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/e;->a:[Lcom/nuance/nmdp/speechkit/e$a;

    return-object v0
.end method

.method static synthetic a(Lcom/nuance/nmdp/speechkit/e;[Lcom/nuance/nmdp/speechkit/e$a;)[Lcom/nuance/nmdp/speechkit/e$a;
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/e;->a:[Lcom/nuance/nmdp/speechkit/e$a;

    return-object p1
.end method


# virtual methods
.method final a()Lcom/nuance/nmdp/speechkit/cg;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/nuance/nmdp/speechkit/cg",
            "<",
            "Lcom/nuance/nmdp/speechkit/DataUploadResult;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/nuance/nmdp/speechkit/e$1;

    invoke-direct {v0, p0}, Lcom/nuance/nmdp/speechkit/e$1;-><init>(Lcom/nuance/nmdp/speechkit/e;)V

    return-object v0
.end method

.method public final getDataResult(I)Lcom/nuance/nmdp/speechkit/DataUploadResult$DataResult;
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/e;->a:[Lcom/nuance/nmdp/speechkit/e$a;

    array-length v0, v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/e;->a:[Lcom/nuance/nmdp/speechkit/e$a;

    aget-object v0, v0, p1

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDataResultCount()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/e;->a:[Lcom/nuance/nmdp/speechkit/e$a;

    array-length v0, v0

    return v0
.end method

.method public final isVocRegenerated()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/e;->b:Z

    return v0
.end method
