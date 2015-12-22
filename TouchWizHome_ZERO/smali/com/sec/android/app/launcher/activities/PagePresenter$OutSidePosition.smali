.class final enum Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;
.super Ljava/lang/Enum;
.source "PagePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/PagePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "OutSidePosition"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

.field public static final enum BOTTOM_LEFT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

.field public static final enum BOTTOM_RIGHT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

.field public static final enum TOP_LEFT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

.field public static final enum TOP_RIGHT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    const-string v1, "BOTTOM_RIGHT"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->BOTTOM_RIGHT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    new-instance v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    const-string v1, "BOTTOM_LEFT"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->BOTTOM_LEFT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    new-instance v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    const-string v1, "TOP_RIGHT"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->TOP_RIGHT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    new-instance v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    const-string v1, "TOP_LEFT"

    invoke-direct {v0, v1, v5}, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->TOP_LEFT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->BOTTOM_RIGHT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->BOTTOM_LEFT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->TOP_RIGHT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->TOP_LEFT:Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->$VALUES:[Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->$VALUES:[Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/PagePresenter$OutSidePosition;

    return-object v0
.end method
