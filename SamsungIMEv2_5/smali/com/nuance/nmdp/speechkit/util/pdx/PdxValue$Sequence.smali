.class public final Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Sequence"
.end annotation


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a:Ljava/util/List;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/Object;)Z
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore this add action since the value is null: value["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/nuance/nmdp/speechkit/ab;->b(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public final add(I)V
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;

    invoke-direct {v1, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;-><init>(I)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final add(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;

    invoke-direct {v1, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final add([B)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a:Ljava/util/List;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;

    invoke-direct {v1, p1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;-><init>([B)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public final get(I)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    return-object v0
.end method

.method public final getValues()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a:Ljava/util/List;

    return-object v0
.end method

.method public final size()I
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
