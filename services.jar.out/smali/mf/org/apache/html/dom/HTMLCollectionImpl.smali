.class Lmf/org/apache/html/dom/HTMLCollectionImpl;
.super Ljava/lang/Object;
.source "HTMLCollectionImpl.java"

# interfaces
.implements Lmf/org/w3c/dom/html/HTMLCollection;
.implements Ljava/io/Serializable;


# static fields
.field static final ANCHOR:S = 0x1s

.field static final APPLET:S = 0x4s

.field static final AREA:S = -0x1s

.field static final CELL:S = -0x3s

.field static final ELEMENT:S = 0x8s

.field static final FORM:S = 0x2s

.field static final IMAGE:S = 0x3s

.field static final LINK:S = 0x5s

.field static final OPTION:S = 0x6s

.field static final ROW:S = 0x7s

.field static final TBODY:S = -0x2s

.field private static final serialVersionUID:J = 0x7e74c2dc1a6b3c3aL


# instance fields
.field private _lookingFor:S

.field private _topLevel:Lmf/org/w3c/dom/Element;


# direct methods
.method constructor <init>(Lmf/org/w3c/dom/html/HTMLElement;S)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "HTM011 Argument \'topLevel\' is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    iput-short p2, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    return-void
.end method

.method private getLength(Lmf/org/w3c/dom/Element;)I
    .locals 5

    monitor-enter p1

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v2

    :goto_0
    if-nez v2, :cond_0

    monitor-exit p1

    return v1

    :cond_0
    instance-of v3, v2, Lmf/org/w3c/dom/Element;

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    add-int/lit8 v1, v1, 0x1

    :cond_1
    :goto_1
    invoke-interface {v2}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v0, v2

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    invoke-direct {p0, v3}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->getLength(Lmf/org/w3c/dom/Element;)I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method

.method private item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;
    .locals 6

    const/4 v4, 0x0

    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    monitor-exit p1

    move-object v1, v4

    :goto_1
    return-object v1

    :cond_0
    instance-of v3, v1, Lmf/org/w3c/dom/Element;

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    const/4 v5, 0x0

    invoke-virtual {p0, v3, v5}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {p2}, Lmf/org/apache/html/dom/CollectionIndex;->isZero()Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    invoke-virtual {p2}, Lmf/org/apache/html/dom/CollectionIndex;->decrement()V

    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    invoke-direct {p0, v3, p2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v2

    goto :goto_1
.end method

.method private namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 4

    monitor-enter p1

    :try_start_0
    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getFirstChild()Lmf/org/w3c/dom/Node;

    move-result-object v1

    :goto_0
    if-nez v1, :cond_0

    monitor-exit p1

    :goto_1
    return-object v1

    :cond_0
    instance-of v3, v1, Lmf/org/w3c/dom/Element;

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    invoke-virtual {p0, v3, p2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit p1

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_1
    :try_start_1
    invoke-virtual {p0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->recurse()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object v0, v1

    check-cast v0, Lmf/org/w3c/dom/Element;

    move-object v3, v0

    invoke-direct {p0, v3, p2}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v2

    if-eqz v2, :cond_2

    monitor-exit p1

    move-object v1, v2

    goto :goto_1

    :cond_2
    invoke-interface {v1}, Lmf/org/w3c/dom/Node;->getNextSibling()Lmf/org/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0
.end method


# virtual methods
.method protected collectionMatch(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Z
    .locals 5

    const/4 v2, 0x0

    const/4 v1, 0x1

    monitor-enter p1

    const/4 v0, 0x0

    :try_start_0
    iget-short v3, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    packed-switch v3, :pswitch_data_0

    :goto_0
    :pswitch_0
    if-eqz v0, :cond_7

    if-eqz p2, :cond_7

    instance-of v2, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-eqz v2, :cond_6

    const-string/jumbo v2, "name"

    invoke-interface {p1, v2}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    monitor-exit p1

    :goto_1
    return v1

    :pswitch_1
    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-eqz v3, :cond_0

    const-string/jumbo v3, "name"

    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    move v0, v1

    :goto_2
    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_2

    :pswitch_2
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLFormElement;

    goto :goto_0

    :pswitch_3
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLImageElement;

    goto :goto_0

    :pswitch_4
    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLAppletElement;

    if-nez v3, :cond_2

    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLObjectElement;

    if-eqz v3, :cond_1

    const-string v3, "application/java"

    const-string v4, "codetype"

    invoke-interface {p1, v4}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "classid"

    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "java:"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    move v0, v2

    :goto_3
    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_3

    :pswitch_5
    instance-of v0, p1, Lmf/org/apache/html/dom/HTMLFormControl;

    goto :goto_0

    :pswitch_6
    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLAnchorElement;

    if-nez v3, :cond_3

    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLAreaElement;

    if-eqz v3, :cond_4

    :cond_3
    const-string/jumbo v3, "href"

    invoke-interface {p1, v3}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_4

    move v0, v1

    :goto_4
    goto :goto_0

    :cond_4
    move v0, v2

    goto :goto_4

    :pswitch_7
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLAreaElement;

    goto :goto_0

    :pswitch_8
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLOptionElement;

    goto :goto_0

    :pswitch_9
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLTableRowElement;

    goto :goto_0

    :pswitch_a
    instance-of v3, p1, Lmf/org/w3c/dom/html/HTMLTableSectionElement;

    if-eqz v3, :cond_5

    invoke-interface {p1}, Lmf/org/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TBODY"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    move v0, v1

    :goto_5
    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_5

    :pswitch_b
    instance-of v0, p1, Lmf/org/w3c/dom/html/HTMLTableCellElement;

    goto/16 :goto_0

    :cond_6
    const-string/jumbo v1, "id"

    invoke-interface {p1, v1}, Lmf/org/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    :cond_7
    monitor-exit p1

    move v1, v0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :pswitch_data_0
    .packed-switch -0x3
        :pswitch_b
        :pswitch_a
        :pswitch_7
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_6
        :pswitch_8
        :pswitch_9
        :pswitch_5
    .end packed-switch
.end method

.method public final getLength()I
    .locals 1

    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v0}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->getLength(Lmf/org/w3c/dom/Element;)I

    move-result v0

    return v0
.end method

.method public final item(I)Lmf/org/w3c/dom/Node;
    .locals 2

    if-gez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "HTM012 Argument \'index\' is negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    new-instance v1, Lmf/org/apache/html/dom/CollectionIndex;

    invoke-direct {v1, p1}, Lmf/org/apache/html/dom/CollectionIndex;-><init>(I)V

    invoke-direct {p0, v0, v1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->item(Lmf/org/w3c/dom/Element;Lmf/org/apache/html/dom/CollectionIndex;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method public final namedItem(Ljava/lang/String;)Lmf/org/w3c/dom/Node;
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "HTM013 Argument \'name\' is null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_topLevel:Lmf/org/w3c/dom/Element;

    invoke-direct {p0, v0, p1}, Lmf/org/apache/html/dom/HTMLCollectionImpl;->namedItem(Lmf/org/w3c/dom/Element;Ljava/lang/String;)Lmf/org/w3c/dom/Node;

    move-result-object v0

    return-object v0
.end method

.method protected recurse()Z
    .locals 1

    iget-short v0, p0, Lmf/org/apache/html/dom/HTMLCollectionImpl;->_lookingFor:S

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
