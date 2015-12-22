.class public final enum Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;
.super Ljava/lang/Enum;
.source "PopupMenuBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/launcher/activities/PopupMenuBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AnimationType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

.field public static final enum FADE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

.field public static final enum NONE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

.field public static final enum SLIDE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->NONE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    new-instance v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    const-string v1, "SLIDE"

    invoke-direct {v0, v1, v3}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->SLIDE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    new-instance v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    const-string v1, "FADE"

    invoke-direct {v0, v1, v4}, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->FADE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->NONE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->SLIDE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->FADE:Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->$VALUES:[Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;
    .locals 1

    const-class v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    return-object v0
.end method

.method public static values()[Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;
    .locals 1

    sget-object v0, Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->$VALUES:[Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    invoke-virtual {v0}, [Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sec/android/app/launcher/activities/PopupMenuBase$AnimationType;

    return-object v0
.end method
