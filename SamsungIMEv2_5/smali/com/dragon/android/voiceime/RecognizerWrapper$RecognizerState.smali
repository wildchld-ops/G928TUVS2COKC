.class public final enum Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;
.super Ljava/lang/Enum;
.source "RecognizerWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dragon/android/voiceime/RecognizerWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RecognizerState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

.field public static final enum IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

.field public static final enum LISTENING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

.field public static final enum PREPARING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

.field public static final enum RECOGNIZING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    const-string v1, "PREPARING"

    invoke-direct {v0, v1, v2}, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->PREPARING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    new-instance v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    new-instance v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    const-string v1, "LISTENING"

    invoke-direct {v0, v1, v4}, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->LISTENING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    new-instance v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    const-string v1, "RECOGNIZING"

    invoke-direct {v0, v1, v5}, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->RECOGNIZING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    sget-object v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->PREPARING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->IDLE:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->LISTENING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->RECOGNIZING:Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    aput-object v1, v0, v5

    sput-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->$VALUES:[Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;
    .locals 1

    const-class v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    return-object v0
.end method

.method public static values()[Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;
    .locals 1

    sget-object v0, Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->$VALUES:[Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    invoke-virtual {v0}, [Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/dragon/android/voiceime/RecognizerWrapper$RecognizerState;

    return-object v0
.end method
