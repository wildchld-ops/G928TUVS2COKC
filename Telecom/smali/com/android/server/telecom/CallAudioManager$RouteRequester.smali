.class public final enum Lcom/android/server/telecom/CallAudioManager$RouteRequester;
.super Ljava/lang/Enum;
.source "CallAudioManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/CallAudioManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RouteRequester"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/telecom/CallAudioManager$RouteRequester;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/telecom/CallAudioManager$RouteRequester;

.field public static final enum EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

.field public static final enum INTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    const-string v1, "INTERNAL"

    invoke-direct {v0, v1, v2}, Lcom/android/server/telecom/CallAudioManager$RouteRequester;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->INTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    new-instance v0, Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    const-string v1, "EXTERNAL"

    invoke-direct {v0, v1, v3}, Lcom/android/server/telecom/CallAudioManager$RouteRequester;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    sget-object v1, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->INTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->EXTERNAL:Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->$VALUES:[Lcom/android/server/telecom/CallAudioManager$RouteRequester;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/telecom/CallAudioManager$RouteRequester;
    .locals 1

    const-class v0, Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    return-object v0
.end method

.method public static values()[Lcom/android/server/telecom/CallAudioManager$RouteRequester;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/CallAudioManager$RouteRequester;->$VALUES:[Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    invoke-virtual {v0}, [Lcom/android/server/telecom/CallAudioManager$RouteRequester;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/telecom/CallAudioManager$RouteRequester;

    return-object v0
.end method
