.class final Lcom/nuance/nmdp/speechkit/m$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cg;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/m;->a()Lcom/nuance/nmdp/speechkit/cg;
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
        "Lcom/nuance/nmdp/speechkit/Recognition;",
        ">;"
    }
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/m;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/m;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/m$1;->a:Lcom/nuance/nmdp/speechkit/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Lcom/nuance/nmdp/speechkit/ej;)Z
    .locals 12

    const/4 v1, 0x0

    const/4 v3, 0x0

    :try_start_0
    const-string v0, "transcriptions"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->i(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/eo;

    move-result-object v6

    invoke-interface {v6}, Lcom/nuance/nmdp/speechkit/eo;->a()I

    move-result v7

    if-lez v7, :cond_1

    new-array v8, v7, [Ljava/lang/String;

    new-array v9, v7, [I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2

    :try_start_1
    const-string v0, "prompt"

    invoke-interface {p1, v0}, Lcom/nuance/nmdp/speechkit/ej;->f(Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    :goto_0
    :try_start_2
    const-string v2, "confidences"

    invoke-interface {p1, v2}, Lcom/nuance/nmdp/speechkit/ej;->i(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/eo;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v2

    :try_start_3
    invoke-interface {v2}, Lcom/nuance/nmdp/speechkit/eo;->a()I

    move-result v4

    if-eq v7, v4, :cond_0

    const-string v4, "Size mismatch between transcriptions and confidences"

    invoke-static {p0, v4}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_3

    move-object v2, v1

    :cond_0
    :goto_1
    move v5, v3

    :goto_2
    if-ge v5, v7, :cond_3

    :try_start_4
    invoke-interface {v6, v5}, Lcom/nuance/nmdp/speechkit/eo;->e(I)Ljava/lang/String;

    move-result-object v4

    const/16 v10, 0xd

    const/16 v11, 0x20

    invoke-virtual {v4, v10, v11}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v5

    if-eqz v2, :cond_2

    invoke-interface {v2, v5}, Lcom/nuance/nmdp/speechkit/eo;->c(I)I

    move-result v4

    :goto_3
    aput v4, v9, v5

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    move-object v2, v1

    :goto_4
    const-string v4, "Unable to extract confidences from result"

    invoke-static {p0, v4}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    :catch_2
    move-exception v0

    const-string v2, "Unable to extract transcriptions from result"

    invoke-static {p0, v2, v0}, Lcom/nuance/nmdp/speechkit/ab;->a(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/m$1;->a:Lcom/nuance/nmdp/speechkit/m;

    new-array v2, v3, [Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/m;->a(Lcom/nuance/nmdp/speechkit/m;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/m$1;->a:Lcom/nuance/nmdp/speechkit/m;

    new-array v2, v3, [I

    invoke-static {v0, v2}, Lcom/nuance/nmdp/speechkit/m;->a(Lcom/nuance/nmdp/speechkit/m;[I)[I

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/m$1;->a:Lcom/nuance/nmdp/speechkit/m;

    invoke-static {v0, v1}, Lcom/nuance/nmdp/speechkit/m;->a(Lcom/nuance/nmdp/speechkit/m;Ljava/lang/String;)Ljava/lang/String;

    move v0, v3

    :goto_5
    return v0

    :cond_2
    const/16 v4, 0x64

    goto :goto_3

    :cond_3
    :try_start_5
    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/m$1;->a:Lcom/nuance/nmdp/speechkit/m;

    invoke-static {v2, v8}, Lcom/nuance/nmdp/speechkit/m;->a(Lcom/nuance/nmdp/speechkit/m;[Ljava/lang/String;)[Ljava/lang/String;

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/m$1;->a:Lcom/nuance/nmdp/speechkit/m;

    invoke-static {v2, v9}, Lcom/nuance/nmdp/speechkit/m;->a(Lcom/nuance/nmdp/speechkit/m;[I)[I

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/m$1;->a:Lcom/nuance/nmdp/speechkit/m;

    invoke-static {v2, v0}, Lcom/nuance/nmdp/speechkit/m;->a(Lcom/nuance/nmdp/speechkit/m;Ljava/lang/String;)Ljava/lang/String;
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    const/4 v0, 0x1

    goto :goto_5

    :catch_3
    move-exception v4

    goto :goto_4
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

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/m$1;->a(Lcom/nuance/nmdp/speechkit/ej;)Z

    move-result v0

    return v0
.end method

.method public final bridge synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/m$1;->a:Lcom/nuance/nmdp/speechkit/m;

    return-object v0
.end method
