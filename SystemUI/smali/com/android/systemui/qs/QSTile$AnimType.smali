.class public final enum Lcom/android/systemui/qs/QSTile$AnimType;
.super Ljava/lang/Enum;
.source "QSTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/systemui/qs/QSTile$AnimType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/systemui/qs/QSTile$AnimType;

.field public static final enum ALWAYS_ON:Lcom/android/systemui/qs/QSTile$AnimType;

.field public static final enum DIM:Lcom/android/systemui/qs/QSTile$AnimType;

.field public static final enum NORMAL:Lcom/android/systemui/qs/QSTile$AnimType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimType;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/android/systemui/qs/QSTile$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/QSTile$AnimType;->NORMAL:Lcom/android/systemui/qs/QSTile$AnimType;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimType;

    const-string v1, "DIM"

    invoke-direct {v0, v1, v3}, Lcom/android/systemui/qs/QSTile$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/QSTile$AnimType;->DIM:Lcom/android/systemui/qs/QSTile$AnimType;

    new-instance v0, Lcom/android/systemui/qs/QSTile$AnimType;

    const-string v1, "ALWAYS_ON"

    invoke-direct {v0, v1, v4}, Lcom/android/systemui/qs/QSTile$AnimType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/qs/QSTile$AnimType;->ALWAYS_ON:Lcom/android/systemui/qs/QSTile$AnimType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/systemui/qs/QSTile$AnimType;

    sget-object v1, Lcom/android/systemui/qs/QSTile$AnimType;->NORMAL:Lcom/android/systemui/qs/QSTile$AnimType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/systemui/qs/QSTile$AnimType;->DIM:Lcom/android/systemui/qs/QSTile$AnimType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/systemui/qs/QSTile$AnimType;->ALWAYS_ON:Lcom/android/systemui/qs/QSTile$AnimType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/systemui/qs/QSTile$AnimType;->$VALUES:[Lcom/android/systemui/qs/QSTile$AnimType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/systemui/qs/QSTile$AnimType;
    .locals 1

    const-class v0, Lcom/android/systemui/qs/QSTile$AnimType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTile$AnimType;

    return-object v0
.end method

.method public static values()[Lcom/android/systemui/qs/QSTile$AnimType;
    .locals 1

    sget-object v0, Lcom/android/systemui/qs/QSTile$AnimType;->$VALUES:[Lcom/android/systemui/qs/QSTile$AnimType;

    invoke-virtual {v0}, [Lcom/android/systemui/qs/QSTile$AnimType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/systemui/qs/QSTile$AnimType;

    return-object v0
.end method
