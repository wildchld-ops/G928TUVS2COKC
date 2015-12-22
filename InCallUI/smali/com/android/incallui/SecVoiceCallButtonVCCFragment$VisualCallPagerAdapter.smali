.class Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SecVoiceCallButtonVCCFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVoiceCallButtonVCCFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VisualCallPagerAdapter"
.end annotation


# instance fields
.field private mChildCount:I

.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mChildCount:I

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/View;ILjava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v4/view/ViewPager;

    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/support/v4/view/ViewPager;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public finishUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public getCount()I
    .locals 2

    const/4 v0, 0x2

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "support_safetycare"

    invoke-static {v1}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 9

    const v8, 0x7f040134

    const v7, 0x7f040132

    const/4 v6, 0x1

    const/4 v5, 0x0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem visualcall position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    move-object v2, p1

    check-cast v2, Landroid/support/v4/view/ViewPager;

    const/4 v3, 0x0

    # setter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I
    invoke-static {v3}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$702(I)I

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->getInstance()Lcom/android/incallui/VisualCallCenter;

    invoke-static {}, Lcom/android/incallui/VisualCallCenter;->isDisplayIVRPager()Z

    move-result v3

    if-eqz v3, :cond_4

    if-nez p2, :cond_1

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040033

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateIVRList(Landroid/view/View;)V
    invoke-static {v3, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$2600(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/view/View;)V

    :cond_0
    :goto_0
    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateVoiceCallButtons()V
    invoke-static {v3}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    move-object v1, v0

    :goto_1
    return-object v1

    :cond_1
    if-ne p2, v6, :cond_2

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V
    invoke-static {v3, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$900(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/view/View;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x2

    if-ne p2, v3, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const-string v3, "support_safetycare"

    invoke-static {v3}, Lcom/android/services/telephony/common/PhoneFeature;->hasFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {}, Lcom/android/services/telephony/common/SystemDBInterface;->isEmergencyMode()Z

    move-result v3

    if-eqz v3, :cond_3

    if-eqz v0, :cond_3

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateExtraButtons(Landroid/view/View;)V
    invoke-static {v3, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/view/View;)V

    goto :goto_0

    :cond_4
    if-nez p2, :cond_6

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateInCallButtons(Landroid/view/View;)V
    invoke-static {v3, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$900(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/view/View;)V

    :cond_5
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "instantiateItem: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;)V

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updateVoiceCallButtons()V
    invoke-static {v3}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1100(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V

    move-object v1, v0

    goto :goto_1

    :cond_6
    if-ne p2, v6, :cond_5

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v3, v8, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v3, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$VisualCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->inflateExtraButtons(Landroid/view/View;)V
    invoke-static {v3, v0}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1000(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Landroid/view/View;)V

    goto :goto_2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public restoreState(Landroid/os/Parcelable;Ljava/lang/ClassLoader;)V
    .locals 0

    return-void
.end method

.method public saveState()Landroid/os/Parcelable;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public startUpdate(Landroid/view/View;)V
    .locals 0

    return-void
.end method
