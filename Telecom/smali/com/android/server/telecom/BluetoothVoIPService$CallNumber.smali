.class Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;
.super Ljava/lang/Object;
.source "BluetoothVoIPService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothVoIPService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallNumber"
.end annotation


# instance fields
.field private mNumber:Ljava/lang/String;

.field private mType:I


# direct methods
.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mType:I

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mType:I

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/android/server/telecom/BluetoothVoIPService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mNumber:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;)I
    .locals 1

    iget v0, p0, Lcom/android/server/telecom/BluetoothVoIPService$CallNumber;->mType:I

    return v0
.end method
