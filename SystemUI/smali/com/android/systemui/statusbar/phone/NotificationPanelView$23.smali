.class Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;
.super Ljava/lang/Object;
.source "NotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/NotificationPanelView;->updateCarrierLabelView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

.field final synthetic val$carrierLabelHeight:I

.field final synthetic val$isCovered:Z

.field final synthetic val$isKeyGuard:Z

.field final synthetic val$isKnoxCustomCarrierLabelHidden:Z

.field final synthetic val$isShade:Z

.field final synthetic val$isShadeLocked:Z

.field final synthetic val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/NotificationPanelView;IZZZLandroid/view/ViewGroup$MarginLayoutParams;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    iput p2, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$carrierLabelHeight:I

    iput-boolean p3, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iput-boolean p7, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isCovered:Z

    iput-boolean p8, p0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKnoxCustomCarrierLabelHidden:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getHeight()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isSupportNotificationOnCover()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationContentsRoot:Landroid/widget/FrameLayout;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/FrameLayout;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v15

    :cond_0
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mSupportMumButton:Z

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->isQsDetailShowing()Z

    move-result v18

    if-nez v18, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->mIsInQSEditMode:Z

    move/from16 v18, v0

    if-eqz v18, :cond_4

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/QSPanel;->isSingleLine()Z

    move-result v18

    if-eqz v18, :cond_28

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v18, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v14

    check-cast v14, Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v18, v15, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$carrierLabelHeight:I

    move/from16 v19, v0

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const v20, 0x7f0c04d7

    invoke-virtual/range {v19 .. v20}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v19

    sub-int v6, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$carrierLabelHeight:I

    move/from16 v18, v0

    add-int v17, v6, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_5

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v18, :cond_1b

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c04c6

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    :goto_2
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mIsMocha:Z

    if-eqz v18, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBarState:I
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c04c6

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    :cond_6
    :goto_3
    const/16 v18, 0x0

    const/16 v19, 0x0

    move/from16 v0, v18

    move/from16 v1, v17

    move/from16 v2, v19

    invoke-virtual {v14, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    invoke-virtual {v14, v12}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v18, v0

    if-eqz v18, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_1e

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v18, :cond_1d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1e

    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_1f

    const/16 v18, 0x0

    :goto_4
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v18, :cond_21

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-nez v18, :cond_20

    const/16 v18, 0x1

    :goto_5
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPressed(Z)V

    :goto_6
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mIsLatte:Z

    if-eqz v18, :cond_24

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLayoutDirectionRTL()Z

    move-result v18

    if-eqz v18, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x15

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    :cond_9
    :goto_7
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mShowNotiPanelPLMNForLMR:Z

    if-eqz v18, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup$MarginLayoutParams;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v8, v0, v1, v2, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const v19, 0x800013

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-eqz v18, :cond_26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPadingForTab:I
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v18

    :goto_8
    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v21

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v18, v0

    if-eqz v18, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_c

    :cond_a
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    move/from16 v18, v0

    if-nez v18, :cond_b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_27

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_27

    :cond_c
    const/16 v18, 0x0

    :goto_9
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_d
    sget-object v18, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "mClearAll.setVisibility - mIsFullyOpened : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " isShade : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mHasNotification : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z
    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mIsUpwardFling : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mQsFullyExpanded : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " isShadeLocked : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, " mClearAllVisible : "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getLastChildYTranslation()F

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getBottom()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->min(FF)F

    move-result v18

    move/from16 v0, v18

    float-to-int v0, v0

    move/from16 v18, v0

    sub-int v18, v15, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$carrierLabelHeight:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c04d8

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v7, v6, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/View;->getX()F

    move-result v18

    move/from16 v0, v18

    float-to-int v10, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v18, v0

    if-eqz v18, :cond_f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_10

    :cond_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHasNotification:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$1300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_13

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v18, :cond_12

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mIsTablet:Z

    if-nez v18, :cond_12

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mDoNotShowClearOnLockScreen:Z

    if-eqz v18, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsExpanded:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3800(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v18, v0

    if-eqz v18, :cond_13

    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_14

    const/4 v9, 0x0

    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCue:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    if-eqz v18, :cond_17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCue:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsScreenon:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    move/from16 v18, v0

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mKeyguardIconOverflowContainer:Lcom/android/systemui/statusbar/NotificationOverflowContainer;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4000(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/NotificationOverflowContainer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/NotificationOverflowContainer;->getIconsView()Lcom/android/systemui/statusbar/NotificationOverflowIconsView;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/NotificationOverflowIconsView;->getChildCount()I

    move-result v18

    if-lez v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mNotificationStackScroller:Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3600(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/stack/NotificationStackScrollLayout;->getVisibility()I

    move-result v18

    if-nez v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->isMobileKeyboardAttached()Z

    move-result v18

    if-nez v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStatusBar:Lcom/android/systemui/statusbar/phone/PhoneStatusBar;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/PhoneStatusBar;->getUserSetup()Z

    move-result v18

    if-eqz v18, :cond_16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    new-instance v19, Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v20, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mContext:Landroid/content/Context;
    invoke-static/range {v20 .. v20}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4200(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/content/Context;

    move-result-object v20

    invoke-direct/range {v19 .. v20}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;)V

    # setter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;
    invoke-static/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4102(Lcom/android/systemui/statusbar/phone/NotificationPanelView;Lcom/android/keyguard/KeyguardSecurityContainer;)Lcom/android/keyguard/KeyguardSecurityContainer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mSecurityContainer:Lcom/android/keyguard/KeyguardSecurityContainer;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/keyguard/KeyguardSecurityContainer;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/keyguard/KeyguardSecurityContainer;->getSecurityMode()Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-result-object v16

    sget-object v18, Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;->UniversalLock:Lcom/android/keyguard/KeyguardSecurityModel$SecurityMode;

    move-object/from16 v0, v16

    move-object/from16 v1, v18

    if-eq v0, v1, :cond_11

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mUseStableMoreCue:Z

    if-eqz v18, :cond_15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCue:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCue:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mStableCueRunnable:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object v19

    const-wide/16 v20, 0x7d0

    invoke-virtual/range {v18 .. v21}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_11
    :goto_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c03b7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v13

    if-eqz v10, :cond_19

    if-nez v9, :cond_19

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLayoutDirectionRTL()Z

    move-result v18

    if-eqz v18, :cond_18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c03fc

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v18

    add-int v11, v10, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2, v11, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v13, v1, v2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsFullyOpened:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShade:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-nez v18, :cond_1a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isCovered:Z

    move/from16 v18, v0

    if-nez v18, :cond_1a

    const/16 v18, 0x0

    :goto_d
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v18, v0

    if-nez v18, :cond_10

    :cond_13
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_10

    :cond_14
    const/16 v9, 0x8

    goto/16 :goto_a

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueIsFadedOut:Z

    move/from16 v18, v0

    if-nez v18, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueIsFadedOut:Z

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCue:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCue:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setFocusable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueAnimator:Landroid/view/animation/Animation;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Animation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/animation/Animation;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCueRunnable:Ljava/lang/Runnable;
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Ljava/lang/Runnable;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->postOnAnimation(Ljava/lang/Runnable;)V

    goto/16 :goto_b

    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueAnimator:Landroid/view/animation/Animation;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/animation/Animation;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/view/animation/Animation;->cancel()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mMoreNotificationCue:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$100(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v18

    iput-boolean v0, v1, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCueIsFadedOut:Z

    goto/16 :goto_b

    :cond_17
    sget-object v18, Lcom/android/systemui/statusbar/phone/PanelView;->TAG:Ljava/lang/String;

    const-string v19, "mMoreNotificationCue is null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_b

    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getWidth()I

    move-result v21

    sub-int v21, v21, v10

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto/16 :goto_c

    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginsRelative(IIII)V

    goto/16 :goto_c

    :cond_1a
    const/16 v18, 0x8

    goto/16 :goto_d

    :cond_1b
    const/4 v12, 0x0

    goto/16 :goto_2

    :cond_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->getResources()Landroid/content/res/Resources;

    move-result-object v18

    const v19, 0x7f0c04d7

    invoke-virtual/range {v18 .. v19}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    goto/16 :goto_3

    :cond_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsFullyExpanded:Z

    move/from16 v18, v0

    if-nez v18, :cond_8

    :cond_1e
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mIsUpwardFling:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-eqz v18, :cond_8

    :cond_1f
    const/16 v18, 0x8

    goto/16 :goto_4

    :cond_20
    const/16 v18, 0x0

    goto/16 :goto_5

    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllVisible:Z
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Z

    move-result v18

    if-nez v18, :cond_22

    const/16 v18, 0x1

    :goto_e
    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAllLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4700(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setPressed(Z)V

    goto/16 :goto_6

    :cond_22
    const/16 v18, 0x0

    goto :goto_e

    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x13

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    :cond_24
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-nez v18, :cond_9

    invoke-static {}, Lcom/android/systemui/statusbar/BaseStatusBar;->isLayoutDirectionRTL()Z

    move-result v18

    if-eqz v18, :cond_25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x55

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x53

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    goto/16 :goto_7

    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLableStartPading:I
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$4900(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)I

    move-result v18

    goto/16 :goto_8

    :cond_27
    const/16 v18, 0x8

    goto/16 :goto_9

    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mClearAll:Landroid/view/View;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3400(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/view/View;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mQsPanel:Lcom/android/systemui/qs/QSPanel;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/qs/QSPanel;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Lcom/android/systemui/qs/QSPanel;->getHeight()I

    move-result v18

    sub-int v18, v15, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v19, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mHeader:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;
    invoke-static/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$500(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->getHeight()I

    move-result v19

    sub-int v18, v18, v19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$carrierLabelHeight:I

    move/from16 v19, v0

    sub-int v6, v18, v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$marginParams:Landroid/view/ViewGroup$MarginLayoutParams;

    move-object/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->mShowNotiPanelPLMNForLMR:Z

    if-eqz v18, :cond_29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x11

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setGravity(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-virtual/range {v18 .. v22}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    :cond_29
    sget-boolean v18, Lcom/android/systemui/statusbar/Feature;->upgradeLollipop:Z

    if-eqz v18, :cond_2b

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKeyGuard:Z

    move/from16 v18, v0

    if-nez v18, :cond_2a

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isShadeLocked:Z

    move/from16 v18, v0

    if-eqz v18, :cond_2c

    :cond_2a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_2b
    :goto_f
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->val$isKnoxCustomCarrierLabelHidden:Z

    move/from16 v18, v0

    if-eqz v18, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x8

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/NotificationPanelView$23;->this$0:Lcom/android/systemui/statusbar/phone/NotificationPanelView;

    move-object/from16 v18, v0

    # getter for: Lcom/android/systemui/statusbar/phone/NotificationPanelView;->mCarrierLabel:Landroid/widget/TextView;
    invoke-static/range {v18 .. v18}, Lcom/android/systemui/statusbar/phone/NotificationPanelView;->access$3300(Lcom/android/systemui/statusbar/phone/NotificationPanelView;)Landroid/widget/TextView;

    move-result-object v18

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_f
.end method
