.class public Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;
.super Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;
.source "FullDVFactory.java"


# static fields
.field static final URI_SCHEMAFORSCHEMA:Ljava/lang/String; = "http://www.w3.org/2001/XMLSchema"

.field static fFullTypes:Lmf/org/apache/xerces/util/SymbolHash;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/util/SymbolHash;

    const/16 v1, 0x59

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    sput-object v0, Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;->fFullTypes:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;->fFullTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-static {v0}, Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;->createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;-><init>()V

    return-void
.end method

.method static createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;)V
    .locals 44

    invoke-static/range {p0 .. p0}, Lmf/org/apache/xerces/impl/dv/xs/BaseDVFactory;->createBuiltInTypes(Lmf/org/apache/xerces/util/SymbolHash;)V

    const-string v23, "double"

    const-string v24, "duration"

    const-string v26, "ENTITY"

    const-string v25, "ENTITIES"

    const-string/jumbo v27, "float"

    const-string/jumbo v28, "hexBinary"

    const-string v29, "ID"

    const-string v30, "IDREF"

    const-string v31, "IDREFS"

    const-string v33, "Name"

    const-string v34, "NCName"

    const-string v35, "NMTOKEN"

    const-string v36, "NMTOKENS"

    const-string/jumbo v32, "language"

    const-string/jumbo v37, "normalizedString"

    const-string v38, "NOTATION"

    const-string v39, "QName"

    const-string/jumbo v40, "string"

    const-string/jumbo v41, "token"

    new-instance v42, Lmf/org/apache/xerces/impl/dv/XSFacets;

    invoke-direct/range {v42 .. v42}, Lmf/org/apache/xerces/impl/dv/XSFacets;-><init>()V

    sget-object v4, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->fAnySimpleType:Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v3, "string"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v43

    check-cast v43, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v17, "float"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v5, "float"

    const/4 v6, 0x4

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x5

    invoke-direct/range {v3 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v17, "double"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "double"

    const/4 v6, 0x5

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x6

    invoke-direct/range {v3 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v17, "duration"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "duration"

    const/4 v6, 0x6

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x7

    invoke-direct/range {v3 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string/jumbo v17, "hexBinary"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v5, "hexBinary"

    const/16 v6, 0xf

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x10

    invoke-direct/range {v3 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v17, "QName"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "QName"

    const/16 v6, 0x12

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x13

    invoke-direct/range {v3 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v17, "NOTATION"

    new-instance v3, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v5, "NOTATION"

    const/16 v6, 0x14

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    const/16 v12, 0x14

    invoke-direct/range {v3 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1, v3}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    move-object/from16 v0, v42

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v5, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v7, "normalizedString"

    const-string/jumbo v8, "http://www.w3.org/2001/XMLSchema"

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/16 v12, 0x15

    move-object/from16 v6, v43

    invoke-direct/range {v5 .. v12}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v3, 0x10

    const/16 v17, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v5, v0, v3, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string/jumbo v3, "normalizedString"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v5}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    move-object/from16 v0, v42

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v6, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v8, "token"

    const-string/jumbo v9, "http://www.w3.org/2001/XMLSchema"

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x16

    move-object v7, v5

    invoke-direct/range {v6 .. v13}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v3, 0x10

    const/16 v17, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v6, v0, v3, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string/jumbo v3, "token"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v6}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    move-object/from16 v0, v42

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    const-string v3, "([a-zA-Z]{1,8})(-[a-zA-Z0-9]{1,8})*"

    move-object/from16 v0, v42

    iput-object v3, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->pattern:Ljava/lang/String;

    new-instance v7, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string/jumbo v9, "language"

    const-string/jumbo v10, "http://www.w3.org/2001/XMLSchema"

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x17

    move-object v8, v6

    invoke-direct/range {v7 .. v14}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v3, 0x18

    const/16 v17, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v7, v0, v3, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string/jumbo v3, "language"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    move-object/from16 v0, v42

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v8, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v10, "Name"

    const-string/jumbo v11, "http://www.w3.org/2001/XMLSchema"

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v15, 0x19

    move-object v9, v6

    invoke-direct/range {v8 .. v15}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v3, 0x10

    const/16 v17, 0x0

    const/16 v18, 0x2

    move-object/from16 v0, v42

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v8, v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v3, "Name"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v8}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    move-object/from16 v0, v42

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v9, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v11, "NCName"

    const-string/jumbo v12, "http://www.w3.org/2001/XMLSchema"

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x1a

    move-object v10, v8

    invoke-direct/range {v9 .. v16}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v3, 0x10

    const/16 v17, 0x0

    const/16 v18, 0x3

    move-object/from16 v0, v42

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v9, v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v3, "NCName"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v9}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string v3, "ID"

    new-instance v10, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v12, "ID"

    const/16 v13, 0x15

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1b

    move-object v11, v9

    invoke-direct/range {v10 .. v19}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v10, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v12, "IDREF"

    const/16 v13, 0x16

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x1

    const/16 v19, 0x1c

    move-object v11, v9

    invoke-direct/range {v10 .. v19}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v3, "IDREF"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v10}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    move-object/from16 v0, v42

    iput v3, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v12, 0x0

    const-string/jumbo v13, "http://www.w3.org/2001/XMLSchema"

    const/4 v14, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v15, v10

    invoke-direct/range {v11 .. v17}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    new-instance v12, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v14, "IDREFS"

    const-string/jumbo v15, "http://www.w3.org/2001/XMLSchema"

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    move-object v13, v11

    invoke-direct/range {v12 .. v18}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    const/4 v3, 0x2

    const/16 v17, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v12, v0, v3, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v3, "IDREFS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v12}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v13, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v15, "ENTITY"

    const/16 v16, 0x17

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x1d

    move-object v14, v9

    invoke-direct/range {v13 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;SSZZZZS)V

    const-string v3, "ENTITY"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    move-object/from16 v0, v42

    iput v3, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/4 v15, 0x0

    const-string/jumbo v16, "http://www.w3.org/2001/XMLSchema"

    const/16 v17, 0x0

    const/16 v19, 0x1

    const/16 v20, 0x0

    move-object v14, v11

    move-object/from16 v18, v13

    invoke-direct/range {v14 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    new-instance v14, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v16, "ENTITIES"

    const-string/jumbo v17, "http://www.w3.org/2001/XMLSchema"

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object v15, v11

    invoke-direct/range {v14 .. v20}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    const/4 v3, 0x2

    const/16 v17, 0x0

    move-object/from16 v0, v42

    move/from16 v1, v17

    invoke-virtual {v14, v0, v3, v1}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v3, "ENTITIES"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x2

    move-object/from16 v0, v42

    iput-short v3, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->whiteSpace:S

    new-instance v15, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v17, "NMTOKEN"

    const-string/jumbo v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x18

    move-object/from16 v16, v6

    invoke-direct/range {v15 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;S)V

    const/16 v3, 0x10

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v0, v42

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v15, v0, v3, v1, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SSS)V

    const-string v3, "NMTOKEN"

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v3, 0x1

    move-object/from16 v0, v42

    iput v3, v0, Lmf/org/apache/xerces/impl/dv/XSFacets;->minLength:I

    new-instance v11, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const/16 v17, 0x0

    const-string/jumbo v18, "http://www.w3.org/2001/XMLSchema"

    const/16 v19, 0x0

    const/16 v21, 0x1

    const/16 v22, 0x0

    move-object/from16 v16, v11

    move-object/from16 v20, v15

    invoke-direct/range {v16 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Ljava/lang/String;Ljava/lang/String;SLmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;ZLmf/org/apache/xerces/xs/XSObjectList;)V

    new-instance v16, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;

    const-string v18, "NMTOKENS"

    const-string/jumbo v19, "http://www.w3.org/2001/XMLSchema"

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v11

    invoke-direct/range {v16 .. v22}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;-><init>(Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;Ljava/lang/String;Ljava/lang/String;SZLmf/org/apache/xerces/xs/XSObjectList;)V

    const/4 v3, 0x2

    const/16 v17, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v42

    move/from16 v2, v17

    invoke-virtual {v0, v1, v3, v2}, Lmf/org/apache/xerces/impl/dv/xs/XSSimpleTypeDecl;->applyFacets1(Lmf/org/apache/xerces/impl/dv/XSFacets;SS)V

    const-string v3, "NMTOKENS"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v3, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getBuiltInType(Ljava/lang/String;)Lmf/org/apache/xerces/impl/dv/XSSimpleType;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;->fFullTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0, p1}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    return-object v0
.end method

.method public getBuiltInTypes()Lmf/org/apache/xerces/util/SymbolHash;
    .locals 1

    sget-object v0, Lmf/org/apache/xerces/impl/dv/xs/FullDVFactory;->fFullTypes:Lmf/org/apache/xerces/util/SymbolHash;

    invoke-virtual {v0}, Lmf/org/apache/xerces/util/SymbolHash;->makeClone()Lmf/org/apache/xerces/util/SymbolHash;

    move-result-object v0

    return-object v0
.end method
