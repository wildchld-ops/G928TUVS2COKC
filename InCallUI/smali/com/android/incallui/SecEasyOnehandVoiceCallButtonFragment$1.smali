.class Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment$1;
.super Ljava/lang/Object;
.source "SecEasyOnehandVoiceCallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment$1;->this$0:Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment$1;->this$0:Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->changeSideArrow(I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p0, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment$1;->this$0:Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;

    invoke-virtual {v1}, Lcom/android/incallui/SecEasyOnehandVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v1

    check-cast v1, Lcom/android/incallui/CallButtonPresenter;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/incallui/CallButtonPresenter;->changeSideArrow(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x7f100243
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
