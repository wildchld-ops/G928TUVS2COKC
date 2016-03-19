.class Lcom/ime/framework/common/InputManagerImpl$UniversalSwitchBroadcastHandler;
.super Landroid/os/Handler;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UniversalSwitchBroadcastHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$UniversalSwitchBroadcastHandler;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    const/4 v3, 0x1

    iget v1, p1, Landroid/os/Message;->what:I

    if-ne v1, v3, :cond_0

    invoke-static {}, Lcom/ime/framework/view/KeyboardInfoUtils;->getInstance()Lcom/ime/framework/view/KeyboardInfoUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/ime/framework/common/InputManagerImpl$UniversalSwitchBroadcastHandler;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-virtual {v1}, Lcom/ime/framework/common/InputManagerImpl;->isEmoticonMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME"

    const-string v2, "Sending Emoticon mode info to Universal Switch"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/ime/framework/view/KeyboardInfoUtils;->sendSIPInformation(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "SamsungIME"

    const-string v2, "Sending default keyboard info to Universal Switch"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v3}, Lcom/ime/framework/view/KeyboardInfoUtils;->sendSIPInformation(I)V

    goto :goto_0
.end method
