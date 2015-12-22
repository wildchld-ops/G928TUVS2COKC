.class Lcom/android/server/telecom/ConnectionServiceWrapper$BlankResponse;
.super Ljava/lang/Object;
.source "ConnectionServiceWrapper.java"

# interfaces
.implements Lcom/android/server/telecom/CreateConnectionResponse;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/ConnectionServiceWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BlankResponse"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;


# direct methods
.method private constructor <init>(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$BlankResponse;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/telecom/ConnectionServiceWrapper;Lcom/android/server/telecom/ConnectionServiceWrapper$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/telecom/ConnectionServiceWrapper$BlankResponse;-><init>(Lcom/android/server/telecom/ConnectionServiceWrapper;)V

    return-void
.end method


# virtual methods
.method public handleCreateConnectionFailure(Landroid/telecom/DisconnectCause;)V
    .locals 0

    return-void
.end method

.method public handleCreateConnectionSuccess(Lcom/android/server/telecom/CallIdMapper;Landroid/telecom/ParcelableConnection;)V
    .locals 0

    return-void
.end method
