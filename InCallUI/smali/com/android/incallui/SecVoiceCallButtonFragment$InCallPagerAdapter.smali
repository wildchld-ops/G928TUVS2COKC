.class public Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SecVoiceCallButtonFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVoiceCallButtonFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "InCallPagerAdapter"
.end annotation


# instance fields
.field protected mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecVoiceCallButtonFragment;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

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

.method public getCount()I
    .locals 1

    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/View;I)Ljava/lang/Object;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x0

    move-object v1, p1

    check-cast v1, Landroid/support/v4/view/ViewPager;

    sput v5, Lcom/android/incallui/SecVoiceCallButtonFragment;->mCurrentPageScrollState:I

    if-nez p2, :cond_2

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f04012f

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-virtual {v2, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->inflateInCallButtons(Landroid/view/View;)V

    :cond_0
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "instantiateItem: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v5}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-virtual {v2}, Lcom/android/incallui/SecVoiceCallButtonFragment;->updateVoiceCallButtons()V

    return-object v0

    :cond_1
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040132

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    invoke-static {}, Lcom/android/incallui/InCallUtils;->isMobileKeyboardCovered()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040130

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    :goto_2
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;->this$0:Lcom/android/incallui/SecVoiceCallButtonFragment;

    invoke-virtual {v2, v0}, Lcom/android/incallui/SecVoiceCallButtonFragment;->inflateExtraButtons(Landroid/view/View;)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/incallui/SecVoiceCallButtonFragment$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040134

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

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
