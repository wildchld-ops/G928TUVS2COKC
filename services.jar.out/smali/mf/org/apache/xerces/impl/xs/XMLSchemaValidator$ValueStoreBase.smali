.class public abstract Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;
.super Ljava/lang/Object;
.source "XMLSchemaValidator.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/identity/ValueStore;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "ValueStoreBase"
.end annotation


# instance fields
.field protected fFieldCount:I

.field protected fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

.field protected fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

.field private fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

.field public fItemValueTypes:Ljava/util/Vector;

.field private fItemValueTypesLength:I

.field protected fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

.field protected fLocalValueTypes:[S

.field protected fLocalValues:[Ljava/lang/Object;

.field final fTempBuffer:Ljava/lang/StringBuffer;

.field private fUseItemValueTypeVector:Z

.field private fUseValueTypeVector:Z

.field private fValueType:S

.field public fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

.field private fValueTypesLength:I

.field public final fValues:Ljava/util/Vector;

.field protected fValuesCount:I

.field final synthetic this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;


# direct methods
.method protected constructor <init>(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    iput-short v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    iput-boolean v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iput v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    iput-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    iput-object p2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v1}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldCount()I

    move-result v1

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [Lmf/org/apache/xerces/impl/xs/identity/Field;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [Ljava/lang/Object;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [S

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    new-array v1, v1, [Lmf/org/apache/xerces/xs/ShortList;

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v2, v0}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getFieldAt(I)Lmf/org/apache/xerces/impl/xs/identity/Field;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private addItemValueType(Lmf/org/apache/xerces/xs/ShortList;)V
    .locals 3

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    if-nez v1, :cond_2

    iput-object p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-eq v1, p1, :cond_0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    invoke-interface {v1, p1}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    :cond_3
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-nez v1, :cond_4

    new-instance v1, Ljava/util/Vector;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/Vector;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    :cond_4
    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    if-lt v0, v1, :cond_5

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v1, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private addValueType(S)V
    .locals 3

    iget-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    if-nez v1, :cond_2

    iput-short p1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    goto :goto_0

    :cond_2
    iget-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    if-eq v1, p1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    if-nez v1, :cond_3

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    mul-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;-><init>(I)V

    iput-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    :cond_3
    const/4 v0, 0x1

    :goto_1
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    if-lt v0, v1, :cond_4

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    iget-short v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->add(S)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/ShortList;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    goto :goto_0
.end method

.method private getValueTypeAt(I)S
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->valueAt(I)S

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    goto :goto_0
.end method

.method private itemValueTypeContains(Lmf/org/apache/xerces/xs/ShortList;)Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-eq v0, p1, :cond_2

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    invoke-interface {v0, p1}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private valueTypeContains(S)Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->contains(S)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget-short v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    if-ne v0, p1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public addValue(Lmf/org/apache/xerces/impl/xs/identity/Field;ZLjava/lang/Object;SLmf/org/apache/xerces/xs/ShortList;)V
    .locals 10

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/lit8 v3, v4, -0x1

    :goto_0
    if-gt v3, v5, :cond_2

    :cond_0
    if-ne v3, v5, :cond_3

    const-string v1, "UnknownField"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v2, v5, v8

    aput-object v0, v5, v9

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFields:[Lmf/org/apache/xerces/impl/xs/identity/Field;

    aget-object v4, v4, v3

    if-eq v4, p1, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    const-string v1, "FieldMultipleMatch"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v5, v9, [Ljava/lang/Object;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/identity/Field;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v7

    aput-object v0, v5, v8

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_1
    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aput-object p3, v4, v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short p4, v4, v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aput-object p5, v4, v3

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ne v4, v5, :cond_1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->checkDuplicateValues()V

    const/4 v3, 0x0

    :goto_2
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-ge v3, v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object v5, v5, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short v4, v4, v3

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->addValueType(S)V

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aget-object v4, v4, v3

    invoke-direct {p0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->addItemValueType(Lmf/org/apache/xerces/xs/ShortList;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    goto :goto_1
.end method

.method public append(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    iget-object v2, p1, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v2, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method protected checkDuplicateValues()V
    .locals 0

    return-void
.end method

.method public clear()V
    .locals 2

    const/4 v1, 0x0

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseValueTypeVector:Z

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypesLength:I

    iput-short v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueType:S

    iput-boolean v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fUseItemValueTypeVector:Z

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypesLength:I

    const/4 v0, 0x0

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueType:Lmf/org/apache/xerces/xs/ShortList;

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValueTypes:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ShortVector;->clear()V

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fItemValueTypes:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->setSize(I)V

    :cond_1
    return-void
.end method

.method public contains(Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;)I
    .locals 16

    move-object/from16 v0, p1

    iget-object v13, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v13}, Ljava/util/Vector;->size()I

    move-result v6

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    const/4 v15, 0x1

    if-gt v14, v15, :cond_5

    const/4 v1, 0x0

    :goto_0
    if-lt v1, v6, :cond_2

    :cond_0
    const/4 v1, -0x1

    :cond_1
    return v1

    :cond_2
    move-object/from16 v0, p1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v8

    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->valueTypeContains(S)Z

    move-result v14

    if-eqz v14, :cond_1

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v13, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_1

    const/16 v14, 0x2c

    if-eq v8, v14, :cond_3

    const/16 v14, 0x2b

    if-ne v8, v14, :cond_4

    :cond_3
    move-object/from16 v0, p1

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-direct {v0, v4}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->itemValueTypeContains(Lmf/org/apache/xerces/xs/ShortList;)Z

    move-result v14

    if-eqz v14, :cond_1

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_5
    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v14}, Ljava/util/Vector;->size()I

    move-result v7

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v6, :cond_0

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v7, :cond_1

    const/4 v3, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v3, v14, :cond_6

    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v1, v14

    goto :goto_1

    :cond_6
    add-int v14, v1, v3

    invoke-virtual {v13, v14}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v9

    move-object/from16 v0, p0

    iget-object v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    add-int v15, v2, v3

    invoke-virtual {v14, v15}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v10

    add-int v14, v1, v3

    move-object/from16 v0, p1

    invoke-direct {v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v11

    add-int v14, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v12

    if-eq v9, v10, :cond_8

    if-ne v11, v12, :cond_7

    if-eqz v9, :cond_7

    invoke-virtual {v9, v10}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget v14, v0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int/2addr v2, v14

    goto :goto_2

    :cond_8
    const/16 v14, 0x2c

    if-eq v11, v14, :cond_9

    const/16 v14, 0x2b

    if-ne v11, v14, :cond_a

    :cond_9
    add-int v14, v1, v3

    move-object/from16 v0, p1

    invoke-direct {v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v4

    add-int v14, v2, v3

    move-object/from16 v0, p0

    invoke-direct {v0, v14}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v5

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    invoke-interface {v4, v5}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_7

    :cond_a
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public contains()Z
    .locals 11

    const/4 v4, 0x0

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v10}, Ljava/util/Vector;->size()I

    move-result v5

    const/4 v0, 0x0

    :goto_0
    if-lt v0, v5, :cond_0

    const/4 v10, 0x0

    :goto_1
    return v10

    :cond_0
    iget v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    add-int v4, v0, v10

    const/4 v1, 0x0

    :goto_2
    iget v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v1, v10, :cond_1

    const/4 v10, 0x1

    goto :goto_1

    :cond_1
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aget-object v6, v10, v1

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValues:Ljava/util/Vector;

    invoke-virtual {v10, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v7

    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aget-short v8, v10, v1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getValueTypeAt(I)S

    move-result v9

    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    if-ne v8, v9, :cond_2

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    :cond_2
    move v0, v4

    goto :goto_0

    :cond_3
    const/16 v10, 0x2c

    if-eq v8, v10, :cond_4

    const/16 v10, 0x2b

    if-ne v8, v10, :cond_5

    :cond_4
    iget-object v10, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aget-object v2, v10, v1

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->getItemValueTypeAt(I)Lmf/org/apache/xerces/xs/ShortList;

    move-result-object v3

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    invoke-interface {v2, v3}, Lmf/org/apache/xerces/xs/ShortList;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    :cond_5
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method public endDocument()V
    .locals 0

    return-void
.end method

.method public endDocumentFragment()V
    .locals 0

    return-void
.end method

.method public endValueScope()V
    .locals 9

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    if-nez v4, :cond_1

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    if-ne v4, v6, :cond_0

    const-string v1, "AbsentKeyValue"

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v0, v5, v6

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-eq v4, v5, :cond_0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getCategory()S

    move-result v4

    if-ne v4, v6, :cond_0

    const-string v1, "KeyNotEnoughValues"

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    check-cast v3, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v4}, Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;->getElementName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/identity/UniqueOrKey;->getIdentityConstraintName()Ljava/lang/String;

    move-result-object v0

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    new-array v5, v8, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v0, v5, v6

    invoke-virtual {v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public reportError(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->this$0:Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;

    invoke-virtual {v0, p1, p2}, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator;->reportSchemaError(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public startValueScope()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x0

    iput v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fValuesCount:I

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fFieldCount:I

    if-lt v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValues:[Ljava/lang/Object;

    aput-object v3, v1, v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalValueTypes:[S

    aput-short v2, v1, v0

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fLocalItemValueTypes:[Lmf/org/apache/xerces/xs/ShortList;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

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

    if-eq v0, v4, :cond_0

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_0
    const/16 v3, 0x2e

    invoke-virtual {v2, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    if-eq v1, v4, :cond_1

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fIdentityConstraint:Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method protected toString(Ljava/util/Vector;II)Ljava/lang/String;
    .locals 3

    if-nez p3, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x1

    if-ne p3, v2, :cond_1

    invoke-virtual {p1, p2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v0, 0x0

    :goto_1
    if-lt v0, p3, :cond_2

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_2
    if-lez v0, :cond_3

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_3
    add-int v2, p2, v0

    invoke-virtual {p1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method protected toString([Ljava/lang/Object;)Ljava/lang/String;
    .locals 4

    array-length v1, p1

    if-nez v1, :cond_0

    const-string v2, ""

    :goto_0
    return-object v2

    :cond_0
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    const/4 v0, 0x0

    :goto_1
    if-lt v0, v1, :cond_1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_1
    if-lez v0, :cond_2

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    const/16 v3, 0x2c

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XMLSchemaValidator$ValueStoreBase;->fTempBuffer:Ljava/lang/StringBuffer;

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
