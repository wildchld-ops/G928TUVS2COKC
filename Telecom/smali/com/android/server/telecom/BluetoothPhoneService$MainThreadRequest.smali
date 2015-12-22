.class Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;
.super Ljava/lang/Object;
.source "BluetoothPhoneService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/BluetoothPhoneService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainThreadRequest"
.end annotation


# static fields
.field private static final RESULT_NOT_SET:Ljava/lang/Object;


# instance fields
.field param:I

.field result:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->RESULT_NOT_SET:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->RESULT_NOT_SET:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    iput p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->param:I

    return-void
.end method

.method static synthetic access$1700()Ljava/lang/Object;
    .locals 1

    sget-object v0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->RESULT_NOT_SET:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method setResult(Ljava/lang/Object;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/telecom/BluetoothPhoneService$MainThreadRequest;->result:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
