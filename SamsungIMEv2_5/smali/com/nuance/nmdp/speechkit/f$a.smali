.class final Lcom/nuance/nmdp/speechkit/f$a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/nuance/nmdp/speechkit/GenericRecognition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Z

.field private final b:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

.field private final c:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/f$a;->b:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    const-string v0, "appserver_results"

    invoke-virtual {p1, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->getType()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/f$a;->c:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->getType()I

    move-result v2

    if-ne v2, v1, :cond_2

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;->get()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x0

    :goto_1
    iput-boolean v0, p0, Lcom/nuance/nmdp/speechkit/f$a;->a:Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/f$a;->c:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    const-string v2, "final_response"

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->get(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    move-result-object v0

    goto :goto_0

    :cond_1
    iput-object v2, p0, Lcom/nuance/nmdp/speechkit/f$a;->c:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    :cond_2
    move v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final getAppserverResult()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/f$a;->c:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    return-object v0
.end method

.method public final getFullResult()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/f$a;->b:Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    return-object v0
.end method

.method public final isFinalResult()Z
    .locals 1

    iget-boolean v0, p0, Lcom/nuance/nmdp/speechkit/f$a;->a:Z

    return v0
.end method
