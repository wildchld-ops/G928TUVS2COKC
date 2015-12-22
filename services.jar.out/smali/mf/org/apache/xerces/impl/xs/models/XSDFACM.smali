.class public Lmf/org/apache/xerces/impl/xs/models/XSDFACM;
.super Ljava/lang/Object;
.source "XSDFACM.java"

# interfaces
.implements Lmf/org/apache/xerces/impl/xs/models/XSCMValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_VALIDATE_CONTENT:Z

.field private static time:J


# instance fields
.field private fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

.field private fElemMap:[Ljava/lang/Object;

.field private fElemMapId:[I

.field private fElemMapSize:I

.field private fElemMapType:[I

.field private fFinalStateFlags:[Z

.field private fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

.field private fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

.field private fIsCompactedForUPA:Z

.field private fLeafCount:I

.field private fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

.field private fLeafListType:[I

.field private fTransTable:[[I

.field private fTransTableSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->time:J

    return-void
.end method

.method public constructor <init>(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    iput-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    iput v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTableSize:I

    iput p2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isCompactedForUPA()Z

    move-result v0

    iput-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fIsCompactedForUPA:Z

    invoke-direct {p0, p1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    return-void
.end method

.method private buildDFA(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 43

    move-object/from16 v0, p0

    iget v6, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    new-instance v26, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    const/16 v38, 0x1

    const/16 v39, 0x0

    const/16 v40, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v41, v0

    add-int/lit8 v42, v41, 0x1

    move/from16 v0, v42

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move-object/from16 v0, v26

    move/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    move/from16 v4, v41

    invoke-direct {v0, v1, v2, v3, v4}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;-><init>(ILjava/lang/Object;II)V

    new-instance v38, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    const/16 v39, 0x66

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, p1

    move-object/from16 v3, v26

    invoke-direct {v0, v1, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;-><init>(ILmf/org/apache/xerces/impl/dtd/models/CMNode;Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/16 v17, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v17

    move/from16 v1, v38

    if-lt v0, v1, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v38

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v0, v0, [I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    const/16 v38, 0x0

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    const/4 v10, 0x0

    const/16 v27, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v27

    move/from16 v1, v38

    if-lt v0, v1, :cond_3

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, -0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v39, v0

    add-int v38, v38, v39

    move/from16 v0, v38

    new-array v11, v0, [I

    const/4 v12, 0x0

    const/4 v9, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-lt v9, v0, :cond_9

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    mul-int/lit8 v7, v38, 0x4

    new-array v0, v7, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v34, v0

    new-array v0, v7, [Z

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    new-array v0, v7, [[I

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-object/from16 v38, v0

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v28

    const/16 v37, 0x0

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v38, v0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v39

    aput-object v39, v38, v8

    aput-object v28, v34, v8

    add-int/lit8 v8, v8, 0x1

    new-instance v33, Ljava/util/HashMap;

    invoke-direct/range {v33 .. v33}, Ljava/util/HashMap;-><init>()V

    :cond_0
    move/from16 v0, v37

    if-lt v0, v8, :cond_c

    if-eqz v10, :cond_1

    new-array v0, v8, [Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    move-object/from16 v38, v0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    const/4 v14, 0x0

    :goto_3
    if-lt v14, v8, :cond_13

    :cond_1
    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fHeadNode:Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    const/16 v38, 0x0

    move-object/from16 v0, v38

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    return-void

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v38, v0

    new-instance v39, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v40, v0

    invoke-direct/range {v39 .. v40}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    aput-object v39, v38, v17

    add-int/lit8 v17, v17, 0x1

    goto/16 :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    move-object/from16 v38, v0

    const/16 v39, 0x0

    aput-object v39, v38, v27

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v38, v0

    aget-object v38, v38, v27

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v15

    :goto_4
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    move/from16 v0, v16

    move/from16 v1, v38

    if-lt v0, v1, :cond_8

    :cond_4
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    move/from16 v0, v16

    move/from16 v1, v38

    if-ne v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v38, v0

    aget-object v19, v38, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v39, v0

    invoke-virtual/range {v19 .. v19}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v40

    aput-object v40, v38, v39

    move-object/from16 v0, v19

    instance-of v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    move/from16 v38, v0

    if-eqz v38, :cond_6

    if-nez v10, :cond_5

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v38

    new-array v10, v0, [Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    :cond_5
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    new-instance v39, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    check-cast v19, Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v40, v0

    move-object/from16 v0, v39

    move-object/from16 v1, v19

    move/from16 v2, v40

    invoke-direct {v0, v1, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;-><init>(Lmf/org/apache/xerces/impl/xs/models/XSCMRepeatingLeaf;I)V

    aput-object v39, v10, v38

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    move-object/from16 v40, v0

    aget v40, v40, v27

    aput v40, v38, v39

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    move-object/from16 v38, v0

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v39, v0

    aput v15, v38, v39

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    add-int/lit8 v38, v38, 0x1

    move/from16 v0, v38

    move-object/from16 v1, p0

    iput v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    :cond_7
    add-int/lit8 v27, v27, 0x1

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    move-object/from16 v38, v0

    aget v38, v38, v16

    move/from16 v0, v38

    if-eq v15, v0, :cond_4

    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_4

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapId:[I

    move-object/from16 v38, v0

    aget v15, v38, v9

    const/16 v20, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move/from16 v0, v20

    move/from16 v1, v38

    if-lt v0, v1, :cond_a

    add-int/lit8 v13, v12, 0x1

    const/16 v38, -0x1

    aput v38, v11, v12

    add-int/lit8 v9, v9, 0x1

    move v12, v13

    goto/16 :goto_2

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    move-object/from16 v38, v0

    aget-object v38, v38, v20

    invoke-virtual/range {v38 .. v38}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getParticleId()I

    move-result v38

    move/from16 v0, v38

    if-ne v15, v0, :cond_b

    add-int/lit8 v13, v12, 0x1

    aput v20, v11, v12

    move v12, v13

    :cond_b
    add-int/lit8 v20, v20, 0x1

    goto :goto_5

    :cond_c
    aget-object v28, v34, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v38, v0

    aget-object v35, v38, v37

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    move-object/from16 v38, v0

    move-object/from16 v0, v28

    invoke-virtual {v0, v6}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v39

    aput-boolean v39, v38, v37

    add-int/lit8 v37, v37, 0x1

    const/16 v22, 0x0

    const/16 v29, 0x0

    const/4 v9, 0x0

    :goto_6
    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    move/from16 v38, v0

    move/from16 v0, v38

    if-ge v9, v0, :cond_0

    if-nez v22, :cond_f

    new-instance v22, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v0, p0

    iget v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    move/from16 v38, v0

    move-object/from16 v0, v22

    move/from16 v1, v38

    invoke-direct {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;-><init>(I)V

    :goto_7
    add-int/lit8 v30, v29, 0x1

    aget v20, v11, v29

    :goto_8
    const/16 v38, -0x1

    move/from16 v0, v20

    move/from16 v1, v38

    if-ne v0, v1, :cond_10

    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->isEmpty()Z

    move-result v38

    if-nez v38, :cond_e

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v32

    check-cast v32, Ljava/lang/Integer;

    if-nez v32, :cond_12

    move/from16 v31, v8

    :goto_9
    move/from16 v0, v31

    if-ne v0, v8, :cond_d

    aput-object v22, v34, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v38, v0

    invoke-direct/range {p0 .. p0}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->makeDefStateList()[I

    move-result-object v39

    aput-object v39, v38, v8

    new-instance v38, Ljava/lang/Integer;

    move-object/from16 v0, v38

    invoke-direct {v0, v8}, Ljava/lang/Integer;-><init>(I)V

    move-object/from16 v0, v33

    move-object/from16 v1, v22

    move-object/from16 v2, v38

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v8, v8, 0x1

    const/16 v22, 0x0

    :cond_d
    aput v31, v35, v9

    if-ne v8, v7, :cond_e

    int-to-double v0, v7

    move-wide/from16 v38, v0

    const-wide/high16 v40, 0x3ff8000000000000L    # 1.5

    mul-double v38, v38, v40

    move-wide/from16 v0, v38

    double-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    new-array v0, v0, [Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v24, v0

    move/from16 v0, v23

    new-array v0, v0, [Z

    move-object/from16 v21, v0

    move/from16 v0, v23

    new-array v0, v0, [[I

    move-object/from16 v25, v0

    const/16 v38, 0x0

    const/16 v39, 0x0

    move-object/from16 v0, v34

    move/from16 v1, v38

    move-object/from16 v2, v24

    move/from16 v3, v39

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v21

    move/from16 v3, v40

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v38, v0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v0, v38

    move/from16 v1, v39

    move-object/from16 v2, v25

    move/from16 v3, v40

    invoke-static {v0, v1, v2, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move/from16 v7, v23

    move-object/from16 v34, v24

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    move-object/from16 v0, v25

    move-object/from16 v1, p0

    iput-object v0, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    :cond_e
    add-int/lit8 v9, v9, 0x1

    move/from16 v29, v30

    goto/16 :goto_6

    :cond_f
    invoke-virtual/range {v22 .. v22}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->zeroBits()V

    goto/16 :goto_7

    :cond_10
    move-object/from16 v0, v28

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v38

    if-eqz v38, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-object/from16 v38, v0

    aget-object v38, v38, v20

    move-object/from16 v0, v22

    move-object/from16 v1, v38

    invoke-virtual {v0, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_11
    add-int/lit8 v29, v30, 0x1

    aget v20, v11, v30

    move/from16 v30, v29

    goto/16 :goto_8

    :cond_12
    invoke-virtual/range {v32 .. v32}, Ljava/lang/Integer;->intValue()I

    move-result v31

    goto/16 :goto_9

    :cond_13
    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    move-object/from16 v38, v0

    aget-object v36, v38, v14

    const/16 v18, 0x0

    :goto_a
    move-object/from16 v0, v36

    array-length v0, v0

    move/from16 v38, v0

    move/from16 v0, v18

    move/from16 v1, v38

    if-lt v0, v1, :cond_14

    :goto_b
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    :cond_14
    aget v38, v36, v18

    move/from16 v0, v38

    if-ne v14, v0, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    move-object/from16 v38, v0

    aget-object v39, v10, v18

    aput-object v39, v38, v14

    goto :goto_b

    :cond_15
    add-int/lit8 v18, v18, 0x1

    goto :goto_a
.end method

.method private calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 5

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/16 v4, 0x65

    if-ne v3, v4, :cond_1

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/16 v4, 0x66

    if-ne v3, v4, :cond_3

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    const/4 v1, 0x0

    :goto_1
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_4

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x6

    if-ne v3, v4, :cond_6

    :cond_4
    move-object v3, p1

    check-cast v3, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v2

    const/4 v1, 0x0

    :goto_2
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v1}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->getBit(I)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFollowList:[Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    aget-object v3, v3, v1

    invoke-virtual {v3, v0}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->union(Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;)V

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_6
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_0

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v3

    invoke-direct {p0, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->calcFollowList(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto/16 :goto_0
.end method

.method private dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V
    .locals 5

    const/4 v0, 0x0

    :goto_0
    if-lt v0, p2, :cond_0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :sswitch_0
    const/16 v2, 0x65

    if-ne v1, v2, :cond_2

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Choice Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    :goto_2
    return-void

    :cond_2
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Seq Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    goto :goto_1

    :sswitch_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Rep Node "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    add-int/lit8 v3, p2, 0x1

    invoke-direct {p0, v2, v3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->dumpTree(Lmf/org/apache/xerces/impl/dtd/models/CMNode;I)V

    goto :goto_2

    :sswitch_2
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v2, "Leaf: (pos="

    invoke-direct {v4, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "), "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "(elemIndex="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getLeaf()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->isNullable()Z

    move-result v2

    if-eqz v2, :cond_4

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " Nullable "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    :cond_4
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_3
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, "Any Node: "

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v3, "firstPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->firstPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v3, " lastPos="

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->print(Ljava/lang/String;)V

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->lastPos()Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;

    move-result-object v3

    invoke-virtual {v3}, Lmf/org/apache/xerces/impl/dtd/models/CMStateSet;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x2 -> :sswitch_3
        0x4 -> :sswitch_1
        0x5 -> :sswitch_1
        0x6 -> :sswitch_1
        0x65 -> :sswitch_0
        0x66 -> :sswitch_0
    .end sparse-switch
.end method

.method private makeDefStateList()[I
    .locals 3

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    new-array v1, v2, [I

    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v0, v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, -0x1

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v4, 0x1

    iget v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafCount:I

    invoke-virtual {p1, v2}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->setMaxStates(I)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    if-ne v2, v3, :cond_0

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object v0, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v3, v2, v1

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/16 v3, 0x65

    if-eq v2, v3, :cond_1

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/16 v3, 0x66

    if-ne v2, v3, :cond_2

    :cond_1
    move-object v2, p1

    check-cast v2, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {v2}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getLeft()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMBinOp;->getRight()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_4

    :cond_3
    check-cast p1, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;

    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/xs/models/XSCMUniOp;->getChild()Lmf/org/apache/xerces/impl/dtd/models/CMNode;

    move-result-object v2

    invoke-direct {p0, v2}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->postTreeBuildInit(Lmf/org/apache/xerces/impl/dtd/models/CMNode;)V

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lmf/org/apache/xerces/impl/dtd/models/CMNode;->type()I

    move-result v2

    if-ne v2, v4, :cond_5

    move-object v0, p1

    check-cast v0, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    invoke-virtual {v0}, Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;->getPosition()I

    move-result v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafList:[Lmf/org/apache/xerces/impl/xs/models/XSCMLeaf;

    aput-object v0, v2, v1

    iget-object v2, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fLeafListType:[I

    aput v4, v2, v1

    goto :goto_0

    :cond_5
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "ImplementationMessages.VAL_NIICM"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public checkUniqueParticleAttribution(Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lmf/org/apache/xerces/impl/xs/XMLSchemaException;
        }
    .end annotation

    const/4 v11, 0x2

    const/4 v8, 0x0

    const/4 v10, -0x1

    const/4 v7, 0x1

    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    iget v9, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    filled-new-array {v6, v9}, [I

    move-result-object v6

    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v9, v6}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    const/4 v1, 0x0

    :goto_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    array-length v6, v6

    if-ge v1, v6, :cond_0

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v1

    if-nez v6, :cond_2

    :cond_0
    const/4 v1, 0x0

    :goto_1
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v1, v6, :cond_a

    const/4 v1, 0x0

    :goto_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v1, v6, :cond_d

    move v7, v8

    :cond_1
    return v7

    :cond_2
    const/4 v2, 0x0

    :goto_3
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v2, v6, :cond_3

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v2, 0x1

    :goto_4
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v3, v6, :cond_4

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_4
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v1

    aget v6, v6, v2

    if-eq v6, v10, :cond_5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v1

    aget v6, v6, v3

    if-eq v6, v10, :cond_5

    aget-object v6, v0, v2

    aget-byte v6, v6, v3

    if-nez v6, :cond_5

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v6, v6, v2

    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v9, v9, v3

    invoke-static {v6, v9, p1}, Lmf/org/apache/xerces/impl/xs/XSConstraints;->overlapUPA(Ljava/lang/Object;Ljava/lang/Object;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v6, :cond_8

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v6, v1

    if-eqz v4, :cond_8

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v1

    aget v6, v6, v2

    if-ne v6, v1, :cond_6

    move v6, v7

    :goto_5
    iget-object v9, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v9, v9, v1

    aget v9, v9, v3

    if-ne v9, v1, :cond_7

    move v9, v7

    :goto_6
    xor-int/2addr v6, v9

    if-eqz v6, :cond_8

    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    iget v9, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-ne v6, v9, :cond_8

    aget-object v6, v0, v2

    aput-byte v10, v6, v3

    :cond_5
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move v6, v8

    goto :goto_5

    :cond_7
    move v9, v8

    goto :goto_6

    :cond_8
    aget-object v6, v0, v2

    aput-byte v7, v6, v3

    goto :goto_7

    :cond_9
    aget-object v6, v0, v2

    aput-byte v10, v6, v3

    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    :goto_8
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v2, v6, :cond_b

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    :cond_b
    aget-object v6, v0, v1

    aget-byte v6, v6, v2

    if-ne v6, v7, :cond_c

    new-instance v6, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;

    const-string v9, "cos-nonambig"

    new-array v10, v11, [Ljava/lang/Object;

    iget-object v11, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v11, v11, v1

    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v10, v8

    iget-object v8, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v8, v8, v2

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v7

    invoke-direct {v6, v9, v10}, Lmf/org/apache/xerces/impl/xs/XMLSchemaException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    throw v6

    :cond_c
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :cond_d
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v6, v6, v1

    if-ne v6, v11, :cond_e

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v6, v1

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-short v6, v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    const/4 v9, 0x3

    if-eq v6, v9, :cond_1

    iget-short v6, v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->fType:S

    if-eq v6, v11, :cond_1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_2
.end method

.method public endContentModel([I)Z
    .locals 5

    const/4 v2, 0x0

    aget v0, p1, v2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean v3, v3, v0

    if-eqz v3, :cond_0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v3, v0

    if-eqz v1, :cond_1

    const/4 v3, 0x2

    aget v3, p1, v3

    iget v4, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-ge v3, v4, :cond_1

    :cond_0
    :goto_0
    return v2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 5

    const/4 v1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v0, v3, :cond_1

    const/4 v1, 0x0

    :cond_0
    :goto_1
    return-object v1

    :cond_1
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v2, v3, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p2, p1, v3}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    if-nez v1, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v3, v3, v0

    check-cast v3, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v4, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v3, v0

    goto :goto_1
.end method

.method findMatchingDecl(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;
    .locals 11

    const/4 v10, 0x2

    const/4 v9, -0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    aget v0, p2, v7

    const/4 v2, 0x0

    const/4 v1, 0x0

    :cond_0
    add-int/lit8 p4, p4, 0x1

    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt p4, v5, :cond_2

    :goto_0
    iget v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ne p4, v5, :cond_4

    aget v5, p2, v7

    aput v5, p2, v6

    aput v9, p2, v7

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v1

    :cond_1
    :goto_1
    return-object v1

    :cond_2
    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v5, v5, v0

    aget v2, v5, p4

    if-eq v2, v9, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v4, v5, p4

    if-ne v4, v6, :cond_3

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v5, p4

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v5}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_3
    if-ne v4, v10, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v5, v5, p4

    check-cast v5, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v8, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v5, v8}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v1, v5, p4

    goto :goto_0

    :cond_4
    aput v2, p2, v7

    iget-object v5, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v3, v5, v2

    if-eqz v3, :cond_1

    iget v5, v3, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-ne p4, v5, :cond_5

    move v5, v6

    :goto_2
    aput v5, p2, v10

    goto :goto_1

    :cond_5
    move v5, v7

    goto :goto_2
.end method

.method public getTermName(I)Ljava/lang/String;
    .locals 2

    iget-object v1, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v0, v1, p1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isCompactedForUPA()Z
    .locals 1

    iget-boolean v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fIsCompactedForUPA:Z

    return v0
.end method

.method public isFinalState(I)Z
    .locals 1

    if-gez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fFinalStateFlags:[Z

    aget-boolean v0, v0, p1

    goto :goto_0
.end method

.method public occurenceInfo([I)[I
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v3, :cond_1

    aget v0, p1, v4

    if-gez v0, :cond_0

    aget v0, p1, v5

    :cond_0
    iget-object v3, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v1, v3, v0

    if-eqz v1, :cond_1

    const/4 v3, 0x4

    new-array v2, v3, [I

    iget v3, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    aput v3, v2, v4

    iget v3, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    aput v3, v2, v5

    aget v3, p1, v6

    aput v3, v2, v6

    const/4 v3, 0x3

    iget v4, v1, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    aput v4, v2, v3

    :goto_0
    return-object v2

    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public oneTransition(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;
    .locals 12

    const/4 v6, -0x2

    const/4 v11, 0x2

    const/4 v7, 0x1

    const/4 v10, -0x1

    const/4 v8, 0x0

    aget v0, p2, v8

    if-eq v0, v10, :cond_0

    if-ne v0, v6, :cond_2

    :cond_0
    if-ne v0, v10, :cond_1

    aput v6, p2, v8

    :cond_1
    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v2

    :goto_0
    return-object v2

    :cond_2
    const/4 v3, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_1
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v1, v6, :cond_3

    :goto_2
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-ne v1, v6, :cond_7

    aget v6, p2, v8

    aput v6, p2, v7

    aput v10, p2, v8

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_3
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v0

    aget v3, v6, v1

    if-ne v3, v10, :cond_5

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapType:[I

    aget v5, v6, v1

    if-ne v5, v7, :cond_6

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v6, v6, v1

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    invoke-virtual {p3, p1, v6}, Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;->getMatchingElemDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/XSElementDecl;)Lmf/org/apache/xerces/impl/xs/XSElementDecl;

    move-result-object v2

    if-eqz v2, :cond_4

    goto :goto_2

    :cond_6
    if-ne v5, v11, :cond_4

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v6, v6, v1

    check-cast v6, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;

    iget-object v9, p1, Lmf/org/apache/xerces/xni/QName;->uri:Ljava/lang/String;

    invoke-virtual {v6, v9}, Lmf/org/apache/xerces/impl/xs/XSWildcardDecl;->allowNamespace(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v2, v6, v1

    goto :goto_2

    :cond_7
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v6, :cond_a

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v6, v0

    if-eqz v4, :cond_c

    if-ne v0, v3, :cond_8

    aget v6, p2, v11

    add-int/lit8 v6, v6, 0x1

    aput v6, p2, v11

    iget v7, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-le v6, v7, :cond_a

    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-eq v6, v10, :cond_a

    invoke-virtual {p0, p1, p2, p3, v1}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;[ILmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;I)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_8
    aget v6, p2, v11

    iget v9, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-ge v6, v9, :cond_9

    aget v6, p2, v8

    aput v6, p2, v7

    aput v10, p2, v8

    invoke-virtual {p0, p1, p3}, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->findMatchingDecl(Lmf/org/apache/xerces/xni/QName;Lmf/org/apache/xerces/impl/xs/SubstitutionGroupHandler;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0

    :cond_9
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v6, v3

    if-eqz v4, :cond_a

    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-ne v1, v6, :cond_b

    move v6, v7

    :goto_3
    aput v6, p2, v11

    :cond_a
    :goto_4
    aput v3, p2, v8

    goto/16 :goto_0

    :cond_b
    move v6, v8

    goto :goto_3

    :cond_c
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v6, v3

    if-eqz v4, :cond_a

    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->elemIndex:I

    if-ne v1, v6, :cond_d

    :goto_5
    aput v7, p2, v11

    goto :goto_4

    :cond_d
    move v7, v8

    goto :goto_5
.end method

.method public startContentModel()[I
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    return-object v0
.end method

.method public whatCanGoHere([I)Ljava/util/Vector;
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    aget v1, p1, v6

    if-gez v1, :cond_0

    const/4 v6, 0x1

    aget v1, p1, v6

    :cond_0
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fCountingStates:[Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;

    aget-object v4, v6, v1

    :goto_0
    const/4 v6, 0x2

    aget v0, p1, v6

    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    const/4 v2, 0x0

    :goto_1
    iget v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMapSize:I

    if-lt v2, v6, :cond_2

    return-object v5

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fTransTable:[[I

    aget-object v6, v6, v1

    aget v3, v6, v2

    if-eq v3, v7, :cond_3

    if-eqz v4, :cond_5

    if-ne v1, v3, :cond_4

    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-lt v0, v6, :cond_5

    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->maxOccurs:I

    if-eq v6, v7, :cond_5

    :cond_3
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iget v6, v4, Lmf/org/apache/xerces/impl/xs/models/XSDFACM$Occurence;->minOccurs:I

    if-lt v0, v6, :cond_3

    :cond_5
    iget-object v6, p0, Lmf/org/apache/xerces/impl/xs/models/XSDFACM;->fElemMap:[Ljava/lang/Object;

    aget-object v6, v6, v2

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method
