.class public final Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;
.super Ljava/lang/Object;
.source "BluetoothController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BluetoothController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PairedDevice"
.end annotation


# static fields
.field public static STATE_CONNECTED:I

.field public static STATE_CONNECTING:I

.field public static STATE_DISCONNECTED:I

.field public static STATE_DISCONNECTING:I


# instance fields
.field public id:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public state:I

.field public tag:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    const/4 v0, 0x3

    sput v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTING:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->state:I

    return-void
.end method

.method public static stateToString(I)Ljava/lang/String;
    .locals 1

    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTED:I

    if-ne p0, v0, :cond_0

    const-string v0, "STATE_DISCONNECTED"

    :goto_0
    return-object v0

    :cond_0
    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTING:I

    if-ne p0, v0, :cond_1

    const-string v0, "STATE_CONNECTING"

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_CONNECTED:I

    if-ne p0, v0, :cond_2

    const-string v0, "STATE_CONNECTED"

    goto :goto_0

    :cond_2
    sget v0, Lcom/android/systemui/statusbar/policy/BluetoothController$PairedDevice;->STATE_DISCONNECTING:I

    if-ne p0, v0, :cond_3

    const-string v0, "STATE_DISCONNECTING"

    goto :goto_0

    :cond_3
    const-string v0, "UNKNOWN"

    goto :goto_0
.end method
