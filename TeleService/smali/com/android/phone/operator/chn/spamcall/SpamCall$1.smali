.class Lcom/android/phone/operator/chn/spamcall/SpamCall$1;
.super Ljava/lang/Object;
.source "SpamCall.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/operator/chn/spamcall/SpamCall;->initLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/operator/chn/spamcall/SpamCall;


# direct methods
.method constructor <init>(Lcom/android/phone/operator/chn/spamcall/SpamCall;)V
    .locals 0

    iput-object p1, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall$1;->this$0:Lcom/android/phone/operator/chn/spamcall/SpamCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall$1;->this$0:Lcom/android/phone/operator/chn/spamcall/SpamCall;

    # getter for: Lcom/android/phone/operator/chn/spamcall/SpamCall;->mSubAppBarSwitch:Landroid/widget/Switch;
    invoke-static {v2}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->access$000(Lcom/android/phone/operator/chn/spamcall/SpamCall;)Landroid/widget/Switch;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    :goto_0
    const-string v2, "SpamCall"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick mSubAppBarView value :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Lcom/android/phone/Log;->d(Ljava/lang/String;Ljava/lang/String;Z)I

    iget-object v1, p0, Lcom/android/phone/operator/chn/spamcall/SpamCall$1;->this$0:Lcom/android/phone/operator/chn/spamcall/SpamCall;

    invoke-virtual {v1, v0}, Lcom/android/phone/operator/chn/spamcall/SpamCall;->updateTurnOnStatus(Z)V

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
