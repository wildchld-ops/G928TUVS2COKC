.class Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;
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

    iput-object p1, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 14

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mIsFirstNoti:Z
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "Left"

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    const-string v6, "Right"

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    :cond_0
    const/4 v6, 0x1

    :goto_0
    return v6

    :cond_1
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    if-eqz v6, :cond_2

    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :cond_3
    :goto_1
    const/4 v6, 0x1

    goto :goto_0

    :pswitch_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverPowerManager;->userActivity()V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F
    invoke-static {v6, v4}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$602(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F
    invoke-static {v6, v5}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$702(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-wide/16 v8, 0x0

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v6, v8, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$802(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;D)D

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-string v7, "Up"

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const/4 v7, 0x1

    sget-object v8, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Up:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/view/View;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v11

    aput-object v11, v9, v10

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const/high16 v7, 0x3f000000    # 0.5f

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaExceptNotiButtons(F)V
    invoke-static {v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->resetCircleAnimator()V
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->cancelAllAnimator()V
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleInAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/animation/ValueAnimator;->start()V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mStylizedClockManager:Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/sviewcover/stylizedclock/SViewCoverStylizedClockManager;->getCurrentStyleIndex()I

    move-result v6

    const/4 v7, 0x1

    if-ge v6, v7, :cond_3

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v6

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    :pswitch_1
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/sec/android/cover/manager/CoverPowerManager;->getInstance(Landroid/content/Context;)Lcom/sec/android/cover/manager/CoverPowerManager;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sec/android/cover/manager/CoverPowerManager;->resetScreenOffTimer()V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartX:F
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v6

    sub-float v6, v4, v6

    float-to-int v0, v6

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mShortcutStartY:F
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v6

    sub-float v6, v5, v6

    float-to-int v1, v6

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    int-to-double v8, v0

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    int-to-double v10, v1

    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v6, v8, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$802(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;D)D

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v8

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v10

    div-double/2addr v8, v10

    double-to-float v7, v8

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1602(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)F

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v6

    const v7, 0x3e99999a    # 0.3f

    cmpl-float v6, v6, v7

    if-lez v6, :cond_4

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mRatio:F
    invoke-static {v8}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1600(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)F

    move-result v8

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V
    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V

    goto/16 :goto_1

    :cond_4
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleEffect:Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;

    move-result-object v7

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;
    invoke-static {v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v9

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->updateDragCircle(Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V
    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1900(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Lcom/sec/android/cover/sviewcover/SViewCoverUnlockCircleEffect;FLandroid/view/View;)V

    goto/16 :goto_1

    :pswitch_2
    const-string v6, "SViewCoverNewUnlockArea"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ACTION_UP mDistance: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v8}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mDistance:D
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v6

    iget-object v8, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mSecondBorder:D
    invoke-static {v8}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1700(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_5

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-string v7, ""

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v7

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V
    invoke-static {v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V

    new-instance v3, Landroid/content/Intent;

    const-string v6, "com.sec.android.cover.sviewcover.SViewCoverMissedEventActivity.LAUNCH"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const v6, 0x10008000

    invoke-virtual {v3, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mContext:Landroid/content/Context;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/content/Context;

    move-result-object v6

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v3, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_2
    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const-string v7, ""

    # setter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mTouchedShortcut:Ljava/lang/String;
    invoke-static {v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$202(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Ljava/lang/String;)Ljava/lang/String;

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const/4 v7, 0x0

    sget-object v8, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;->Up:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;

    const/4 v9, 0x2

    new-array v9, v9, [Landroid/view/View;

    const/4 v10, 0x0

    iget-object v11, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgPressed:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2300(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    iget-object v11, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mArrowNoti:Landroid/widget/ImageView;
    invoke-static {v11}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2400(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v11

    aput-object v11, v9, v10

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->playAnimation(ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V
    invoke-static {v6, v7, v8, v9}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$1100(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;ZLcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$Dir;[Landroid/view/View;)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    const/high16 v7, 0x3f800000    # 1.0f

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->setAlphaExceptNotiButtons(F)V
    invoke-static {v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2500(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;F)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    iget-object v7, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiCircleOutAnimator:Landroid/animation/ValueAnimator;
    invoke-static {v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$3000(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/animation/ValueAnimator;

    move-result-object v7

    # invokes: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->closeCircleEffect(Landroid/animation/ValueAnimator;)V
    invoke-static {v6, v7}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2200(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;Landroid/animation/ValueAnimator;)V

    iget-object v6, p0, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea$4;->this$0:Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;

    # getter for: Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->mNotiBgNormal:Landroid/widget/ImageView;
    invoke-static {v6}, Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;->access$2800(Lcom/sec/android/cover/sviewcover/SViewCoverNewUnlockArea;)Landroid/widget/ImageView;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    :catch_0
    move-exception v2

    const-string v6, "SViewCoverNewUnlockArea"

    const-string v7, "missed event activity is not found "

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
