.class public final enum Lcom/android/phone/ims/Participant$Status;
.super Ljava/lang/Enum;
.source "Participant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ims/Participant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Status"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/ims/Participant$Status;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/ims/Participant$Status;

.field public static final enum CONNECTED:Lcom/android/phone/ims/Participant$Status;

.field public static final enum CONNECTING:Lcom/android/phone/ims/Participant$Status;

.field public static final enum DISCONNECTED:Lcom/android/phone/ims/Participant$Status;

.field public static final enum FAILED:Lcom/android/phone/ims/Participant$Status;

.field public static final enum IDLE:Lcom/android/phone/ims/Participant$Status;

.field public static final enum WAITING:Lcom/android/phone/ims/Participant$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/ims/Participant$Status;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/ims/Participant$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$Status;->IDLE:Lcom/android/phone/ims/Participant$Status;

    new-instance v0, Lcom/android/phone/ims/Participant$Status;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/ims/Participant$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$Status;->WAITING:Lcom/android/phone/ims/Participant$Status;

    new-instance v0, Lcom/android/phone/ims/Participant$Status;

    const-string v1, "CONNECTING"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/ims/Participant$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$Status;->CONNECTING:Lcom/android/phone/ims/Participant$Status;

    new-instance v0, Lcom/android/phone/ims/Participant$Status;

    const-string v1, "CONNECTED"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/ims/Participant$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$Status;->CONNECTED:Lcom/android/phone/ims/Participant$Status;

    new-instance v0, Lcom/android/phone/ims/Participant$Status;

    const-string v1, "DISCONNECTED"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/ims/Participant$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$Status;->DISCONNECTED:Lcom/android/phone/ims/Participant$Status;

    new-instance v0, Lcom/android/phone/ims/Participant$Status;

    const-string v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/ims/Participant$Status;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$Status;->FAILED:Lcom/android/phone/ims/Participant$Status;

    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/phone/ims/Participant$Status;

    sget-object v1, Lcom/android/phone/ims/Participant$Status;->IDLE:Lcom/android/phone/ims/Participant$Status;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/ims/Participant$Status;->WAITING:Lcom/android/phone/ims/Participant$Status;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/ims/Participant$Status;->CONNECTING:Lcom/android/phone/ims/Participant$Status;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/ims/Participant$Status;->CONNECTED:Lcom/android/phone/ims/Participant$Status;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/ims/Participant$Status;->DISCONNECTED:Lcom/android/phone/ims/Participant$Status;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/ims/Participant$Status;->FAILED:Lcom/android/phone/ims/Participant$Status;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ims/Participant$Status;->$VALUES:[Lcom/android/phone/ims/Participant$Status;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/ims/Participant$Status;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/phone/ims/Participant$Status;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ims/Participant$Status;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/ims/Participant$Status;
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$Status;->$VALUES:[Lcom/android/phone/ims/Participant$Status;

    invoke-virtual {v0}, [Lcom/android/phone/ims/Participant$Status;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/ims/Participant$Status;

    return-object v0
.end method


# virtual methods
.method public isCONNECTED()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$Status;->CONNECTED:Lcom/android/phone/ims/Participant$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCONNECTING()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$Status;->CONNECTING:Lcom/android/phone/ims/Participant$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDISCONNECTED()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$Status;->DISCONNECTED:Lcom/android/phone/ims/Participant$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isFAILED()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$Status;->FAILED:Lcom/android/phone/ims/Participant$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isIDLE()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$Status;->IDLE:Lcom/android/phone/ims/Participant$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWAITING()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$Status;->WAITING:Lcom/android/phone/ims/Participant$Status;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
