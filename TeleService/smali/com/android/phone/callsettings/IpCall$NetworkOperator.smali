.class public final enum Lcom/android/phone/callsettings/IpCall$NetworkOperator;
.super Ljava/lang/Enum;
.source "IpCall.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/callsettings/IpCall;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NetworkOperator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/callsettings/IpCall$NetworkOperator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/callsettings/IpCall$NetworkOperator;

.field public static final enum CMCC:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

.field public static final enum CTC:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

.field public static final enum CU:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

.field public static final enum OTHERS:Lcom/android/phone/callsettings/IpCall$NetworkOperator;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    const-string v1, "CMCC"

    invoke-direct {v0, v1, v2}, Lcom/android/phone/callsettings/IpCall$NetworkOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;->CMCC:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    new-instance v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    const-string v1, "CU"

    invoke-direct {v0, v1, v3}, Lcom/android/phone/callsettings/IpCall$NetworkOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;->CU:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    new-instance v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    const-string v1, "CTC"

    invoke-direct {v0, v1, v4}, Lcom/android/phone/callsettings/IpCall$NetworkOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;->CTC:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    new-instance v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    const-string v1, "OTHERS"

    invoke-direct {v0, v1, v5}, Lcom/android/phone/callsettings/IpCall$NetworkOperator;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;->OTHERS:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    sget-object v1, Lcom/android/phone/callsettings/IpCall$NetworkOperator;->CMCC:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/phone/callsettings/IpCall$NetworkOperator;->CU:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/phone/callsettings/IpCall$NetworkOperator;->CTC:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/phone/callsettings/IpCall$NetworkOperator;->OTHERS:Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    aput-object v1, v0, v5

    sput-object v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;->$VALUES:[Lcom/android/phone/callsettings/IpCall$NetworkOperator;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/callsettings/IpCall$NetworkOperator;
    .locals 1
    .param p0    # Ljava/lang/String;

    const-class v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    return-object v0
.end method

.method public static values()[Lcom/android/phone/callsettings/IpCall$NetworkOperator;
    .locals 1

    sget-object v0, Lcom/android/phone/callsettings/IpCall$NetworkOperator;->$VALUES:[Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    invoke-virtual {v0}, [Lcom/android/phone/callsettings/IpCall$NetworkOperator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/callsettings/IpCall$NetworkOperator;

    return-object v0
.end method
