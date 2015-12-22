.class public final enum Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;
.super Ljava/lang/Enum;
.source "DragAndDrop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/daliviews/dragAndDrop/DragAndDrop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "DnDEffectType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

.field public static final enum DNDEFFECT_LIGHTANDRIPPLE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

.field public static final enum DNDEFFECT_MOTIONBLUR:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

.field public static final enum DNDEFFECT_NONE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

.field public static final enum DNDEFFECT_PARTICLE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

.field private static gValues:[Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    const-string v1, "DNDEFFECT_NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_NONE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    new-instance v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    const-string v1, "DNDEFFECT_LIGHTANDRIPPLE"

    invoke-direct {v0, v1, v3}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_LIGHTANDRIPPLE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    new-instance v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    const-string v1, "DNDEFFECT_MOTIONBLUR"

    invoke-direct {v0, v1, v4}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_MOTIONBLUR:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    new-instance v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    const-string v1, "DNDEFFECT_PARTICLE"

    invoke-direct {v0, v1, v5}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_PARTICLE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_NONE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_LIGHTANDRIPPLE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_MOTIONBLUR:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->DNDEFFECT_PARTICLE:Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->$VALUES:[Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    invoke-static {}, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->values()[Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    move-result-object v0

    sput-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->gValues:[Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

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

.method public static fromInt(I)Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->gValues:[Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    aget-object v0, v0, p0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;
    .locals 1

    const-class v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    return-object v0
.end method

.method public static values()[Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;
    .locals 1

    sget-object v0, Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->$VALUES:[Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    invoke-virtual {v0}, [Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/daliviews/dragAndDrop/DragAndDrop$DnDEffectType;

    return-object v0
.end method
