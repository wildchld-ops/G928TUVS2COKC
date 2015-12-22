.class public Lcom/sec/epdg/EpdgOperatorConstants;
.super Ljava/lang/Object;
.source "EpdgOperatorConstants.java"


# static fields
.field public static final DELAY_L2W_AND_W2L:Z

.field public static final DNS_RETRY_THROTTLE_COUNTER:I = 0x5

.field public static final IMS_APN_ID:I

.field public static final INTERNET_APN_ID:I

.field public static final IWLAN_INTERFACE_PREFIX:Ljava/lang/String; = "epdg"

.field public static final SUPPORT_MULTIPLE_EPDGIP:Z = false

.field public static final WIFI_INTERFACE_NAME:Ljava/lang/String; = "wlan0"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x2

    const/4 v1, 0x1

    invoke-static {}, Lcom/sec/epdg/EpdgUtils;->isOperatorTmo()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    sput v2, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    sput-boolean v1, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    :goto_0
    return-void

    :cond_0
    sput v1, Lcom/sec/epdg/EpdgOperatorConstants;->IMS_APN_ID:I

    sput v2, Lcom/sec/epdg/EpdgOperatorConstants;->INTERNET_APN_ID:I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/sec/epdg/EpdgOperatorConstants;->DELAY_L2W_AND_W2L:Z

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
