.class public Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;
.super Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
.source "XMLSchemaValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyValueStore"
.end annotation


# instance fields
.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method public constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;)V
    .locals 0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;-><init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V

    return-void
.end method


# virtual methods
.method protected checkDuplicateValues()V
    .locals 7

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->contains()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v1, "DuplicateKey"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->fLocalValues:[Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$KeyValueStore;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v3, v5, v6

    const/4 v6, 0x1

    aput-object v2, v5, v6

    const/4 v6, 0x2

    aput-object v0, v5, v6

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
