.class Lcom/android/server/telecom/TelecomGlobals$3;
.super Landroid/database/ContentObserver;
.source "TelecomGlobals.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/telecom/TelecomGlobals;->initializeForExtra(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomGlobals;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomGlobals;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/TelecomGlobals$3;->this$0:Lcom/android/server/telecom/TelecomGlobals;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    # getter for: Lcom/android/server/telecom/TelecomGlobals;->TAG:Ljava/lang/String;
    invoke-static {}, Lcom/android/server/telecom/TelecomGlobals;->access$200()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RcsSessionObserver::onChange"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals$3;->this$0:Lcom/android/server/telecom/TelecomGlobals;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/telecom/TelecomGlobals;->processChangeInContent(I)V

    return-void
.end method
