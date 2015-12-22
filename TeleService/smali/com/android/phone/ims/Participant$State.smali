.class public final enum Lcom/android/phone/ims/Participant$State;
.super Ljava/lang/Enum;
.source "Participant.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/ims/Participant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/ims/Participant$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/ims/Participant$State;

.field public static final enum ACTIVE:Lcom/android/phone/ims/Participant$State;

.field public static final enum ALERTING:Lcom/android/phone/ims/Participant$State;

.field public static final enum DIALING:Lcom/android/phone/ims/Participant$State;

.field public static final enum DISCONNECTED:Lcom/android/phone/ims/Participant$State;

.field public static final enum IDLE:Lcom/android/phone/ims/Participant$State;

.field public static final enum INVALID:Lcom/android/phone/ims/Participant$State;

.field public static final enum NONE:Lcom/android/phone/ims/Participant$State;

.field public static final enum ONHOLD:Lcom/android/phone/ims/Participant$State;

.field public static final enum WAITING:Lcom/android/phone/ims/Participant$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/ims/Participant$State;

    const-string v1, "INVALID"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/ims/Participant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$State;->INVALID:Lcom/android/phone/ims/Participant$State;

    new-instance v0, Lcom/android/phone/ims/Participant$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/ims/Participant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$State;->NONE:Lcom/android/phone/ims/Participant$State;

    new-instance v0, Lcom/android/phone/ims/Participant$State;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/ims/Participant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$State;->IDLE:Lcom/android/phone/ims/Participant$State;

    new-instance v0, Lcom/android/phone/ims/Participant$State;

    const-string v1, "WAITING"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/ims/Participant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$State;->WAITING:Lcom/android/phone/ims/Participant$State;

    new-instance v0, Lcom/android/phone/ims/Participant$State;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/ims/Participant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$State;->DIALING:Lcom/android/phone/ims/Participant$State;

    new-instance v0, Lcom/android/phone/ims/Participant$State;

    const-string v1, "ALERTING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/ims/Participant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$State;->ALERTING:Lcom/android/phone/ims/Participant$State;

    new-instance v0, Lcom/android/phone/ims/Participant$State;

    const-string v1, "ACTIVE"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/ims/Participant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$State;->ACTIVE:Lcom/android/phone/ims/Participant$State;

    new-instance v0, Lcom/android/phone/ims/Participant$State;

    const-string v1, "ONHOLD"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/ims/Participant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$State;->ONHOLD:Lcom/android/phone/ims/Participant$State;

    new-instance v0, Lcom/android/phone/ims/Participant$State;

    const-string v1, "DISCONNECTED"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/ims/Participant$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/ims/Participant$State;->DISCONNECTED:Lcom/android/phone/ims/Participant$State;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/phone/ims/Participant$State;

    sget-object v1, Lcom/android/phone/ims/Participant$State;->INVALID:Lcom/android/phone/ims/Participant$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/ims/Participant$State;->NONE:Lcom/android/phone/ims/Participant$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/ims/Participant$State;->IDLE:Lcom/android/phone/ims/Participant$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/ims/Participant$State;->WAITING:Lcom/android/phone/ims/Participant$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/ims/Participant$State;->DIALING:Lcom/android/phone/ims/Participant$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/ims/Participant$State;->ALERTING:Lcom/android/phone/ims/Participant$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/ims/Participant$State;->ACTIVE:Lcom/android/phone/ims/Participant$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/ims/Participant$State;->ONHOLD:Lcom/android/phone/ims/Participant$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/ims/Participant$State;->DISCONNECTED:Lcom/android/phone/ims/Participant$State;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/ims/Participant$State;->$VALUES:[Lcom/android/phone/ims/Participant$State;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/ims/Participant$State;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/phone/ims/Participant$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ims/Participant$State;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/ims/Participant$State;
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->$VALUES:[Lcom/android/phone/ims/Participant$State;

    invoke-virtual {v0}, [Lcom/android/phone/ims/Participant$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/ims/Participant$State;

    return-object v0
.end method


# virtual methods
.method public isACTIVE()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->ACTIVE:Lcom/android/phone/ims/Participant$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isALERTING()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->ALERTING:Lcom/android/phone/ims/Participant$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAlive()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/phone/ims/Participant$State;->isOutgoing()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ims/Participant$State;->isONHOLD()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/ims/Participant$State;->isACTIVE()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDELETABLE()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->IDLE:Lcom/android/phone/ims/Participant$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/ims/Participant$State;->DISCONNECTED:Lcom/android/phone/ims/Participant$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDIALABLE()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->IDLE:Lcom/android/phone/ims/Participant$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/ims/Participant$State;->WAITING:Lcom/android/phone/ims/Participant$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/ims/Participant$State;->DISCONNECTED:Lcom/android/phone/ims/Participant$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDIALING()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->DIALING:Lcom/android/phone/ims/Participant$State;

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

    sget-object v0, Lcom/android/phone/ims/Participant$State;->DISCONNECTED:Lcom/android/phone/ims/Participant$State;

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

    sget-object v0, Lcom/android/phone/ims/Participant$State;->IDLE:Lcom/android/phone/ims/Participant$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isINVALID()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->INVALID:Lcom/android/phone/ims/Participant$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isNONE()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->NONE:Lcom/android/phone/ims/Participant$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isONHOLD()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->ONHOLD:Lcom/android/phone/ims/Participant$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOutgoing()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->DIALING:Lcom/android/phone/ims/Participant$State;

    if-eq p0, v0, :cond_0

    sget-object v0, Lcom/android/phone/ims/Participant$State;->ALERTING:Lcom/android/phone/ims/Participant$State;

    if-ne p0, v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isWAITING()Z
    .locals 1

    sget-object v0, Lcom/android/phone/ims/Participant$State;->WAITING:Lcom/android/phone/ims/Participant$State;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
