.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ValueStoreCache"
.end annotation


# instance fields
.field protected final fGlobalIDConstraintMap:Ljava/util/HashMap;

.field protected final fGlobalMapStack:Ljava/util/Stack;

.field protected final fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

.field final fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

.field protected final fValueStores:Ljava/util/ArrayList;

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)V
    .locals 1

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 4

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v0, :cond_0

    return-void

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocument()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public endElement()V
    .locals 7

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {v6}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-eqz v5, :cond_2

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-nez v0, :cond_3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v6, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    if-eq v0, v5, :cond_2

    invoke-virtual {v0, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->append(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V

    goto :goto_0
.end method

.method public getGlobalValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    return-object v0
.end method

.method public getValueStoreFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput p2, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    return-object v0
.end method

.method public initValueStoresFor(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Lmf/org/apache/xerces/impl/xs/identity/FieldActivator;)V
    .locals 12

    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDConstraints:[Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget v2, p1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fIDCPos:I

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v2, :cond_0

    return-void

    :cond_0
    aget-object v10, v1, v0

    invoke-virtual {v10}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v10

    packed-switch v10, :pswitch_data_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :pswitch_0
    aget-object v8, v1, v0

    check-cast v8, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    new-instance v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    # getter for: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I
    invoke-static {v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I

    move-result v10

    invoke-direct {v7, v8, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;

    if-nez v9, :cond_1

    new-instance v9, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v9, v10, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v10, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    aget-object v11, v1, v0

    # invokes: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    invoke-static {v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$UniqueValueStore;->clear()V

    goto :goto_2

    :pswitch_1
    aget-object v3, v1, v0

    check-cast v3, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    new-instance v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    # getter for: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I
    invoke-static {v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I

    move-result v10

    invoke-direct {v7, v3, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;

    if-nez v6, :cond_2

    new-instance v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {v6, v10, v3}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    aget-object v11, v1, v0

    # invokes: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    invoke-static {v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->clear()V

    goto :goto_3

    :pswitch_2
    aget-object v4, v1, v0

    check-cast v4, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    new-instance v7, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    # getter for: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fElementDepth:I
    invoke-static {v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$0(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;)I

    move-result v10

    invoke-direct {v7, v4, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;-><init>(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;

    if-nez v5, :cond_3

    new-instance v5, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v11, 0x0

    invoke-direct {v5, v10, v4, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/KeyRef;Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;)V

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v10, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_4
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v10, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    aget-object v11, v1, v0

    # invokes: Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->activateSelectorFor(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    invoke-static {v10, v11}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->access$1(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    goto/16 :goto_1

    :cond_3
    invoke-virtual {v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->clear()V

    goto :goto_4

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public startDocument()V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fValueStores:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V

    return-void
.end method

.method public startElement()V
    .locals 2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clone()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalMapStack:Ljava/util/Stack;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    const/4 v4, -0x1

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x24

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-eq v0, v4, :cond_1

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    :goto_0
    return-object v2

    :cond_1
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_0

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public transplant(Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;I)V
    .locals 4

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput p2, v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fDepth:I

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    iput-object p1, v2, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;->fId:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fIdentityConstraint2ValueStoreMap:Ljava/util/HashMap;

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fLocalId:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$LocalIDKey;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->append(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method
