.class public final Lmf/org/apache/xerces/impl/xs/XSModelImpl;
.super Ljava/util/AbstractList;
.source "XSModelImpl.java"

# interfaces
.implements Lmf/org/apache/xerces/xs/XSModel;
.implements Lmf/org/apache/xerces/xs/XSNamespaceItemList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;
    }
.end annotation


# static fields
.field private static final GLOBAL_COMP:[Z

.field private static final MAX_COMP_IDX:S = 0x10s


# instance fields
.field private fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

.field private final fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

.field private final fGrammarCount:I

.field private final fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

.field private final fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

.field private final fHasIDC:Z

.field private final fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

.field private final fNamespaces:[Ljava/lang/String;

.field private final fNamespacesList:Lmf/org/apache/xerces/xs/StringList;

.field private final fSubGroupMap:Lmf/org/apache/xerces/util/SymbolHash;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x1

    const/16 v0, 0x11

    new-array v0, v0, [Z

    aput-boolean v2, v0, v2

    const/4 v1, 0x2

    aput-boolean v2, v0, v1

    const/4 v1, 0x3

    aput-boolean v2, v0, v1

    const/4 v1, 0x5

    aput-boolean v2, v0, v1

    const/4 v1, 0x6

    aput-boolean v2, v0, v1

    const/16 v1, 0xa

    aput-boolean v2, v0, v1

    const/16 v1, 0xb

    aput-boolean v2, v0, v1

    const/16 v1, 0xf

    aput-boolean v2, v0, v1

    const/16 v1, 0x10

    aput-boolean v2, v0, v1

    sput-object v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->GLOBAL_COMP:[Z

    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;-><init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)V

    return-void
.end method

.method public constructor <init>([Lmf/org/apache/xerces/impl/xs/SchemaGrammar;S)V
    .locals 22

    invoke-direct/range {p0 .. p0}, Ljava/util/AbstractList;-><init>()V

    const/16 v19, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    move-object/from16 v0, p1

    array-length v10, v0

    add-int/lit8 v19, v10, 0x1

    const/16 v20, 0x5

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I

    move-result v7

    new-array v12, v7, [Ljava/lang/String;

    new-array v2, v7, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-lt v6, v10, :cond_1

    if-nez v5, :cond_0

    sget-object v19, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    aput-object v19, v12, v10

    add-int/lit8 v11, v10, 0x1

    invoke-static/range {p2 .. p2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getS4SGrammar(S)Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-result-object v19

    aput-object v19, v2, v10

    move v10, v11

    :cond_0
    const/4 v6, 0x0

    :goto_1
    if-lt v6, v10, :cond_3

    move-object/from16 v0, p0

    iput-object v12, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v4, 0x0

    new-instance v19, Lmf/org/apache/xerces/util/SymbolHash;

    mul-int/lit8 v20, v10, 0x2

    invoke-direct/range {v19 .. v20}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v6, 0x0

    :goto_2
    if-lt v6, v10, :cond_a

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fHasIDC:Z

    move-object/from16 v0, p0

    iput v10, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    const/16 v19, 0x11

    move/from16 v0, v19

    new-array v0, v0, [Lmf/org/apache/xerces/xs/XSNamedMap;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    const/16 v19, 0x11

    move/from16 v0, v19

    filled-new-array {v10, v0}, [I

    move-result-object v19

    const-class v20, Lmf/org/apache/xerces/xs/XSNamedMap;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, [[Lmf/org/apache/xerces/xs/XSNamedMap;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v19, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    move/from16 v21, v0

    invoke-direct/range {v19 .. v21}, Lmf/org/apache/xerces/impl/xs/util/StringListImpl;-><init>([Ljava/lang/String;I)V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespacesList:Lmf/org/apache/xerces/xs/StringList;

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->buildSubGroups()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fSubGroupMap:Lmf/org/apache/xerces/util/SymbolHash;

    return-void

    :cond_1
    aget-object v15, p1, v6

    invoke-virtual {v15}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v18

    aput-object v18, v12, v6

    aput-object v15, v2, v6

    sget-object v19, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_3
    aget-object v16, v2, v6

    invoke-virtual/range {v16 .. v16}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getImportedGrammars()Ljava/util/Vector;

    move-result-object v3

    if-nez v3, :cond_4

    const/4 v8, -0x1

    :goto_3
    if-gez v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v19

    add-int/lit8 v8, v19, -0x1

    goto :goto_3

    :cond_5
    invoke-virtual {v3, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/4 v9, 0x0

    :goto_4
    if-lt v9, v10, :cond_9

    :cond_6
    if-ne v9, v10, :cond_8

    array-length v0, v2

    move/from16 v19, v0

    move/from16 v0, v19

    if-ne v10, v0, :cond_7

    mul-int/lit8 v19, v10, 0x2

    move/from16 v0, v19

    new-array v14, v0, [Ljava/lang/String;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v12, v0, v14, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v12, v14

    mul-int/lit8 v19, v10, 0x2

    move/from16 v0, v19

    new-array v13, v0, [Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move/from16 v1, v20

    invoke-static {v2, v0, v13, v1, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v2, v13

    :cond_7
    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getTargetNamespace()Ljava/lang/String;

    move-result-object v19

    aput-object v19, v12, v10

    aput-object v17, v2, v10

    add-int/lit8 v10, v10, 0x1

    :cond_8
    add-int/lit8 v8, v8, -0x1

    goto :goto_3

    :cond_9
    aget-object v19, v2, v9

    move-object/from16 v0, v17

    move-object/from16 v1, v19

    if-eq v0, v1, :cond_6

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    move-object/from16 v20, v0

    aget-object v20, v20, v6

    invoke-static/range {v20 .. v20}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-object/from16 v21, v0

    aget-object v21, v21, v6

    invoke-virtual/range {v19 .. v21}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    move-object/from16 v19, v0

    aget-object v19, v19, v6

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->hasIDConstraints()Z

    move-result v19

    if-eqz v19, :cond_b

    const/4 v4, 0x1

    :cond_b
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_2
.end method

.method static synthetic access$0(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    return v0
.end method

.method static synthetic access$1(Lmf/org/apache/xerces/impl/xs/XSModelImpl;)[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    return-object v0
.end method

.method private buildSubGroups()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 9

    new-instance v4, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v2, v7, :cond_0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->getGlobalElements()Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    move-result-object v0

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->getLength()I

    move-result v3

    new-instance v6, Lmf/org/apache/xerces/util/SymbolHash;

    mul-int/lit8 v7, v3, 0x2

    invoke-direct {v6, v7}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_1

    return-object v6

    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v7

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->addSubstitutionGroup([Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v5

    array-length v7, v5

    if-lez v7, :cond_2

    new-instance v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v8, v5

    invoke-direct {v7, v5, v8}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_2
    invoke-virtual {v6, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_2
.end method

.method private buildSubGroups_Org()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 9

    new-instance v4, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;

    const/4 v7, 0x0

    invoke-direct {v4, v7}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;-><init>(Lmf/org/apache/xerces/impl/xs/XSElementDeclHelper;)V

    const/4 v2, 0x0

    :goto_0
    iget v7, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v2, v7, :cond_0

    const/4 v7, 0x2

    invoke-virtual {p0, v7}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;

    move-result-object v0

    invoke-interface {v0}, Lmf/org/apache/xerces/xs/XSNamedMap;->getLength()I

    move-result v3

    new-instance v6, Lmf/org/apache/xerces/util/SymbolHash;

    mul-int/lit8 v7, v3, 0x2

    invoke-direct {v6, v7}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    const/4 v2, 0x0

    :goto_1
    if-lt v2, v3, :cond_1

    return-object v6

    :cond_0
    iget-object v7, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v7, v7, v2

    invoke-virtual {v7}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getSubstitutionGroups()[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v7

    invoke-virtual {v4, v7}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->addSubstitutionGroup([Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-interface {v0, v2}, Lmf/org/apache/xerces/xs/XSNamedMap;->item(I)Lmf/org/apache/xerces/xs/XSObject;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {v4, v1}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getSubstitutionGroup(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)[Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v5

    array-length v7, v5

    if-lez v7, :cond_2

    new-instance v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v8, v5

    invoke-direct {v7, v5, v8}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    :goto_2
    invoke-virtual {v6, v1, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    sget-object v7, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    goto :goto_2
.end method

.method private getGlobalElements()Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;
    .locals 6

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    new-array v4, v5, [Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v2, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v1, v5, :cond_0

    if-nez v2, :cond_1

    sget-object v5, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    :goto_1
    return-object v5

    :cond_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v5, v5, v1

    iget-object v5, v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v5, v4, v1

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v5

    add-int/2addr v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-array v0, v2, [Lmf/org/apache/xerces/xs/XSObject;

    const/4 v3, 0x0

    const/4 v1, 0x0

    :goto_2
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v1, v5, :cond_2

    new-instance v5, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    invoke-direct {v5, v0, v2}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    goto :goto_1

    :cond_2
    aget-object v5, v4, v1

    invoke-virtual {v5, v0, v3}, Lmf/org/apache/xerces/util/SymbolHash;->getValues([Ljava/lang/Object;I)I

    aget-object v5, v4, v1

    invoke-virtual {v5}, Lmf/org/apache/xerces/util/SymbolHash;->getLength()I

    move-result v5

    add-int/2addr v3, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method

.method private listIterator0(I)Ljava/util/ListIterator;
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;

    invoke-direct {v0, p0, p1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl$XSNamespaceItemListIterator;-><init>(Lmf/org/apache/xerces/impl/xs/XSModelImpl;I)V

    return-object v0
.end method

.method private static final null2EmptyString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    if-nez p0, :cond_0

    sget-object p0, Lmf/org/apache/xerces/util/XMLSymbols;->EMPTY_STRING:Ljava/lang/String;

    :cond_0
    return-object p0
.end method

.method private toArray0([Ljava/lang/Object;)V
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-static {v0, v2, p1, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_0
    return-void
.end method


# virtual methods
.method public get(I)Ljava/lang/Object;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v0, v0, p1

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized getAnnotations()Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v5

    :cond_0
    const/4 v4, 0x0

    const/4 v3, 0x0

    :goto_1
    :try_start_1
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v3, v5, :cond_1

    if-nez v4, :cond_2

    sget-object v5, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;->EMPTY_LIST:Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v5, v5, v3

    iget v5, v5, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    add-int/2addr v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v4, [Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v3, v5, :cond_3

    new-instance v5, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    array-length v6, v0

    invoke-direct {v5, v0, v6}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    iput-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fAnnotations:Lmf/org/apache/xerces/xs/XSObjectList;

    goto :goto_0

    :cond_3
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v1, v5, v3

    iget v5, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    if-lez v5, :cond_4

    iget-object v5, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnnotations:[Lmf/org/apache/xerces/impl/xs/XSAnnotationImpl;

    const/4 v6, 0x0

    iget v7, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I

    invoke-static {v5, v6, v0, v2, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, v1, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fNumAnnotations:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/2addr v2, v5

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5
.end method

.method public getAttributeDeclaration(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSAttributeDeclaration;

    goto :goto_0
.end method

.method public getAttributeDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeDeclaration;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-result-object v1

    goto :goto_0
.end method

.method public getAttributeGroup(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;

    goto :goto_0
.end method

.method public getAttributeGroup(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSAttributeGroupDefinition;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalAttributeGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    move-result-object v1

    goto :goto_0
.end method

.method public declared-synchronized getComponents(S)Lmf/org/apache/xerces/xs/XSNamedMap;
    .locals 6

    const/16 v3, 0x10

    monitor-enter p0

    if-lez p1, :cond_0

    if-gt p1, v3, :cond_0

    :try_start_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->GLOBAL_COMP:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    :try_start_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    new-array v1, v2, [Lmf/org/apache/xerces/util/SymbolHash;

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v2, v2, p1

    if-nez v2, :cond_3

    const/4 v0, 0x0

    :goto_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v0, v2, :cond_4

    const/16 v2, 0xf

    if-eq p1, v2, :cond_2

    if-ne p1, v3, :cond_5

    :cond_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-direct {v3, v4, v1, v5, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;-><init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;IS)V

    aput-object v3, v2, p1

    :cond_3
    :goto_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v2, v2, p1

    goto :goto_0

    :cond_4
    packed-switch p1, :pswitch_data_0

    :goto_3
    :pswitch_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :pswitch_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v2, v1, v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    :pswitch_2
    :try_start_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v2, v1, v0

    goto :goto_3

    :pswitch_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v2, v1, v0

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v2, v1, v0

    goto :goto_3

    :pswitch_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v2, v1, v0

    goto :goto_3

    :pswitch_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v2, v1, v0

    goto :goto_3

    :pswitch_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    aput-object v2, v1, v0

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGlobalComponents:[Lmf/org/apache/xerces/xs/XSNamedMap;

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    iget-object v4, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-direct {v3, v4, v1, v5}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>([Ljava/lang/String;[Lmf/org/apache/xerces/util/SymbolHash;I)V

    aput-object v3, v2, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public declared-synchronized getComponentsByNamespace(SLjava/lang/String;)Lmf/org/apache/xerces/xs/XSNamedMap;
    .locals 4

    const/16 v3, 0x10

    monitor-enter p0

    if-lez p1, :cond_0

    if-gt p1, v3, :cond_0

    :try_start_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->GLOBAL_COMP:[Z

    aget-boolean v2, v2, p1

    if-nez v2, :cond_1

    :cond_0
    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-object v2

    :cond_1
    const/4 v0, 0x0

    if-eqz p2, :cond_5

    :goto_1
    :try_start_1
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v0, v2, :cond_3

    :cond_2
    :goto_2
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ne v0, v2, :cond_6

    sget-object v2, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;->EMPTY_MAP:Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespaces:[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_2

    add-int/lit8 v0, v0, 0x1

    :cond_5
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt v0, v2, :cond_4

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v2, v2, v0

    aget-object v2, v2, p1

    if-nez v2, :cond_8

    const/4 v1, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_3
    :pswitch_0
    const/16 v2, 0xf

    if-eq p1, v2, :cond_7

    if-ne p1, v3, :cond_9

    :cond_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;

    invoke-direct {v3, p2, v1, p1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMap4Types;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;S)V

    aput-object v3, v2, p1

    :cond_8
    :goto_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v2, v2, v0

    aget-object v2, v2, p1

    goto :goto_0

    :pswitch_1
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v1, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_2
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v1, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_3
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v1, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_4
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v1, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_5
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v1, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_6
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v1, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :pswitch_7
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v2, v2, v0

    iget-object v1, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    goto :goto_3

    :cond_9
    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNSComponents:[[Lmf/org/apache/xerces/xs/XSNamedMap;

    aget-object v2, v2, v0

    new-instance v3, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;

    invoke-direct {v3, p2, v1}, Lmf/org/apache/xerces/impl/xs/util/XSNamedMapImpl;-><init>(Ljava/lang/String;Lmf/org/apache/xerces/util/SymbolHash;)V

    aput-object v3, v2, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public getElementDeclaration(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSElementDeclaration;

    goto :goto_0
.end method

.method public getElementDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSElementDeclaration;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalElementDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    goto :goto_0
.end method

.method public getIDCDefinition(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSIDCDefinition;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSIDCDefinition;

    goto :goto_0
.end method

.method public getIDCDefinition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSIDCDefinition;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getIDConstraintDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/identity/IdentityConstraint;

    move-result-object v1

    goto :goto_0
.end method

.method public getLength()I
    .locals 1

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    return v0
.end method

.method public getModelGroupDefinition(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModelGroupDefinition;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSModelGroupDefinition;

    goto :goto_0
.end method

.method public getModelGroupDefinition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSModelGroupDefinition;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalGroupDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSGroupDecl;

    move-result-object v1

    goto :goto_0
.end method

.method public getNamespaceItems()Lmf/org/apache/xerces/xs/XSNamespaceItemList;
    .locals 0

    return-object p0
.end method

.method public getNamespaces()Lmf/org/apache/xerces/xs/StringList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fNamespacesList:Lmf/org/apache/xerces/xs/StringList;

    return-object v0
.end method

.method public getNotationDeclaration(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSNotationDeclaration;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSNotationDeclaration;

    goto :goto_0
.end method

.method public getNotationDeclaration(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSNotationDeclaration;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalNotationDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSNotationDecl;

    move-result-object v1

    goto :goto_0
.end method

.method public getSubstitutionGroup(Lmf/org/apache/xerces/xs/XSElementDeclaration;)Lmf/org/apache/xerces/xs/XSObjectList;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fSubGroupMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/xs/XSObjectList;

    return-object v0
.end method

.method public getTypeDefinition(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    iget-object v1, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v1, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmf/org/apache/xerces/xs/XSTypeDefinition;

    goto :goto_0
.end method

.method public getTypeDefinition(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;
    .locals 3

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarMap:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {p2}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->null2EmptyString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0, p1, p3}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->getGlobalTypeDecl(Ljava/lang/String;Ljava/lang/String;)Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-result-object v1

    goto :goto_0
.end method

.method public hasIDConstraints()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fHasIDC:Z

    return v0
.end method

.method public item(I)Lmf/org/apache/xerces/xs/XSNamespaceItem;
    .locals 1

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarList:[Lmf/org/apache/xerces/impl/xs/SchemaGrammar;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 3

    if-ltz p1, :cond_0

    iget v0, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge p1, v0, :cond_0

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->listIterator0(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Index: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->getLength()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 2

    iget v1, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    new-array v0, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->toArray0([Ljava/lang/Object;)V

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 4

    array-length v2, p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    invoke-static {v1, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    :cond_0
    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->toArray0([Ljava/lang/Object;)V

    array-length v2, p1

    iget v3, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    if-le v2, v3, :cond_1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/XSModelImpl;->fGrammarCount:I

    const/4 v3, 0x0

    aput-object v3, p1, v2

    :cond_1
    return-object p1
.end method
