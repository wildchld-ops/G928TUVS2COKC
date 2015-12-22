.class public final enum Lcom/android/server/telecom/CallsManager$CalledListener;
.super Ljava/lang/Enum;
.source "CallsManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CallsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CalledListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/telecom/CallsManager$CalledListener;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/telecom/CallsManager$CalledListener;

.field public static final enum CALLAUDIO:Lcom/android/server/telecom/CallsManager$CalledListener;

.field public static final enum NONE:Lcom/android/server/telecom/CallsManager$CalledListener;

.field public static final enum PHONESTATE:Lcom/android/server/telecom/CallsManager$CalledListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/telecom/CallsManager$CalledListener;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/CallsManager$CalledListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/CallsManager$CalledListener;->NONE:Lcom/android/server/telecom/CallsManager$CalledListener;

    new-instance v0, Lcom/android/server/telecom/CallsManager$CalledListener;

    const-string v1, "PHONESTATE"

    invoke-direct {v0, v1, v3}, Lcom/android/server/telecom/CallsManager$CalledListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/CallsManager$CalledListener;->PHONESTATE:Lcom/android/server/telecom/CallsManager$CalledListener;

    new-instance v0, Lcom/android/server/telecom/CallsManager$CalledListener;

    const-string v1, "CALLAUDIO"

    invoke-direct {v0, v1, v4}, Lcom/android/server/telecom/CallsManager$CalledListener;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/CallsManager$CalledListener;->CALLAUDIO:Lcom/android/server/telecom/CallsManager$CalledListener;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/telecom/CallsManager$CalledListener;

    sget-object v1, Lcom/android/server/telecom/CallsManager$CalledListener;->NONE:Lcom/android/server/telecom/CallsManager$CalledListener;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/telecom/CallsManager$CalledListener;->PHONESTATE:Lcom/android/server/telecom/CallsManager$CalledListener;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/telecom/CallsManager$CalledListener;->CALLAUDIO:Lcom/android/server/telecom/CallsManager$CalledListener;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/telecom/CallsManager$CalledListener;->$VALUES:[Lcom/android/server/telecom/CallsManager$CalledListener;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/telecom/CallsManager$CalledListener;
    .locals 1

    const-class v0, Lcom/android/server/telecom/CallsManager$CalledListener;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallsManager$CalledListener;

    return-object v0
.end method

.method public static values()[Lcom/android/server/telecom/CallsManager$CalledListener;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/CallsManager$CalledListener;->$VALUES:[Lcom/android/server/telecom/CallsManager$CalledListener;

    invoke-virtual {v0}, [Lcom/android/server/telecom/CallsManager$CalledListener;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/telecom/CallsManager$CalledListener;

    return-object v0
.end method
