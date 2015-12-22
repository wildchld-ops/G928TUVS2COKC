.class Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;
.super Ljava/lang/Object;
.source "SViewCoverNewUnlockArea.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;


# direct methods
.method constructor <init>(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Right"

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "Up"

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-eqz v4, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :goto_1
    const/4 v4, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F
    invoke-static {v4, v2}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$602(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F
    invoke-static {v4, v3}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$702(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-wide/16 v6, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v4, v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$802(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;D)D

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-string v5, "Left"

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const/4 v5, 0x1

    sget-object v6, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->resetCircleAnimator()V
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAllAnimator()V
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleInAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v4

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v4

    sub-float v4, v2, v4

    float-to-int v0, v4

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v4

    sub-float v4, v3, v4

    float-to-int v1, v4

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    int-to-double v6, v0

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    int-to-double v8, v1

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v4, v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$802(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;D)D

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v6

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v8

    div-double/2addr v6, v8

    double-to-float v5, v6

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1602(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v4

    const v5, 0x3e99999a    # 0.3f

    cmpl-float v4, v4, v5

    if-lez v4, :cond_3

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v6

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v7

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V

    goto/16 :goto_1

    :cond_3
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v7

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V

    goto/16 :goto_1

    :pswitch_2
    const-string v4, "SViewCoverNewUnlockArea"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ACTION_UP mDistance: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v4

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v6

    cmpl-double v4, v4, v6

    if-ltz v4, :cond_4

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-string v5, ""

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v5

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V
    invoke-static {v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    sget-object v5, Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;->ShortCutPage:Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;

    invoke-virtual {v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->handleUnlock(Lcom/sec/android/cover/sviewcover/SViewCoverView$PageIndex;)V

    :cond_4
    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-string v5, ""

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const/4 v5, 0x0

    sget-object v6, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Left:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/view/View;

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgPressed:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowSetting:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    aput-object v9, v7, v8

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    invoke-static {v4, v5, v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v5, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingCircleOutAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v5

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V
    invoke-static {v4, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V

    iget-object v4, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$5;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSettingBgNormal:Landroid/widget/ImageView;
    invoke-static {v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
