.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;
.super Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyRefValueStore"
.end annotation


# instance fields
.field protected fKeyValueStore:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/KeyRef;Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    iput-object p3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fKeyValueStore:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    return-void
.end method


# virtual methods
.method public endDocument()V
    .locals 0

    invoke-super {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocument()V

    return-void
.end method

.method public endDocumentFragment()V
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-super {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->endDocumentFragment()V

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    iget-object v6, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->fValueStoreCache:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;

    iget-object v7, v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreCache;->fGlobalIDConstraintMap:Ljava/util/HashMap;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    check-cast v6, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/identity/KeyRef;->getKey()Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    iput-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fKeyValueStore:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fKeyValueStore:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    if-nez v6, :cond_1

    const-string v0, "KeyRefOutOfScope"

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->toString()Ljava/lang/String;

    move-result-object v4

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v7, v9, [Ljava/lang/Object;

    aput-object v4, v7, v8

    invoke-virtual {v6, v0, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fKeyValueStore:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;

    invoke-virtual {v6, p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->contains(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)I

    move-result v2

    const/4 v6, -0x1

    if-eq v2, v6, :cond_0

    const-string v0, "KeyNotFound"

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fValues:Ljava/util/Vector;

    iget v7, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fFieldCount:I

    invoke-virtual {p0, v6, v2, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->toString(Ljava/util/Vector;II)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v6}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyRefValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v3, v7, v8

    aput-object v5, v7, v9

    const/4 v8, 0x2

    aput-object v1, v7, v8

    invoke-virtual {v6, v0, v7}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method
