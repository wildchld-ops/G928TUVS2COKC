.class public final Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;
.super Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.source "SchemaGrammar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmf/org/apache/xerces/impl/xs/SchemaGrammar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Schema4Annotations"
.end annotation


# static fields
.field public static final INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;-><init>()V

    sput-object v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->INSTANCE:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;

    return-void
.end method

.method private constructor <init>()V
    .locals 72

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;-><init>()V

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSDDescription;-><init>()V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    const/4 v3, 0x3

    iput-short v3, v2, Lmf/org/apache/xerces/impl/xs/XSDDescription;->fContextType:S

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->URI_SCHEMAFORSCHEMA:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/XMLResourceIdentifierImpl;->setNamespace(Ljava/lang/String;)V

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDecls:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalAttrGrpDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalGroupDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalNotationDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalIDConstraintDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v2, Lmf/org/apache/xerces/util/SymbolHash;

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->SG_SchemaNS:Lmf/org/apache/xerces/impl/xs/SchemaGrammar$BuiltinSchemaGrammar;

    iget-object v2, v2, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, p0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v64

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v68

    sget-object v2, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v66

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v64

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, v64

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v68

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, v68

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v66

    iget-object v3, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    move-object/from16 v0, v66

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v64

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v64

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v68

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v68

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalElemDeclsExt:Lmf/org/apache/xerces/util/SymbolHash;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, ","

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v66

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, v66

    invoke-virtual {v2, v3, v0}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v64

    move-object/from16 v1, v64

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v68

    move-object/from16 v1, v68

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAllGlobalElemDecls:Lmf/org/apache/xerces/util/SymbolHash;

    move-object/from16 v0, v66

    move-object/from16 v1, v66

    invoke-virtual {v2, v0, v1}, Lmf/org/apache/xerces/util/SymbolHash;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v9, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct {v9}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    new-instance v17, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    new-instance v25, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    invoke-direct/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;-><init>()V

    move-object/from16 v0, v64

    iput-object v9, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, v17

    move-object/from16 v1, v68

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    move-object/from16 v0, v25

    move-object/from16 v1, v66

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fType:Lmf/org/apache/xerces/xs/XSTypeDefinition;

    new-instance v35, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct/range {v35 .. v35}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    new-instance v47, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct/range {v47 .. v47}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    new-instance v59, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;

    invoke-direct/range {v59 .. v59}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;-><init>()V

    new-instance v65, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct/range {v65 .. v65}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    move-object/from16 v0, v65

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v0, v65

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_ID:Ljava/lang/String;

    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v6, "ID"

    invoke-virtual {v5, v6}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v6, 0x0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v2 .. v10}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    const/4 v2, 0x0

    move-object/from16 v0, v65

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v2, 0x0

    move-object/from16 v0, v65

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v70, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct/range {v70 .. v70}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    move-object/from16 v0, v70

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v0, v70

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    sget-object v11, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v3, "anyURI"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    const/4 v2, 0x0

    move-object/from16 v0, v70

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v2, 0x0

    move-object/from16 v0, v70

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v69, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct/range {v69 .. v69}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    move-object/from16 v0, v69

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v0, v69

    iget-object v10, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    const-string/jumbo v2, "lang"

    invoke-virtual {v2}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v11

    sget-object v12, Lmf/org/apache/xerces/xni/NamespaceContext;->XML_URI:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string/jumbo v3, "language"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/4 v14, 0x0

    const/4 v15, 0x2

    const/16 v16, 0x0

    const/16 v18, 0x0

    invoke-virtual/range {v10 .. v18}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    const/4 v2, 0x0

    move-object/from16 v0, v69

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v2, 0x0

    move-object/from16 v0, v69

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v67, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;

    invoke-direct/range {v67 .. v67}, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;-><init>()V

    new-instance v2, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    invoke-direct {v2}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;-><init>()V

    move-object/from16 v0, v67

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v0, v67

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fAttrDecl:Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;

    move-object/from16 v18, v0

    sget-object v19, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ATT_SOURCE:Ljava/lang/String;

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fGlobalTypeDecls:Lmf/org/apache/xerces/util/SymbolHash;

    const-string v3, "anyURI"

    invoke-virtual {v2, v3}, Lmf/org/apache/xerces/util/SymbolHash;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lmf/org/apache/xerces/impl/dv/XSSimpleType;

    const/16 v22, 0x0

    const/16 v23, 0x2

    const/16 v24, 0x0

    const/16 v26, 0x0

    invoke-virtual/range {v18 .. v26}, Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/impl/dv/XSSimpleType;SSLmf/org/apache/xerces/impl/dv/ValidatedInfo;Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/xs/XSObjectList;)V

    const/4 v2, 0x0

    move-object/from16 v0, v67

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fUse:S

    const/4 v2, 0x0

    move-object/from16 v0, v67

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;->fConstraintType:S

    new-instance v71, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct/range {v71 .. v71}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    aput-object v4, v2, v3

    move-object/from16 v0, v71

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    const/4 v2, 0x2

    move-object/from16 v0, v71

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x3

    move-object/from16 v0, v71

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    move-object/from16 v0, v35

    move-object/from16 v1, v65

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-object/from16 v0, v71

    move-object/from16 v1, v35

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v0, v47

    move-object/from16 v1, v70

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-object/from16 v0, v47

    move-object/from16 v1, v69

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-object/from16 v0, v71

    move-object/from16 v1, v47

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    move-object/from16 v0, v59

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->addAttributeUse(Lmf/org/apache/xerces/impl/xs/XSAttributeUseImpl;)Ljava/lang/String;

    move-object/from16 v0, v71

    move-object/from16 v1, v59

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;->fAttributeWC:Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedModelGroupParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v37

    new-instance v63, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct/range {v63 .. v63}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v2, 0x65

    move-object/from16 v0, v63

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    const/4 v2, 0x2

    move-object/from16 v0, v63

    iput v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    const/4 v2, 0x2

    new-array v2, v2, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v0, v63

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-object/from16 v0, v63

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v66

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createChoiceElementParticle(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v63

    iget-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, v68

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createChoiceElementParticle(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    aput-object v4, v2, v3

    move-object/from16 v0, v63

    move-object/from16 v1, v37

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedAnyWildcardSequenceParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v49

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v28, v0

    sget-object v29, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    const/16 v30, 0x2

    const/16 v31, 0x0

    const/16 v32, 0x3

    const/16 v33, 0x2

    const/16 v34, 0x0

    const/16 v36, 0x0

    new-instance v38, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v38

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    move-object/from16 v26, v9

    invoke-virtual/range {v26 .. v38}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_ANNOTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v9, v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    invoke-virtual {v9}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v40, v0

    sget-object v41, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    const/16 v42, 0x2

    const/16 v43, 0x0

    const/16 v44, 0x3

    const/16 v45, 0x3

    const/16 v46, 0x0

    const/16 v48, 0x0

    new-instance v50, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v50

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    move-object/from16 v38, v17

    invoke-virtual/range {v38 .. v50}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_DOCUMENTATION:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    invoke-virtual/range {v17 .. v17}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fTargetNamespace:Ljava/lang/String;

    move-object/from16 v52, v0

    sget-object v53, Lmf/org/apache/xerces/impl/xs/SchemaGrammar;->fAnyType:Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;

    const/16 v54, 0x2

    const/16 v55, 0x0

    const/16 v56, 0x3

    const/16 v57, 0x3

    const/16 v58, 0x0

    const/16 v60, 0x0

    new-instance v62, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, v62

    invoke-direct {v0, v2, v3}, Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;-><init>([Lmf/org/apache/xerces/xs/XSObject;I)V

    move-object/from16 v50, v25

    move-object/from16 v61, v49

    invoke-virtual/range {v50 .. v62}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setValues(Ljava/lang/String;Ljava/lang/String;Lmf/org/apache/xerces/xs/XSTypeDefinition;SSSSZLmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Lmf/org/apache/xerces/impl/dv/XSSimpleType;Lmf/org/apache/xerces/impl/xs/XSParticleDecl;Lmf/org/apache/xerces/impl/xs/util/XSObjectListImpl;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "#AnonType_"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Lmf/org/apache/xerces/impl/xs/SchemaSymbols;->ELT_APPINFO:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, v25

    invoke-virtual {v0, v2}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setName(Ljava/lang/String;)V

    invoke-virtual/range {v25 .. v25}, Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;->setIsAnonymous()V

    return-void
.end method

.method private createAnnotationElementDecl(Ljava/lang/String;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;-><init>()V

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fName:Ljava/lang/String;

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fTargetNamespace:Ljava/lang/String;

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fTargetNamespace:Ljava/lang/String;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setIsGlobal()V

    const/4 v1, 0x7

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->fBlock:S

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/xs/XSElementDecl;->setConstraintType(S)V

    return-object v0
.end method

.method private createAnyLaxWildcardParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 4

    const/4 v3, 0x1

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    iput v3, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v3, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v2, 0x2

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;-><init>()V

    const/4 v2, 0x0

    iput-object v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fNamespaceList:[Ljava/lang/String;

    iput-short v3, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v2, 0x3

    iput-short v2, v0, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fProcessContents:S

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    return-object v1
.end method

.method private createChoiceElementParticle(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 2

    const/4 v1, 0x1

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    iput-object p1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    return-object v0
.end method

.method private createUnboundedAnyWildcardSequenceParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 5

    const/4 v3, 0x1

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createUnboundedModelGroupParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v0

    new-instance v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;

    invoke-direct {v1}, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;-><init>()V

    const/16 v2, 0x66

    iput-short v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fCompositor:S

    iput v3, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticleCount:I

    new-array v2, v3, [Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iput-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    iget-object v2, v1, Lmf/org/apache/xerces/impl/xs/XSModelGroupImpl;->fParticles:[Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    const/4 v3, 0x0

    invoke-direct {p0}, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->createAnyLaxWildcardParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    move-result-object v4

    aput-object v4, v2, v3

    iput-object v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fValue:Lmf/org/apache/xerces/xs/XSTerm;

    return-object v0
.end method

.method private createUnboundedModelGroupParticle()Lmf/org/apache/xerces/impl/xs/XSParticleDecl;
    .locals 2

    new-instance v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;

    invoke-direct {v0}, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMinOccurs:I

    const/4 v1, -0x1

    iput v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fMaxOccurs:I

    const/4 v1, 0x3

    iput-short v1, v0, Lmf/org/apache/xerces/impl/xs/XSParticleDecl;->fType:S

    return-object v0
.end method


# virtual methods
.method public addComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0

    return-void
.end method

.method public declared-synchronized addDocument(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 0

    monitor-enter p0

    monitor-exit p0

    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalAttributeDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalAttributeGroupDecl(Lmf/org/apache/xerces/impl/xs/XSAttributeGroupDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalComplexTypeDecl(Lmf/org/apache/xerces/impl/xs/XSComplexTypeDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalElementDecl(Lmf/org/apache/xerces/impl/xs/XSElementDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalElementDeclAll(Lmf/org/apache/xerces/impl/xs/XSElementDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;)V
    .locals 0

    return-void
.end method

.method public addGlobalNotationDecl(Lmf/org/apache/xerces/impl/xs/XSNotationDecl;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;)V
    .locals 0

    return-void
.end method

.method public addGlobalSimpleTypeDecl(Lmf/org/apache/xerces/impl/dv/XSSimpleType;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;)V
    .locals 0

    return-void
.end method

.method public addGlobalTypeDecl(Lmf/org/apache/xerces/xs/XSTypeDefinition;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public addRedefinedGroupDecl(Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/XSGroupDecl;Lmf/org/apache/xerces/impl/xs/util/SimpleLocator;)V
    .locals 0

    return-void
.end method

.method declared-synchronized getDOMParser()Lmf/org/apache/xerces/parsers/DOMParser;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public getGrammarDescription()Lmf/org/apache/xerces/xni/grammars/XMLGrammarDescription;
    .locals 1

    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/SchemaGrammar$Schema4Annotations;->fGrammarDescription:Lmf/org/apache/xerces/impl/xs/XSDDescription;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/XSDDescription;->makeClone()Lmf/org/apache/xerces/impl/xs/XSDDescription;

    move-result-object v0

    return-object v0
.end method

.method declared-synchronized getSAXParser()Lmf/org/apache/xerces/parsers/SAXParser;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    monitor-exit p0

    return-object v0
.end method

.method public setImportedGrammars(Ljava/util/Vector;)V
    .locals 0

    return-void
.end method
