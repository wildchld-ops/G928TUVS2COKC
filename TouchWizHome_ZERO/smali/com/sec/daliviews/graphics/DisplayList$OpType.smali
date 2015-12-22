.class public final enum Lcom/sec/daliviews/graphics/DisplayList$OpType;
.super Ljava/lang/Enum;
.source "DisplayList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/graphics/DisplayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OpType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/daliviews/graphics/DisplayList$OpType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawArc:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawBitmap:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawCircle:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawColor:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawLine:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawOval:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawPath:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawPoint:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawRect:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawRoundRect:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawShape:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawText:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kDrawUnknownBitmap:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kNone:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kRestore:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kSave:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kSetClip:Lcom/sec/daliviews/graphics/DisplayList$OpType;

.field public static final enum kSetViewport:Lcom/sec/daliviews/graphics/DisplayList$OpType;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kNone"

    invoke-direct {v0, v1, v4, v4}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kNone:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawBitmap"

    invoke-direct {v0, v1, v5, v5}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawBitmap:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawText"

    invoke-direct {v0, v1, v6, v6}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawText:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawRect"

    invoke-direct {v0, v1, v7, v7}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawRect:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawShape"

    invoke-direct {v0, v1, v8, v8}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawShape:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kSetViewport"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSetViewport:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kSetClip"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSetClip:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawColor"

    const/4 v2, 0x7

    const/4 v3, 0x7

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawColor:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawUnknownBitmap"

    const/16 v2, 0x8

    const/16 v3, 0x8

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawUnknownBitmap:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kSave"

    const/16 v2, 0x9

    const/16 v3, 0x9

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSave:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kRestore"

    const/16 v2, 0xa

    const/16 v3, 0xa

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kRestore:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawLine"

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawLine:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawOval"

    const/16 v2, 0xc

    const/16 v3, 0xc

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawOval:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawCircle"

    const/16 v2, 0xd

    const/16 v3, 0xd

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawCircle:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawArc"

    const/16 v2, 0xe

    const/16 v3, 0xe

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawArc:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawRoundRect"

    const/16 v2, 0xf

    const/16 v3, 0xf

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawRoundRect:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawPoint"

    const/16 v2, 0x10

    const/16 v3, 0x10

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawPoint:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    new-instance v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const-string v1, "kDrawPath"

    const/16 v2, 0x11

    const/16 v3, 0x11

    invoke-direct {v0, v1, v2, v3}, Lcom/sec/daliviews/graphics/DisplayList$OpType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawPath:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    const/16 v0, 0x12

    new-array v0, v0, [Lcom/sec/daliviews/graphics/DisplayList$OpType;

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kNone:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawBitmap:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawText:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawRect:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v1, v0, v7

    sget-object v1, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawShape:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSetViewport:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSetClip:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawColor:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawUnknownBitmap:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kSave:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kRestore:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawLine:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawOval:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawCircle:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawArc:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawRoundRect:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawPoint:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    const/16 v1, 0x11

    sget-object v2, Lcom/sec/daliviews/graphics/DisplayList$OpType;->kDrawPath:Lcom/sec/daliviews/graphics/DisplayList$OpType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->$VALUES:[Lcom/sec/daliviews/graphics/DisplayList$OpType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/daliviews/graphics/DisplayList$OpType;
    .locals 1

    const-class v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;

    return-object v0
.end method

.method public static values()[Lcom/sec/daliviews/graphics/DisplayList$OpType;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->$VALUES:[Lcom/sec/daliviews/graphics/DisplayList$OpType;

    invoke-virtual {v0}, [Lcom/sec/daliviews/graphics/DisplayList$OpType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/daliviews/graphics/DisplayList$OpType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/sec/daliviews/graphics/DisplayList$OpType;->value:I

    return v0
.end method
