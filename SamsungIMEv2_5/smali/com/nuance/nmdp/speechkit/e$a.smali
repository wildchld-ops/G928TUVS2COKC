.class final Lcom/nuance/nmdp/speechkit/e$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/DataUploadResult$DataResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "a"
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I

.field private f:I


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method final a(Lcom/nuance/nmdp/speechkit/ej;)Z
    .locals 1

    const-string v0, "id"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "id"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->a:Ljava/lang/String;

    :cond_0
    const-string v0, "type"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "type"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->b:Ljava/lang/String;

    :cond_1
    const-string v0, "status"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "status"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->c:Ljava/lang/String;

    :cond_2
    const-string v0, "checksum"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "checksum"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->d:Ljava/lang/String;

    :cond_3
    const-string v0, "force_upload"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "force_upload"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->f:I

    :cond_4
    const-string v0, "final_count"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "final_count"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->d(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->e:I

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method public final getChecksum()I
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->d:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final getDataCount()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->e:I

    return v0
.end method

.method public final getForceUpload()I
    .locals 1

    iget v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->f:I

    return v0
.end method

.method public final getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/e$a;->b:Ljava/lang/String;

    return-object v0
.end method
