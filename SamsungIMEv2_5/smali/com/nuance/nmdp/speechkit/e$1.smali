.class final Lcom/nuance/nmdp/speechkit/e$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/e;->a()Lcom/nuance/nmdp/speechkit/cg;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/nmdp/speechkit/cg",
        "<",
        "Lcom/nuance/nmdp/speechkit/DataUploadResult;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/e;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/e;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/e$1;->a:Lcom/nuance/nmdp/speechkit/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/nuance/nmdp/speechkit/ej;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "voc_pregeneration_status"

    invoke-interface {p1, v2}, Lcom/nuance/nmdp/speechkit/ej;->d(Ljava/lang/String;)I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/e$1;->a:Lcom/nuance/nmdp/speechkit/e;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/nuance/nmdp/speechkit/e;->a(Lcom/nuance/nmdp/speechkit/e;Z)Z

    :goto_0
    const-string v2, "result_list"

    invoke-interface {p1, v2}, Lcom/nuance/nmdp/speechkit/ej;->i(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/eo;

    move-result-object v3

    if-eqz v3, :cond_1

    invoke-interface {v3}, Lcom/nuance/nmdp/speechkit/eo;->a()I

    move-result v4

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/e$1;->a:Lcom/nuance/nmdp/speechkit/e;

    new-array v5, v4, [Lcom/nuance/nmdp/speechkit/e$a;

    invoke-static {v2, v5}, Lcom/nuance/nmdp/speechkit/e;->a(Lcom/nuance/nmdp/speechkit/e;[Lcom/nuance/nmdp/speechkit/e$a;)[Lcom/nuance/nmdp/speechkit/e$a;

    move v2, v1

    :goto_1
    if-ge v2, v4, :cond_2

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/e$1;->a:Lcom/nuance/nmdp/speechkit/e;

    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/e;->a(Lcom/nuance/nmdp/speechkit/e;)[Lcom/nuance/nmdp/speechkit/e$a;

    move-result-object v5

    new-instance v6, Lcom/nuance/nmdp/speechkit/e$a;

    invoke-direct {v6}, Lcom/nuance/nmdp/speechkit/e$a;-><init>()V

    aput-object v6, v5, v2

    iget-object v5, p0, Lcom/nuance/nmdp/speechkit/e$1;->a:Lcom/nuance/nmdp/speechkit/e;

    invoke-static {v5}, Lcom/nuance/nmdp/speechkit/e;->a(Lcom/nuance/nmdp/speechkit/e;)[Lcom/nuance/nmdp/speechkit/e$a;

    move-result-object v5

    aget-object v5, v5, v2

    invoke-interface {v3, v2}, Lcom/nuance/nmdp/speechkit/eo;->g(I)Lcom/nuance/nmdp/speechkit/ej;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/nuance/nmdp/speechkit/e$a;->a(Lcom/nuance/nmdp/speechkit/ej;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/e$1;->a:Lcom/nuance/nmdp/speechkit/e;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/nuance/nmdp/speechkit/e;->a(Lcom/nuance/nmdp/speechkit/e;Z)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Error parsing result"

    invoke-static {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public final a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/nuance/nmdp/speechkit/ej;

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/e$1;->a(Lcom/nuance/nmdp/speechkit/ej;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/e$1;->a:Lcom/nuance/nmdp/speechkit/e;

    return-object v0
.end method
