.class Lcom/android/server/telecom/ConnectionServiceWrapper$2;
.super Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;
.source "ConnectionServiceWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/ConnectionServiceWrapper;-><init>(Landroid/content/ComponentName;Lcom/android/server/telecom/ConnectionServiceRepository;Lcom/android/server/telecom/PhoneAccountRegistrar;Landroid/content/Context;Landroid/os/UserHandle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/ConnectionServiceWrapper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/ConnectionServiceWrapper$2;->this$0:Lcom/android/server/telecom/ConnectionServiceWrapper;

    invoke-direct {p0}, Lcom/android/server/telecom/PhoneAccountRegistrar$Listener;-><init>()V

    return-void
.end method
