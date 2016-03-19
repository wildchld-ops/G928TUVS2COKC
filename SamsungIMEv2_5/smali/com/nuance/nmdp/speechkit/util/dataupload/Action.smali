.class public Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nuance/nmdp/speechkit/util/dataupload/Action$1;,
        Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;
    }
.end annotation


# instance fields
.field private a:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

.field private b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;",
            ">;"
        }
    .end annotation
.end field

.field private c:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->REMOVE:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->CLEARALL:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-ne p1, v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->a:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    :goto_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    return-void

    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->a:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    goto :goto_0
.end method


# virtual methods
.method final a()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;
    .locals 5

    const/4 v0, 0x0

    new-instance v2, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v2}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    new-instance v3, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    invoke-direct {v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;-><init>()V

    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->a:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-nez v1, :cond_1

    :goto_0
    const-string v1, "action"

    const-string v4, "add"

    invoke-virtual {v2, v1, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v4, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->a()Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v4, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$1;->a:[I

    iget-object v4, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->a:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    invoke-virtual {v4}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    const-string v1, "action"

    const-string v4, "add"

    invoke-virtual {v2, v1, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_1
    const-string v1, "action"

    const-string v4, "remove"

    invoke-virtual {v2, v1, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :pswitch_2
    const-string v1, "action"

    const-string v4, "clear_all"

    invoke-virtual {v2, v1, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v0, "list"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    :cond_3
    :goto_3
    const-string v0, "content"

    invoke-virtual {v2, v0, v3}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    return-object v2

    :cond_4
    iget-object v1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    new-instance v4, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;

    invoke-direct {v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;-><init>()V

    move v1, v0

    :goto_4
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_5

    invoke-virtual {v4, v0}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Sequence;->add(Ljava/lang/String;)V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_6
    const-string v0, "list"

    invoke-virtual {v3, v0, v4}, Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue$Dictionary;->put(Ljava/lang/String;Lcom/nuance/nmdp/speechkit/util/pdx/PdxValue;)V

    goto :goto_3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public addContact(Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addWord(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public cleanData()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->a:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public clearContacts()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public clearWords()V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    return-void
.end method

.method public getChecksum()I
    .locals 4

    const/4 v3, 0x0

    move v2, v3

    move v1, v3

    :goto_0
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->getCheckSum()I

    move-result v0

    add-int/2addr v0, v1

    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move v1, v0

    goto :goto_0

    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v3, v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    :goto_3
    add-int/lit8 v3, v3, 0x1

    move v1, v0

    goto :goto_2

    :cond_1
    return v1

    :cond_2
    move v0, v1

    goto :goto_3

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public removeContact(Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public removeWord(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setType(Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;)V
    .locals 1

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->REMOVE:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->CLEARALL:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    if-ne p1, v0, :cond_1

    :cond_0
    iput-object p1, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->a:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    iput-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->a:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    goto :goto_0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    const/4 v1, 0x0

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->a:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "contact list: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->b:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;

    if-eqz v0, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "contact: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Lcom/nuance/nmdp/speechkit/util/dataupload/Contact;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "word list: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    if-ge v1, v2, :cond_3

    iget-object v0, p0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action;->c:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "word: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\n"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
