.class Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;
.super Ljava/lang/Object;
.source "SecCallPlusVoiceCallButtonFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 12

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onClick(View "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", id "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")..."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x65

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x66

    invoke-virtual {v8, v9}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mHandler:Landroid/os/Handler;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/os/Handler;

    move-result-object v8

    const/16 v9, 0x66

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    sparse-switch v0, :sswitch_data_0

    const-string v8, "onClick: unexpected"

    invoke-static {p0, v8}, Lcom/android/incallui/Log;->wtf(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void

    :sswitch_0
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    const v8, 0x7f040135

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v8, 0x7f100322

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mBackground:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1100(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    iget-object v8, v8, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow:Landroid/widget/PopupWindow;

    if-nez v8, :cond_3

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    new-instance v9, Landroid/widget/PopupWindow;

    const/16 v10, 0x578

    const/16 v11, 0x73a

    invoke-direct {v9, v6, v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v9, v8, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow:Landroid/widget/PopupWindow;

    :cond_3
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    iget-object v8, v8, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    iget-object v8, v8, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    iget-object v9, v9, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/16 v10, -0x235

    const/16 v11, 0x19

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    if-eqz v8, :cond_4

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    :cond_4
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$100(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$100(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v8, 0x7f040136

    const/4 v9, 0x0

    invoke-virtual {v2, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v8, 0x7f100323

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v8, 0x7f100324

    invoke-virtual {v7, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation_map:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1200(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    if-eqz v3, :cond_5

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mLocation:Ljava/lang/String;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1300(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    iget-object v8, v8, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    if-nez v8, :cond_6

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    new-instance v9, Landroid/widget/PopupWindow;

    const/16 v10, 0x578

    const/16 v11, 0x73a

    invoke-direct {v9, v7, v10, v11}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v9, v8, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    :cond_6
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    iget-object v8, v8, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    invoke-virtual {v8}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v8

    if-nez v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    iget-object v8, v8, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->popupWindow_map:Landroid/widget/PopupWindow;

    iget-object v9, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    iget-object v9, v9, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mEndCallButton:Landroid/widget/ImageButton;

    const/16 v10, -0x235

    const/16 v11, 0x19

    invoke-virtual {v8, v9, v10, v11}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    if-eqz v8, :cond_7

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    :cond_7
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$100(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager_out:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$100(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setScrollable(Z)V

    goto/16 :goto_0

    :sswitch_2
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->checkThenModify(I)V
    invoke-static {v8, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1400(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;I)V

    goto/16 :goto_0

    :sswitch_3
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "VOCB"

    const-string v11, "ADDC"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallButtonPresenter;->addCallClicked()V

    goto/16 :goto_0

    :sswitch_4
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "RECG"

    invoke-static {v8, v9, v10}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->recordClicked()V
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1500(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    goto/16 :goto_0

    :sswitch_5
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->checkThenModify(I)V
    invoke-static {v8, v0}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1400(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;I)V

    goto/16 :goto_0

    :sswitch_6
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "VOCB"

    const-string v11, "EXVL"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->extraVolumeClicked()V

    goto/16 :goto_0

    :sswitch_7
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "VOCB"

    const-string v11, "BLTH"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->bluetoothClicked()V

    goto/16 :goto_0

    :sswitch_8
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "VOCB"

    const-string v11, "SPKR"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallButtonPresenter;->speakerClicked()V

    goto/16 :goto_0

    :sswitch_9
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "VOCB"

    const-string v11, "VOKP"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallButtonPresenter;

    iget-object v9, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->isDialpadVisible()Z

    move-result v9

    if-nez v9, :cond_8

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v8, v9}, Lcom/android/incallui/CallButtonPresenter;->showDialpadClicked(Z)V

    goto/16 :goto_0

    :cond_8
    const/4 v9, 0x0

    goto :goto_1

    :sswitch_a
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "VOCB"

    const-string v11, "MUTE"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallButtonPresenter;

    invoke-static {}, Lcom/android/incallui/AudioModeProvider;->getInstance()Lcom/android/incallui/AudioModeProvider;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/incallui/AudioModeProvider;->getMute()Z

    move-result v9

    if-nez v9, :cond_9

    const/4 v9, 0x1

    :goto_2
    invoke-virtual {v8, v9}, Lcom/android/incallui/CallButtonPresenter;->muteClicked(Z)V

    goto/16 :goto_0

    :cond_9
    const/4 v9, 0x0

    goto :goto_2

    :sswitch_b
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallButtonPresenter;

    invoke-virtual {v8}, Lcom/android/incallui/CallButtonPresenter;->endCallClicked()V

    goto/16 :goto_0

    :sswitch_c
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "BTNX"

    const-string v11, "Email"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # invokes: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->emailClicked()V
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1600(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)V

    goto/16 :goto_0

    :sswitch_d
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "BTNX"

    const-string v11, "Message"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchMessage()V

    goto/16 :goto_0

    :sswitch_e
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "BTNX"

    const-string v11, "Internet"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchInternet()V

    goto/16 :goto_0

    :sswitch_f
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "BTNX"

    const-string v11, "Contact"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchContacts()V

    goto/16 :goto_0

    :sswitch_10
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "BTNX"

    const-string v11, "Planner"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchPlanner()V

    goto/16 :goto_0

    :sswitch_11
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "com.android.incallui"

    const-string v10, "BTNX"

    const-string v11, "Memo"

    invoke-static {v8, v9, v10, v11}, Lcom/android/incallui/secutils/AppLogging;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/incallui/PackageHelpers;->launchMemo()V

    goto/16 :goto_0

    :sswitch_12
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->getPresenter()Lcom/android/incallui/Presenter;

    move-result-object v8

    check-cast v8, Lcom/android/incallui/CallButtonPresenter;

    iget-object v9, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mAction:Ljava/lang/String;
    invoke-static {v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1700(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mUri:Ljava/lang/String;
    invoke-static {v10}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1800(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Lcom/android/incallui/CallButtonPresenter;->CallPlusClicked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_13
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :sswitch_14
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlus:Landroid/view/View;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1900(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_a

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_a
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :sswitch_15
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    if-eqz v8, :cond_2

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPagerIndicatorCallPlus:Landroid/view/View;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$1900(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_b

    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    :cond_b
    iget-object v8, p0, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$4;->this$0:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;

    # getter for: Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->mPager:Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;
    invoke-static {v8}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;->access$000(Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment;)Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;

    move-result-object v8

    const/4 v9, 0x2

    invoke-virtual {v8, v9}, Lcom/android/incallui/SecCallPlusVoiceCallButtonFragment$InCallViewPager;->setCurrentItem(I)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x7f10002e -> :sswitch_a
        0x7f10002f -> :sswitch_9
        0x7f1000d9 -> :sswitch_12
        0x7f100241 -> :sswitch_5
        0x7f100245 -> :sswitch_4
        0x7f10024a -> :sswitch_6
        0x7f10024b -> :sswitch_7
        0x7f10024d -> :sswitch_8
        0x7f10024f -> :sswitch_b
        0x7f100256 -> :sswitch_2
        0x7f100257 -> :sswitch_3
        0x7f10025d -> :sswitch_c
        0x7f10025e -> :sswitch_d
        0x7f10025f -> :sswitch_e
        0x7f100261 -> :sswitch_f
        0x7f100262 -> :sswitch_10
        0x7f100263 -> :sswitch_11
        0x7f100266 -> :sswitch_13
        0x7f100314 -> :sswitch_14
        0x7f100315 -> :sswitch_15
        0x7f10031e -> :sswitch_1
        0x7f100321 -> :sswitch_0
    .end sparse-switch
.end method
