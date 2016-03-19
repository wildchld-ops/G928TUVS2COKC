.class public final enum Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;
.super Ljava/lang/Enum;
.source "Stroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myscript/atk/inw/stroker/Stroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "StrokerType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

.field public static final enum StrokerTypeEraser:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

.field public static final enum StrokerTypeMarker:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

.field public static final enum StrokerTypePressure:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

.field public static final enum StrokerTypeSimple:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

.field public static final enum StrokerTypeStraight:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    const-string v1, "StrokerTypeSimple"

    invoke-direct {v0, v1, v2}, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeSimple:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    new-instance v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    const-string v1, "StrokerTypePressure"

    invoke-direct {v0, v1, v3}, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypePressure:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    new-instance v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    const-string v1, "StrokerTypeMarker"

    invoke-direct {v0, v1, v4}, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeMarker:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    new-instance v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    const-string v1, "StrokerTypeEraser"

    invoke-direct {v0, v1, v5}, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeEraser:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    new-instance v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    const-string v1, "StrokerTypeStraight"

    invoke-direct {v0, v1, v6}, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeStraight:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    sget-object v1, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeSimple:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypePressure:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeMarker:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeEraser:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->StrokerTypeStraight:Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->$VALUES:[Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;
    .locals 1

    const-class v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    return-object v0
.end method

.method public static values()[Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;
    .locals 1

    sget-object v0, Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->$VALUES:[Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    invoke-virtual {v0}, [Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/myscript/atk/inw/stroker/Stroker$StrokerType;

    return-object v0
.end method
