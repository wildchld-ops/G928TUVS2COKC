.class Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "SecTabletCallButtonVoiceView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecTabletCallButtonVoiceView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InCallPagerAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/android/incallui/SecTabletCallButtonVoiceView;


# direct methods
.method public constructor <init>(Lcom/android/incallui/SecTabletCallButtonVoiceView;Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;->this$0:Lcom/android/incallui/SecTabletCallButtonVoiceView;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

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

    # setter for: Lcom/android/incallui/SecTabletCallButtonVoiceView;->mCurrentPageScrollState:I
    invoke-static {v4}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->access$102(I)I

    if-nez p2, :cond_1

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400f4

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;->this$0:Lcom/android/incallui/SecTabletCallButtonVoiceView;

    # invokes: Lcom/android/incallui/SecTabletCallButtonVoiceView;->inflateInCallButtons(Landroid/view/View;)V
    invoke-static {v2, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->access$200(Lcom/android/incallui/SecTabletCallButtonVoiceView;Landroid/view/View;)V

    :cond_0
    :goto_0
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

    invoke-virtual {v1, v0, v4}, Landroid/support/v4/view/ViewPager;->addView(Landroid/view/View;I)V

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;->this$0:Lcom/android/incallui/SecTabletCallButtonVoiceView;

    # invokes: Lcom/android/incallui/SecTabletCallButtonVoiceView;->updateVoiceCallButtons()V
    invoke-static {v2}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->access$400(Lcom/android/incallui/SecTabletCallButtonVoiceView;)V

    return-object v0

    :cond_1
    const/4 v2, 0x1

    if-ne p2, v2, :cond_0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040134

    invoke-virtual {v2, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iget-object v2, p0, Lcom/android/incallui/SecTabletCallButtonVoiceView$InCallPagerAdapter;->this$0:Lcom/android/incallui/SecTabletCallButtonVoiceView;

    # invokes: Lcom/android/incallui/SecTabletCallButtonVoiceView;->inflateExtraButtons(Landroid/view/View;)V
    invoke-static {v2, v0}, Lcom/android/incallui/SecTabletCallButtonVoiceView;->access$300(Lcom/android/incallui/SecTabletCallButtonVoiceView;Landroid/view/View;)V

    goto :goto_0
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
