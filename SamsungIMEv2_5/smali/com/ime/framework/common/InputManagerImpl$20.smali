.class Lcom/ime/framework/common/InputManagerImpl$20;
.super Landroid/content/BroadcastReceiver;
.source "InputManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/common/InputManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final STATE_CONNECTED:I

.field private final STATE_DISCONNECTED:I

.field final synthetic this$0:Lcom/ime/framework/common/InputManagerImpl;


# direct methods
.method constructor <init>(Lcom/ime/framework/common/InputManagerImpl;)V
    .locals 1

    iput-object p1, p0, Lcom/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/ime/framework/common/InputManagerImpl$20;->STATE_DISCONNECTED:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/ime/framework/common/InputManagerImpl$20;->STATE_CONNECTED:I

    return-void
.end method

.method private maskBitMaskAndSetHWKeyboardState(II)V
    .locals 2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    # |= operator for: Lcom/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {p2}, Lcom/ime/framework/common/InputManagerImpl;->access$4876(I)I

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->settingHWKeyboardConnection(Z)V
    invoke-static {v0, v1}, Lcom/ime/framework/common/InputManagerImpl;->access$5100(Lcom/ime/framework/common/InputManagerImpl;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p1, :cond_0

    xor-int/lit8 v0, p2, -0x1

    # &= operator for: Lcom/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {v0}, Lcom/ime/framework/common/InputManagerImpl;->access$4872(I)I

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->keyboardState:I
    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->access$4800()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    const/4 v1, 0x0

    # invokes: Lcom/ime/framework/common/InputManagerImpl;->settingHWKeyboardConnection(Z)V
    invoke-static {v0, v1}, Lcom/ime/framework/common/InputManagerImpl;->access$5100(Lcom/ime/framework/common/InputManagerImpl;Z)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    sget-boolean v2, Lcom/ime/framework/util/Debug;->INFO:Z

    if-eqz v2, :cond_0

    const-string v2, "SamsungIME"

    const-string v3, "mConnectSideSyncKeyboard onReceive()"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    :goto_0
    return-void

    :cond_2
    const-string v2, "device_state"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    sget-boolean v2, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_3

    const-string v2, "SamsungIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mConnectSideSyncKeyboard onReceive() state : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string v2, "com.sec.android.sidesync.action.PSS_KEYBOARD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;
    invoke-static {v2}, Lcom/ime/framework/common/InputManagerImpl;->access$6300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/TipsDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/view/TipsDialog;->isDiscoverabilityShown()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/ime/framework/common/InputManagerImpl$20;->this$0:Lcom/ime/framework/common/InputManagerImpl;

    # getter for: Lcom/ime/framework/common/InputManagerImpl;->mTipsDialog:Lcom/ime/framework/view/TipsDialog;
    invoke-static {v2}, Lcom/ime/framework/common/InputManagerImpl;->access$6300(Lcom/ime/framework/common/InputManagerImpl;)Lcom/ime/framework/view/TipsDialog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/ime/framework/view/TipsDialog;->closeDiscoverability()V

    :cond_4
    const/16 v2, 0x10

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/InputManagerImpl$20;->maskBitMaskAndSetHWKeyboardState(II)V

    goto :goto_0

    :cond_5
    const-string v2, "com.sec.android.sidesync.action.KMS_KEYBOARD"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x20

    invoke-direct {p0, v1, v2}, Lcom/ime/framework/common/InputManagerImpl$20;->maskBitMaskAndSetHWKeyboardState(II)V

    goto :goto_0
.end method
