.class Landroid/preference/PreferenceActivity$7;
.super Ljava/lang/Object;
.source "PreferenceActivity.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Landroid/preference/PreferenceActivity;)V
    .locals 0

    iput-object p1, p0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mEnableSplitBar:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$600(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-nez v25, :cond_0

    const/16 v25, 0x0

    :goto_0
    return v25

    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/16 v17, 0x0

    move-object/from16 v0, p1

    instance-of v0, v0, Landroid/view/ViewGroup;

    move/from16 v25, v0

    if-eqz v25, :cond_1

    check-cast p1, Landroid/view/ViewGroup;

    const/16 v25, 0x0

    move-object/from16 v0, p1

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v17

    :cond_1
    if-nez v17, :cond_2

    const/16 v25, 0x0

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const/16 v25, 0x0

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    :goto_1
    const/16 v25, 0x1

    goto :goto_0

    :cond_3
    const/16 v25, 0x2

    move/from16 v0, v25

    if-ne v2, v0, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v25

    check-cast v25, Landroid/view/View;

    check-cast v25, Landroid/view/View;

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getWidth()I

    move-result v14

    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/View;->getX()F

    move-result v13

    div-int/lit8 v25, v18, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v12, v13, v25

    add-float v22, v13, v21

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1000(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-eqz v25, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mIsRTL:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$700(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-eqz v25, :cond_a

    const v9, 0x3eae147a    # 0.33999997f

    const v8, 0x3f4ccccd    # 0.8f

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, v21, v25

    if-lez v25, :cond_7

    int-to-float v0, v14

    move/from16 v25, v0

    cmpg-float v25, v22, v25

    if-gtz v25, :cond_7

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v21, v25

    add-float v12, v12, v25

    int-to-float v0, v14

    move/from16 v25, v0

    div-float v19, v12, v25

    cmpl-float v25, v19, v8

    if-lez v25, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v25, 0x1

    const/high16 v26, 0x41a00000    # 20.0f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v12, v20

    int-to-float v0, v14

    move/from16 v25, v0

    sub-float v12, v25, v12

    :cond_4
    div-int/lit8 v25, v18, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v13, v12, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1200(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-eqz v25, :cond_6

    const/16 v25, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUserUpdateSplit:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1302(Z)Z

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const v26, 0x10203fb

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v16

    check-cast v16, Landroid/widget/LinearLayout$LayoutParams;

    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, v16

    iget v15, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-float v23, v5, v15

    int-to-float v0, v14

    move/from16 v25, v0

    div-float v6, v12, v25

    mul-float v10, v23, v6

    sub-float v11, v23, v10

    iput v10, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, v16

    iput v11, v0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1000(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-eqz v25, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mIsRTL:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$700(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-eqz v25, :cond_f

    move-object/from16 v0, v16

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_6
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_1

    :cond_7
    const/16 v25, 0x0

    cmpg-float v25, v21, v25

    if-gez v25, :cond_5

    const/16 v25, 0x0

    cmpl-float v25, v22, v25

    if-ltz v25, :cond_5

    add-float v12, v12, v21

    int-to-float v0, v14

    move/from16 v25, v0

    div-float v19, v12, v25

    cmpg-float v25, v19, v9

    if-gez v25, :cond_9

    int-to-float v0, v14

    move/from16 v25, v0

    mul-float v12, v25, v9

    :cond_8
    :goto_4
    div-int/lit8 v25, v18, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v13, v12, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_2

    :cond_9
    cmpl-float v25, v19, v8

    if-lez v25, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v25, 0x1

    const/high16 v26, 0x41a00000    # 20.0f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v12, v20

    int-to-float v0, v14

    move/from16 v25, v0

    sub-float v12, v25, v12

    goto :goto_4

    :cond_a
    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    cmpl-float v25, v21, v25

    if-lez v25, :cond_d

    int-to-float v0, v14

    move/from16 v25, v0

    cmpg-float v25, v22, v25

    if-gtz v25, :cond_d

    move/from16 v0, v18

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v25, v21, v25

    add-float v12, v12, v25

    int-to-float v0, v14

    move/from16 v25, v0

    div-float v19, v12, v25

    const v25, 0x3f28f5c3    # 0.66f

    cmpl-float v25, v19, v25

    if-lez v25, :cond_c

    int-to-float v0, v14

    move/from16 v25, v0

    const v26, 0x3f28f5c3    # 0.66f

    mul-float v12, v25, v26

    :cond_b
    :goto_5
    div-int/lit8 v25, v18, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v13, v12, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_2

    :cond_c
    const v25, 0x3e4ccccd    # 0.2f

    cmpg-float v25, v19, v25

    if-gez v25, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v25, 0x1

    const/high16 v26, 0x41a00000    # 20.0f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v12, v20

    goto :goto_5

    :cond_d
    const/16 v25, 0x0

    cmpg-float v25, v21, v25

    if-gez v25, :cond_5

    const/16 v25, 0x0

    cmpl-float v25, v22, v25

    if-ltz v25, :cond_5

    add-float v12, v12, v21

    int-to-float v0, v14

    move/from16 v25, v0

    div-float v19, v12, v25

    const v25, 0x3e4ccccd    # 0.2f

    cmpg-float v25, v19, v25

    if-gez v25, :cond_e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    const/16 v25, 0x1

    const/high16 v26, 0x41a00000    # 20.0f

    move/from16 v0, v25

    move/from16 v1, v26

    invoke-static {v0, v1, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v20

    move/from16 v12, v20

    :cond_e
    div-int/lit8 v25, v18, 0x2

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    sub-float v13, v12, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    invoke-virtual {v0, v13}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x1

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    goto/16 :goto_2

    :cond_f
    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_3

    :cond_10
    const/16 v25, 0x1

    move/from16 v0, v25

    if-ne v2, v0, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const v26, 0x10203fb

    invoke-virtual/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    invoke-virtual {v4}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F
    invoke-static {}, Landroid/preference/PreferenceActivity;->access$1400()F

    move-result v25

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v26, v0

    cmpl-float v25, v25, v26

    if-eqz v25, :cond_11

    iget v0, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    move/from16 v25, v0

    # setter for: Landroid/preference/PreferenceActivity;->mSplitBarMovedLeftWeight:F
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1402(F)F

    :cond_11
    const/16 v25, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_1

    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$900(Landroid/preference/PreferenceActivity;)Landroid/view/ViewGroup;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Landroid/view/ViewGroup;->getX()F

    move-result v25

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v26, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v26 .. v26}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Landroid/view/View;->getWidth()I

    move-result v26

    div-int/lit8 v26, v26, 0x2

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    sub-float v24, v25, v26

    const/16 v25, 0x0

    cmpg-float v25, v24, v25

    if-gez v25, :cond_13

    const/16 v24, 0x0

    :cond_13
    const/16 v25, 0x3

    move/from16 v0, v25

    if-ne v2, v0, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mIsDeviceDefault:Z
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1000(Landroid/preference/PreferenceActivity;)Z

    move-result v25

    if-nez v25, :cond_15

    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    # getter for: Landroid/preference/PreferenceActivity;->mSplitBarView:Landroid/view/View;
    invoke-static/range {v25 .. v25}, Landroid/preference/PreferenceActivity;->access$1100(Landroid/preference/PreferenceActivity;)Landroid/view/View;

    move-result-object v25

    move-object/from16 v0, v25

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/preference/PreferenceActivity$7;->this$0:Landroid/preference/PreferenceActivity;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    # setter for: Landroid/preference/PreferenceActivity;->mUpdateLayoutBySplitChange:Z
    invoke-static/range {v25 .. v26}, Landroid/preference/PreferenceActivity;->access$1202(Landroid/preference/PreferenceActivity;Z)Z

    const/16 v25, 0x4

    move-object/from16 v0, v17

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method
