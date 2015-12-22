.class public final enum Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;
.super Ljava/lang/Enum;
.source "SurfaceWidgetItem.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/data/SurfaceWidgetItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SurfaceWidgetState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

.field public static final enum DESTROYED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

.field public static final enum PAUSED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

.field public static final enum RESUMED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

.field public static final enum RUNNING:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    const-string v1, "RUNNING"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    new-instance v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    const-string v1, "RESUMED"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->RESUMED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    new-instance v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    const-string v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->PAUSED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    new-instance v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    const-string v1, "DESTROYED"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    sget-object v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->RUNNING:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->RESUMED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->PAUSED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->DESTROYED:Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->$VALUES:[Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->$VALUES:[Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/data/SurfaceWidgetItem$SurfaceWidgetState;

    return-object v0
.end method
