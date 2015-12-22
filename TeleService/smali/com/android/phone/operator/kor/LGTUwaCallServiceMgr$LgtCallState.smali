.class final enum Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;
.super Ljava/lang/Enum;
.source "LGTUwaCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LgtCallState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

.field public static final enum ACTIVE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

.field public static final enum ALERTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

.field public static final enum DIALING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

.field public static final enum DISCONNECTED:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

.field public static final enum DISCONNECTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

.field public static final enum HOLDING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

.field public static final enum IDLE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

.field public static final enum INCOMING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

.field public static final enum WAITING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    const-string v1, "IDLE"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->IDLE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    const-string v1, "ACTIVE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ACTIVE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    const-string v1, "HOLDING"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->HOLDING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    const-string v1, "DIALING"

    invoke-direct {v0, v1, v6}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DIALING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    const-string v1, "ALERTING"

    invoke-direct {v0, v1, v7}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ALERTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    const-string v1, "INCOMING"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->INCOMING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    const-string v1, "WAITING"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->WAITING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    const-string v1, "DISCONNECTED"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTED:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    new-instance v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    const-string v1, "DISCONNECTING"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->IDLE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ACTIVE:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->HOLDING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DIALING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->ALERTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->INCOMING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->WAITING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTED:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->DISCONNECTING:Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->$VALUES:[Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;
    .locals 1

    const-class v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->$VALUES:[Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    invoke-virtual {v0}, [Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/operator/kor/LGTUwaCallServiceMgr$LgtCallState;

    return-object v0
.end method
