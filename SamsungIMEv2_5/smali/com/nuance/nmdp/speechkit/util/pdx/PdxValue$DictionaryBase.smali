.class public abstract Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;
.super Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "DictionaryBase"
.end annotation


# instance fields
.field private final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;I)V"
        }
    .end annotation

    invoke-direct {p0, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;-><init>(I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a:Ljava/util/Map;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignore this put action since either the key or the value is null: key["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] value["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

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

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    return-object v0
.end method

.method public getEntries()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/util/Map$Entry",
            "<",
            "Ljava/lang/String;",
            "Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;I)V
    .locals 2

    new-instance v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;

    invoke-direct {v0, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a:Ljava/util/Map;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Integer;-><init>(I)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a:Ljava/util/Map;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$String;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public put(Ljava/lang/String;[B)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a(Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a:Ljava/util/Map;

    new-instance v1, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;

    invoke-direct {v1, p2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Bytes;-><init>([B)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public toString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$DictionaryBase;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " : "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, "  "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;->toString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ",\n"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
