.class public Lcom/nuance/nmdp/speechkit/util/dataupload/Data;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/util/dataupload/Data$1;,
        Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/String;

.field private b:I

.field private c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

.field private d:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/dataupload/Action;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->b:I

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-ne p2, v0, :cond_1

    :cond_0
    iput-object p2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    :goto_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    return-void

    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 4

    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    const-string v0, "id"

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->a:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-nez v0, :cond_1

    :goto_0
    const-string v0, "type"

    const-string v1, "contacts"

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    new-instance v3, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->a()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v3, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$1;->a:[I

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v0, "type"

    const-string v1, "contacts"

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v0, "type"

    const-string v1, "custom_words"

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v0, "type"

    const-string v1, "history"

    invoke-virtual {v2, v0, v1}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "actions"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    :cond_3
    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addAction(Lcom/nuance/nmdp/speechkit/util/dataupload/Action;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public clearActions()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public clearData()V
    .locals 2

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->a:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->b:I

    iput-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public getChecksum()I
    .locals 3

    const/4 v0, 0x0

    move v2, v0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->getChecksum()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    iput v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->b:I

    return v1

    :cond_1
    move v0, v1

    goto :goto_1
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->a:Ljava/lang/String;

    return-object v0
.end method

.method public getTypeStr()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-nez v0, :cond_0

    const-string v0, "contacts"

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$1;->a:[I

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-virtual {v1}, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "contacts"

    goto :goto_0

    :pswitch_0
    const-string v0, "contacts"

    goto :goto_0

    :pswitch_1
    const-string v0, "custom_words"

    goto :goto_0

    :pswitch_2
    const-string v0, "history"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public removeAction(Lcom/nuance/nmdp/speechkit/util/dataupload/Action;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setType(Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;)V
    .locals 1

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CUSTOMWORDS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->HISTORY:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    if-ne p1, v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;->CONTACTS:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checksum:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "type:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->c:Lcom/nuance/nmdp/speechkit/util/dataupload/Data$DataType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action list: "

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

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Data;->d:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;

    if-eqz v0, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "action: "

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

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->toString()Ljava/lang/String;

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
