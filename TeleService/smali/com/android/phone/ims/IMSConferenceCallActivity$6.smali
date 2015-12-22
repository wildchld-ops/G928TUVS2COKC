.class Lcom/android/phone/ims/IMSConferenceCallActivity$6;
.super Ljava/lang/Object;
.source "IMSConferenceCallActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ims/IMSConferenceCallActivity;->updateKeypad()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/ims/IMSConferenceCallActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "ims_voice_conference_kddi"

    invoke-static {v0}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->icCM:Lcom/android/phone/ims/IMSConferenceCallMgr;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3400(Lcom/android/phone/ims/IMSConferenceCallActivity;)Lcom/android/phone/ims/IMSConferenceCallMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/ims/IMSConferenceCallMgr;->isActiveGroupCall()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    const-string v1, "updateKeypad :: Do not showSoftInput when it is active group call..."

    # invokes: Lcom/android/phone/ims/IMSConferenceCallActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$200(Lcom/android/phone/ims/IMSConferenceCallActivity;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mIsForegroundActivity:Z
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3500(Lcom/android/phone/ims/IMSConferenceCallActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mScreenState:I
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$400(Lcom/android/phone/ims/IMSConferenceCallActivity;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$1600(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/AutoCompleteTextView;->requestFocus()Z

    iget-object v0, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->imm:Landroid/view/inputmethod/InputMethodManager;
    invoke-static {v0}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$3600(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/ims/IMSConferenceCallActivity$6;->this$0:Lcom/android/phone/ims/IMSConferenceCallActivity;

    # getter for: Lcom/android/phone/ims/IMSConferenceCallActivity;->mRecipientsText:Landroid/widget/AutoCompleteTextView;
    invoke-static {v1}, Lcom/android/phone/ims/IMSConferenceCallActivity;->access$1600(Lcom/android/phone/ims/IMSConferenceCallActivity;)Landroid/widget/AutoCompleteTextView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0
.end method
