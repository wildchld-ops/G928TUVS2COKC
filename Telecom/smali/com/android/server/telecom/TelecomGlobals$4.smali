.class Lcom/android/server/telecom/TelecomGlobals$4;
.super Ljava/lang/Object;
.source "TelecomGlobals.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/telecom/TelecomGlobals;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/telecom/TelecomGlobals;


# direct methods
.method constructor <init>(Lcom/android/server/telecom/TelecomGlobals;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/telecom/TelecomGlobals$4;->this$0:Lcom/android/server/telecom/TelecomGlobals;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3

    const-string v0, "AutoCSP"

    const-string v1, "AutoCSP Service Connected"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/server/telecom/Log;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals$4;->this$0:Lcom/android/server/telecom/TelecomGlobals;

    invoke-static {p2}, Lcom/android/server/telecom/IAutoCSP$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/server/telecom/IAutoCSP;

    move-result-object v1

    # setter for: Lcom/android/server/telecom/TelecomGlobals;->mAutoCSP:Lcom/android/server/telecom/IAutoCSP;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomGlobals;->access$302(Lcom/android/server/telecom/TelecomGlobals;Lcom/android/server/telecom/IAutoCSP;)Lcom/android/server/telecom/IAutoCSP;

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/telecom/TelecomGlobals$4;->this$0:Lcom/android/server/telecom/TelecomGlobals;

    const/4 v1, 0x0

    # setter for: Lcom/android/server/telecom/TelecomGlobals;->mAutoCSP:Lcom/android/server/telecom/IAutoCSP;
    invoke-static {v0, v1}, Lcom/android/server/telecom/TelecomGlobals;->access$302(Lcom/android/server/telecom/TelecomGlobals;Lcom/android/server/telecom/IAutoCSP;)Lcom/android/server/telecom/IAutoCSP;

    return-void
.end method
