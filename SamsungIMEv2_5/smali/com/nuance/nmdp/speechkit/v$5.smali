.class final Lcom/nuance/nmdp/speechkit/v$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nuance/nmdp/speechkit/v;->a(Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;IILcom/nuance/nmdp/speechkit/DataUploadCommand$Listener;Ljava/lang/Object;)Lcom/nuance/nmdp/speechkit/DataUploadCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private synthetic a:Lcom/nuance/nmdp/speechkit/v;


# direct methods
.method constructor <init>(Lcom/nuance/nmdp/speechkit/v;)V
    .locals 0

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/v$5;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->o()Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$5;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->e(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/b;

    move-result-object v0

    const-string v1, "DATA_BLOCK"

    iget-object v3, p0, Lcom/nuance/nmdp/speechkit/v$5;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v3}, Lcom/nuance/nmdp/speechkit/v;->d(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    move-result-object v3

    invoke-virtual {v3}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->getDataBlockDictionary()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lcom/nuance/nmdp/speechkit/b;->addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V

    new-instance v3, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    new-instance v4, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    const-string v0, "num_data_blocks"

    const/4 v1, 0x1

    invoke-virtual {v3, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$5;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->d(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;

    move-result-object v0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/DataBlock;->getDataList()Ljava/util/Vector;

    move-result-object v5

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    new-instance v6, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    const-string v7, "id"

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v7, "type"

    invoke-virtual {v5, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->getTypeStr()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v7, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "current_checksum"

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/v$5;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v7}, Lcom/nuance/nmdp/speechkit/v;->f(Lcom/nuance/nmdp/speechkit/v;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "new_checksum"

    iget-object v7, p0, Lcom/nuance/nmdp/speechkit/v$5;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v7}, Lcom/nuance/nmdp/speechkit/v;->g(Lcom/nuance/nmdp/speechkit/v;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v0, v7}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "algorithm_id"

    const-string v7, "MD5"

    invoke-virtual {v6, v0, v7}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4, v6}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    const-string v0, "checksums"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$5;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->e(Lcom/nuance/nmdp/speechkit/v;)Lcom/nuance/nmdp/speechkit/b;

    move-result-object v0

    const-string v1, "UPLOAD_DONE"

    invoke-virtual {v0, v1, v3}, Lcom/nuance/nmdp/speechkit/b;->addParam(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/v$5;->a:Lcom/nuance/nmdp/speechkit/v;

    invoke-static {v0}, Lcom/nuance/nmdp/speechkit/v;->h(Lcom/nuance/nmdp/speechkit/v;)Z

    invoke-static {}, Lcom/nuance/nmdp/speechkit/v;->o()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method
