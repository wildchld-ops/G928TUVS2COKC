.class public final enum Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;
.super Ljava/lang/Enum;
.source "AbstractCandidateExpandLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

.field public static final enum doubleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

.field public static final enum singleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

.field public static final enum wholeLineType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

.field public static final enum wrongData:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    const-string v1, "singleCellType"

    invoke-direct {v0, v1, v2}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->singleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    const-string v1, "doubleCellType"

    invoke-direct {v0, v1, v3}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->doubleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    const-string v1, "wholeLineType"

    invoke-direct {v0, v1, v4}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->wholeLineType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    new-instance v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    const-string v1, "wrongData"

    invoke-direct {v0, v1, v5}, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->wrongData:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    sget-object v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->singleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->doubleCellType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->wholeLineType:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->wrongData:Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->$VALUES:[Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;
    .locals 1

    const-class v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    return-object v0
.end method

.method public static values()[Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;
    .locals 1

    sget-object v0, Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->$VALUES:[Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    invoke-virtual {v0}, [Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/ime/framework/view/candidate/AbstractCandidateExpandLayout$ItemType;

    return-object v0
.end method
