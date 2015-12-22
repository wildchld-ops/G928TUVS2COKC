.class Lcom/android/incallui/SecVoiceCallButtonVCCFragment$6;
.super Ljava/lang/Object;
.source "SecVoiceCallButtonVCCFragment.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecVoiceCallButtonVCCFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;


# direct methods
.method constructor <init>(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$6;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    # setter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mCurrentPageScrollState:I
    invoke-static {p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$802(I)I

    # setter for: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->mVCCCurrentPageScrollState:I
    invoke-static {p1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$702(I)I

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPageSelected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/SecVoiceCallButtonVCCFragment$6;->this$0:Lcom/android/incallui/SecVoiceCallButtonVCCFragment;

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/incallui/InCallUtils;->getCallToDisplay(Lcom/android/incallui/CallList;Lcom/android/incallui/Call;Z)Lcom/android/incallui/Call;

    move-result-object v1

    # invokes: Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->updatePagerState(Lcom/android/incallui/Call;)V
    invoke-static {v0, v1}, Lcom/android/incallui/SecVoiceCallButtonVCCFragment;->access$1700(Lcom/android/incallui/SecVoiceCallButtonVCCFragment;Lcom/android/incallui/Call;)V

    return-void
.end method
