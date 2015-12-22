.class public final enum Lcom/android/incallui/SecEventAnswerTriggered$STATE;
.super Ljava/lang/Enum;
.source "SecEventAnswerTriggered.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecEventAnswerTriggered;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STATE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/SecEventAnswerTriggered$STATE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/SecEventAnswerTriggered$STATE;

.field public static final enum ENDED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

.field public static final enum TRIGGERED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    const-string v1, "TRIGGERED"

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/SecEventAnswerTriggered$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->TRIGGERED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    new-instance v0, Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    const-string v1, "ENDED"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/SecEventAnswerTriggered$STATE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->ENDED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    sget-object v1, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->TRIGGERED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->ENDED:Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    aput-object v1, v0, v3

    sput-object v0, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->$VALUES:[Lcom/android/incallui/SecEventAnswerTriggered$STATE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/SecEventAnswerTriggered$STATE;
    .locals 1

    const-class v0, Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/SecEventAnswerTriggered$STATE;
    .locals 1

    sget-object v0, Lcom/android/incallui/SecEventAnswerTriggered$STATE;->$VALUES:[Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    invoke-virtual {v0}, [Lcom/android/incallui/SecEventAnswerTriggered$STATE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/incallui/SecEventAnswerTriggered$STATE;

    return-object v0
.end method
