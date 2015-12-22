.class final enum Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;
.super Ljava/lang/Enum;
.source "SyncCallServiceMgr.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/operator/jpn/SyncCallServiceMgr;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "KDDICallType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

.field public static final enum OTHER_TYPE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

.field public static final enum VIDEO:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

.field public static final enum VOICE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    const-string v1, "VOICE"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->VOICE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    const-string v1, "VIDEO"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->VIDEO:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    new-instance v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    const-string v1, "OTHER_TYPE"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->OTHER_TYPE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->VOICE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->VIDEO:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->OTHER_TYPE:Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->$VALUES:[Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;
    .locals 1

    const-class v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;
    .locals 1

    sget-object v0, Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->$VALUES:[Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    invoke-virtual {v0}, [Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/operator/jpn/SyncCallServiceMgr$KDDICallType;

    return-object v0
.end method
