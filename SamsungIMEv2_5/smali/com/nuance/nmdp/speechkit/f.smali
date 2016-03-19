.class final Lcom/nuance/nmdp/speechkit/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/cg;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/f$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/nuance/nmdp/speechkit/cg",
        "<",
        "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lcom/nuance/nmdp/speechkit/GenericRecognition;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/f;->a:Ljava/util/LinkedList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/f;->b:Z

    return-void
.end method

.method private a(Lcom/nuance/nmdp/speechkit/ej;)Z
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/nuance/nmdp/speechkit/ab;->a(Lcom/nuance/nmdp/speechkit/ej;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v2

    new-instance v3, Lcom/nuance/nmdp/speechkit/f$a;

    invoke-direct {v3, v2}, Lcom/nuance/nmdp/speechkit/f$a;-><init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/f$a;->isFinalResult()Z

    move-result v2

    if-nez v2, :cond_0

    move v2, v0

    :goto_0
    iput-boolean v2, p0, Lcom/nuance/nmdp/speechkit/f;->b:Z

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    return v0

    :cond_0
    move v2, v1

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v0, "Error parsing result"

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/f;->b:Z

    return v0
.end method

.method public final bridge synthetic a(Ljava/lang/Object;)Z
    .locals 1

    check-cast p1, Lcom/nuance/nmdp/speechkit/ej;

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/f;->a(Lcom/nuance/nmdp/speechkit/ej;)Z

    move-result v0

    return v0
.end method

.method public final synthetic b()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/f;->a:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/GenericRecognition;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
