.class public final enum Lcom/sec/daliviews/animation/NativeAnimation$Type;
.super Ljava/lang/Enum;
.source "NativeAnimation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/animation/NativeAnimation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/daliviews/animation/NativeAnimation$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/daliviews/animation/NativeAnimation$Type;

.field public static final enum ALPHA:Lcom/sec/daliviews/animation/NativeAnimation$Type;

.field public static final enum COLOR:Lcom/sec/daliviews/animation/NativeAnimation$Type;

.field public static final enum IMAGE_SET:Lcom/sec/daliviews/animation/NativeAnimation$Type;

.field public static final enum PATH:Lcom/sec/daliviews/animation/NativeAnimation$Type;

.field public static final enum ROTATE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

.field public static final enum SCALE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

.field public static final enum SET:Lcom/sec/daliviews/animation/NativeAnimation$Type;

.field public static final enum TRANSLATE:Lcom/sec/daliviews/animation/NativeAnimation$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;

    const-string v1, "TRANSLATE"

    invoke-direct {v0, v1, v3}, Lcom/sec/daliviews/animation/NativeAnimation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->TRANSLATE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    new-instance v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;

    const-string v1, "SCALE"

    invoke-direct {v0, v1, v4}, Lcom/sec/daliviews/animation/NativeAnimation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->SCALE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    new-instance v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;

    const-string v1, "ROTATE"

    invoke-direct {v0, v1, v5}, Lcom/sec/daliviews/animation/NativeAnimation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->ROTATE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    new-instance v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;

    const-string v1, "ALPHA"

    invoke-direct {v0, v1, v6}, Lcom/sec/daliviews/animation/NativeAnimation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->ALPHA:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    new-instance v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;

    const-string v1, "COLOR"

    invoke-direct {v0, v1, v7}, Lcom/sec/daliviews/animation/NativeAnimation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->COLOR:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    new-instance v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;

    const-string v1, "SET"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->SET:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    new-instance v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;

    const-string v1, "IMAGE_SET"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->IMAGE_SET:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    new-instance v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;

    const-string v1, "PATH"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/animation/NativeAnimation$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->PATH:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/sec/daliviews/animation/NativeAnimation$Type;

    sget-object v1, Lcom/sec/daliviews/animation/NativeAnimation$Type;->TRANSLATE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/daliviews/animation/NativeAnimation$Type;->SCALE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/daliviews/animation/NativeAnimation$Type;->ROTATE:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/daliviews/animation/NativeAnimation$Type;->ALPHA:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/daliviews/animation/NativeAnimation$Type;->COLOR:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/daliviews/animation/NativeAnimation$Type;->SET:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/daliviews/animation/NativeAnimation$Type;->IMAGE_SET:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/daliviews/animation/NativeAnimation$Type;->PATH:Lcom/sec/daliviews/animation/NativeAnimation$Type;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->$VALUES:[Lcom/sec/daliviews/animation/NativeAnimation$Type;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/daliviews/animation/NativeAnimation$Type;
    .locals 1

    const-class v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;

    return-object v0
.end method

.method public static values()[Lcom/sec/daliviews/animation/NativeAnimation$Type;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/animation/NativeAnimation$Type;->$VALUES:[Lcom/sec/daliviews/animation/NativeAnimation$Type;

    invoke-virtual {v0}, [Lcom/sec/daliviews/animation/NativeAnimation$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/daliviews/animation/NativeAnimation$Type;

    return-object v0
.end method
