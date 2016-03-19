.class public Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/dataupload/Data;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->a:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public addData(Lcom/nuance/nmdp/speechkit/util/dataupload/Data;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearDataBlock()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public getChecksum()I
    .locals 3

    const/4 v0, 0x0

    move v2, v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->getChecksum()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getDataBlockDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 4

    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    const-string v0, "delete_all"

    iget v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->a:I

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v0, "common_user_id"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->b:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v3, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->a()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v3, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    const-string v0, "data_list"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    :cond_3
    return-object v2
.end method

.method public getDataList()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/dataupload/Data;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    return-object v0
.end method

.method public removeData(Lcom/nuance/nmdp/speechkit/util/dataupload/Data;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setDeleteAll(Z)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->a:I

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->b:Ljava/lang/String;

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete_all:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "data_list: elements "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "data: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
