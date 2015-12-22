.class public final enum Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;
.super Ljava/lang/Enum;
.source "LayoutBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/layouts/LayoutBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LayoutType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

.field public static final enum CARD_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

.field public static final enum FIXED_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

.field public static final enum FRAME_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

.field public static final enum GRID_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

.field public static final enum LAYOUT_UNKNOWN:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

.field public static final enum LINEAR_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

.field public static final enum MAGAZINE_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

.field public static final enum PAGE_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

.field public static final enum SIMPLE_GRID_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

.field private static gValues:[Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    const-string v1, "GRID_LAYOUT"

    invoke-direct {v0, v1, v3}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->GRID_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    new-instance v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    const-string v1, "SIMPLE_GRID_LAYOUT"

    invoke-direct {v0, v1, v4}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->SIMPLE_GRID_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    new-instance v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    const-string v1, "LINEAR_LAYOUT"

    invoke-direct {v0, v1, v5}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->LINEAR_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    new-instance v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    const-string v1, "FRAME_LAYOUT"

    invoke-direct {v0, v1, v6}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->FRAME_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    new-instance v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    const-string v1, "PAGE_LAYOUT"

    invoke-direct {v0, v1, v7}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->PAGE_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    new-instance v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    const-string v1, "MAGAZINE_LAYOUT"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->MAGAZINE_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    new-instance v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    const-string v1, "FIXED_LAYOUT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->FIXED_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    new-instance v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    const-string v1, "CARD_LAYOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->CARD_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    new-instance v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    const-string v1, "LAYOUT_UNKNOWN"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->LAYOUT_UNKNOWN:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    sget-object v1, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->GRID_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->SIMPLE_GRID_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->LINEAR_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->FRAME_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->PAGE_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->MAGAZINE_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->FIXED_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->CARD_LAYOUT:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->LAYOUT_UNKNOWN:Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->$VALUES:[Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    invoke-static {}, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->values()[Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->gValues:[Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

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

.method public static fromInt(I)Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->gValues:[Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;
    .locals 1

    const-class v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    return-object v0
.end method

.method public static values()[Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->$VALUES:[Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    invoke-virtual {v0}, [Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/daliviews/layouts/LayoutBase$LayoutType;

    return-object v0
.end method
