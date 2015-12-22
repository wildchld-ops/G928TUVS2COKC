.class public final enum Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;
.super Ljava/lang/Enum;
.source "PageLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/layouts/PageLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScrollEffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_CARDSLIDE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_CARDSTACK:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_CARDSTACK2:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_CAROUSEL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_CASCADE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_CONVEYOR:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_CUBE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_DELAY:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_DEPTH:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_FADE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_FOLD:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_INNERCUBE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_NORMAL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_NORMAL_NOWRAP:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_SHADOW:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_SLIDE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field public static final enum SCROLLEFFECT_ZOOMOUT:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

.field private static gValues:[Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_CASCADE"

    invoke-direct {v0, v1, v3}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CASCADE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_CUBE"

    invoke-direct {v0, v1, v4}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CUBE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_DEPTH"

    invoke-direct {v0, v1, v5}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_DEPTH:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_SLIDE"

    invoke-direct {v0, v1, v6}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_SLIDE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_INNERCUBE"

    invoke-direct {v0, v1, v7}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_INNERCUBE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_CAROUSEL"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CAROUSEL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_CARDSLIDE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CARDSLIDE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_ZOOMOUT"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_ZOOMOUT:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_DELAY"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_DELAY:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_NORMAL"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_NORMAL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_NORMAL_NOWRAP"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_NORMAL_NOWRAP:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_CARDSTACK"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CARDSTACK:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_CONVEYOR"

    const/16 v2, 0xc

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CONVEYOR:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_FOLD"

    const/16 v2, 0xd

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_FOLD:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_FADE"

    const/16 v2, 0xe

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_FADE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_SHADOW"

    const/16 v2, 0xf

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_SHADOW:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    new-instance v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const-string v1, "SCROLLEFFECT_CARDSTACK2"

    const/16 v2, 0x10

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CARDSTACK2:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CASCADE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CUBE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_DEPTH:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_SLIDE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v1, v0, v6

    sget-object v1, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_INNERCUBE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CAROUSEL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CARDSLIDE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_ZOOMOUT:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_DELAY:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_NORMAL:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_NORMAL_NOWRAP:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CARDSTACK:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CONVEYOR:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xd

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_FOLD:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xe

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_FADE:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0xf

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_SHADOW:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    const/16 v1, 0x10

    sget-object v2, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->SCROLLEFFECT_CARDSTACK2:Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aput-object v2, v0, v1

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->$VALUES:[Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-static {}, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->values()[Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->gValues:[Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

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

.method public static fromInt(I)Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->gValues:[Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;
    .locals 1

    const-class v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    return-object v0
.end method

.method public static values()[Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->$VALUES:[Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    invoke-virtual {v0}, [Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/daliviews/layouts/PageLayout$ScrollEffectType;

    return-object v0
.end method
