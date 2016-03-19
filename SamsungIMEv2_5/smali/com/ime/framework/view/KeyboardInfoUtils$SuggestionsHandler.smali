.class Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;
.super Landroid/os/Handler;
.source "KeyboardInfoUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ime/framework/view/KeyboardInfoUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SuggestionsHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/KeyboardInfoUtils;


# direct methods
.method constructor <init>(Lcom/ime/framework/view/KeyboardInfoUtils;)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->this$0:Lcom/ime/framework/view/KeyboardInfoUtils;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->this$0:Lcom/ime/framework/view/KeyboardInfoUtils;

    # getter for: Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/framework/view/KeyboardInfoUtils;->access$000(Lcom/ime/framework/view/KeyboardInfoUtils;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/ime/framework/common/InputManager;->getInputView(Z)Landroid/view/View;

    move-result-object v2

    const-string v3, "KeyboardInfoUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "suggestions Handler msg.what:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  isAbstractKeyboardView : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    instance-of v5, v2, Lcom/ime/framework/view/AbstractKeyboardView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.samsung.android.universalswitch.SipInformation"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    instance-of v3, v2, Lcom/ime/framework/view/AbstractKeyboardView;

    if-eqz v3, :cond_3

    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->this$0:Lcom/ime/framework/view/KeyboardInfoUtils;

    invoke-virtual {v3}, Lcom/ime/framework/view/KeyboardInfoUtils;->getDefaultKeyboardInfo()Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->this$0:Lcom/ime/framework/view/KeyboardInfoUtils;

    # invokes: Lcom/ime/framework/view/KeyboardInfoUtils;->getCandidateViewInfo(Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
    invoke-static {v3, v0}, Lcom/ime/framework/view/KeyboardInfoUtils;->access$100(Lcom/ime/framework/view/KeyboardInfoUtils;Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    const-string v3, "KeyBoardInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "KeyboardInfoUtils"

    const-string v4, "sending default keyboard info, preditive text is ON"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->this$0:Lcom/ime/framework/view/KeyboardInfoUtils;

    # getter for: Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/framework/view/KeyboardInfoUtils;->access$000(Lcom/ime/framework/view/KeyboardInfoUtils;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->this$0:Lcom/ime/framework/view/KeyboardInfoUtils;

    # invokes: Lcom/ime/framework/view/KeyboardInfoUtils;->getExpandedCandidateViewInfo()Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
    invoke-static {v3}, Lcom/ime/framework/view/KeyboardInfoUtils;->access$200(Lcom/ime/framework/view/KeyboardInfoUtils;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    const-string v3, "SIPInfo"

    const-string v4, "broadcasting from setCandidates for exapnded CV"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "KeyBoardInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "KeyboardInfoUtils"

    const-string v4, "sending expanded keyboard info"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v3, p1, Landroid/os/Message;->what:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->this$0:Lcom/ime/framework/view/KeyboardInfoUtils;

    invoke-virtual {v3}, Lcom/ime/framework/view/KeyboardInfoUtils;->getDefaultKeyboardInfo()Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->this$0:Lcom/ime/framework/view/KeyboardInfoUtils;

    invoke-virtual {v3, v0}, Lcom/ime/framework/view/KeyboardInfoUtils;->getEmoticonInfo(Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->this$0:Lcom/ime/framework/view/KeyboardInfoUtils;

    # invokes: Lcom/ime/framework/view/KeyboardInfoUtils;->getCandidateViewInfo(Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;
    invoke-static {v3, v0}, Lcom/ime/framework/view/KeyboardInfoUtils;->access$100(Lcom/ime/framework/view/KeyboardInfoUtils;Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;)Lcom/samsung/android/universalswitch/SIP/KeyBoardInfo;

    move-result-object v0

    const-string v3, "KeyBoardInfo"

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v3, "KeyboardInfoUtils"

    const-string v4, "sending Emoticon Keyboard info... "

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/ime/framework/view/KeyboardInfoUtils$SuggestionsHandler;->this$0:Lcom/ime/framework/view/KeyboardInfoUtils;

    # getter for: Lcom/ime/framework/view/KeyboardInfoUtils;->mInputManager:Lcom/ime/framework/common/InputManager;
    invoke-static {v3}, Lcom/ime/framework/view/KeyboardInfoUtils;->access$000(Lcom/ime/framework/view/KeyboardInfoUtils;)Lcom/ime/framework/common/InputManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_1
.end method
