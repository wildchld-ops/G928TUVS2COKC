.class Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;
.super Landroid/text/method/DialerKeyListener;
.source "SecDialpadFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecDialpadFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTMFKeyListener"
.end annotation


# instance fields
.field public final DTMF_CHARACTERS:[C

.field final synthetic this$0:Lcom/android/incallui/SecDialpadFragment;


# direct methods
.method private constructor <init>(Lcom/android/incallui/SecDialpadFragment;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/SecDialpadFragment;

    invoke-direct {p0}, Landroid/text/method/DialerKeyListener;-><init>()V

    const/16 v0, 0xd

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x23s
        0x2as
        0x20s
    .end array-data
.end method

.method synthetic constructor <init>(Lcom/android/incallui/SecDialpadFragment;Lcom/android/incallui/SecDialpadFragment$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;-><init>(Lcom/android/incallui/SecDialpadFragment;)V

    return-void
.end method

.method private lookup(Landroid/view/KeyEvent;)C
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v2

    and-int/lit8 v3, v1, 0x3

    if-nez v3, :cond_0

    if-nez v2, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v3

    invoke-virtual {p1, v3, v1}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    if-eqz v0, :cond_1

    move v2, v0

    :cond_1
    int-to-char v3, v2

    return v3
.end method


# virtual methods
.method public backspace(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getAcceptedChars()[C
    .locals 1

    iget-object v0, p0, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->DTMF_CHARACTERS:[C

    return-object v0
.end method

.method public onKeyDown(Landroid/view/KeyEvent;)Z
    .locals 7

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportDialpad()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return v3

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DTMFKeyListener.onKeyDown: event \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v5

    invoke-static {v5, v1}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "DTMFKeyListener reading \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' from input."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "support_dialpad_by_hardkey"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "support_folder_hardkey"

    invoke-static {v5}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_3

    :cond_2
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->isOffhook()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/CallList;->getIncomingCall()Lcom/android/incallui/Call;

    move-result-object v5

    if-nez v5, :cond_3

    invoke-static {}, Lcom/android/incallui/secui/SecUiAdapter;->getInstance()Lcom/android/incallui/secui/SecUiAdapter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/incallui/secui/SecUiAdapter;->getSecInCallActivity()Lcom/android/incallui/SecInCallActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->isDialpadVisible()Z

    move-result v5

    if-nez v5, :cond_3

    invoke-virtual {v0}, Lcom/android/incallui/SecInCallActivity;->getSecCallCardFragment()Lcom/android/incallui/SecCallCardUi;

    move-result-object v5

    invoke-interface {v5}, Lcom/android/incallui/SecCallCardUi;->needToShowMenu()Z

    move-result v2

    invoke-virtual {v0, v4, v3}, Lcom/android/incallui/SecInCallActivity;->displayDialpad(ZZ)V

    iget-object v3, p0, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/SecDialpadFragment;

    invoke-virtual {v3}, Lcom/android/incallui/SecDialpadFragment;->showElapsedTimeContainer()V

    iget-object v3, p0, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/SecDialpadFragment;

    invoke-virtual {v3, v2}, Lcom/android/incallui/SecDialpadFragment;->setPrimaryCallMenuForDialpad(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/SecDialpadFragment;

    invoke-virtual {v3}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v3

    check-cast v3, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v3, v1}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    move v3, v4

    goto/16 :goto_0

    :cond_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "DTMFKeyListener rejecting \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' from input."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0, p4, p2}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    invoke-virtual {p4}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyDown(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener reading \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from input."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/SecDialpadFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v2, v0}, Lcom/android/incallui/DialpadPresenter;->processDtmf(C)V

    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "DTMFKeyListener rejecting \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' from input."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public onKeyUp(Landroid/view/KeyEvent;)Z
    .locals 5

    const/4 v2, 0x1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    move v1, v2

    :cond_0
    :goto_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/incallui/InCallUtils;->isSupportDialpad()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, p1}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;)C

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "DTMFKeyListener.onKeyUp: event \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v3

    invoke-static {v3, v0}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping the tone for \'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\'"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/SecDialpadFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    move v1, v2

    goto :goto_0
.end method

.method public onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-super {p0, p1, p2, p3, p4}, Landroid/text/method/DialerKeyListener;->onKeyUp(Landroid/view/View;Landroid/text/Editable;ILandroid/view/KeyEvent;)Z

    invoke-virtual {p0, p4, p2}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v2

    int-to-char v0, v2

    invoke-virtual {p0}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->getAcceptedChars()[C

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->ok([CC)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stopping the tone for \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/incallui/SecDialpadFragment$DTMFKeyListener;->this$0:Lcom/android/incallui/SecDialpadFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecDialpadFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v2

    check-cast v2, Lcom/android/incallui/DialpadPresenter;

    invoke-virtual {v2}, Lcom/android/incallui/DialpadPresenter;->stopDtmf()V

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
