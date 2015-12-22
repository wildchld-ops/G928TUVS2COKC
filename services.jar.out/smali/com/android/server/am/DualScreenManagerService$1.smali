.class Lcom/android/server/am/DualScreenManagerService$1;
.super Landroid/os/RemoteCallbackList;
.source "DualScreenManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/DualScreenManagerService;-><init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/RemoteCallbackList",
        "<",
        "Lcom/samsung/android/dualscreen/IDualScreenCallbacks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/DualScreenManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/am/DualScreenManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/DualScreenManagerService$1;->this$0:Lcom/android/server/am/DualScreenManagerService;

    invoke-direct {p0}, Landroid/os/RemoteCallbackList;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onCallbackDied(Landroid/os/IInterface;)V
    .locals 0

    check-cast p1, Lcom/samsung/android/dualscreen/IDualScreenCallbacks;

    invoke-virtual {p0, p1}, Lcom/android/server/am/DualScreenManagerService$1;->onCallbackDied(Lcom/samsung/android/dualscreen/IDualScreenCallbacks;)V

    return-void
.end method

.method public onCallbackDied(Lcom/samsung/android/dualscreen/IDualScreenCallbacks;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/os/RemoteCallbackList;->onCallbackDied(Landroid/os/IInterface;)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/DualScreenManagerService$1;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method
