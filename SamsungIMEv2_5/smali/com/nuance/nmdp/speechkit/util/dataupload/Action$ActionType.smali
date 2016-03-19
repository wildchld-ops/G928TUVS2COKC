.class public final enum Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nuance/nmdp/speechkit/util/dataupload/Action;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

.field public static final enum CLEARALL:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

.field public static final enum REMOVE:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

.field private static final synthetic a:[Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    const-string v1, "ADD"

    invoke-direct {v0, v1, v2}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    new-instance v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    const-string v1, "REMOVE"

    invoke-direct {v0, v1, v3}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->REMOVE:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    new-instance v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    const-string v1, "CLEARALL"

    invoke-direct {v0, v1, v4}, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->CLEARALL:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->ADD:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->REMOVE:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->CLEARALL:Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->a:[Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;
    .locals 1

    const-class v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    return-object v0
.end method

.method public static values()[Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;
    .locals 1

    sget-object v0, Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->a:[Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    invoke-virtual {v0}, [Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/nuance/nmdp/speechkit/util/dataupload/Action$ActionType;

    return-object v0
.end method
