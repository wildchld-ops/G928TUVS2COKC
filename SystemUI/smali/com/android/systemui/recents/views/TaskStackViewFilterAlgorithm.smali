.class public Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;
.super Ljava/lang/Object;
.source "TaskStackViewFilterAlgorithm.java"


# instance fields
.field mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

.field mStackView:Lcom/android/systemui/recents/views/TaskStackView;

.field mViewPool:Lcom/android/systemui/recents/views/ViewPool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/systemui/recents/RecentsConfiguration;Lcom/android/systemui/recents/views/TaskStackView;Lcom/android/systemui/recents/views/ViewPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/recents/RecentsConfiguration;",
            "Lcom/android/systemui/recents/views/TaskStackView;",
            "Lcom/android/systemui/recents/views/ViewPool",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/model/Task;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iput-object p2, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    iput-object p3, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    return-void
.end method


# virtual methods
.method getEnterTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)I"
        }
    .end annotation

    const/4 v3, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v1, v5, -0x1

    :goto_0
    if-ltz v1, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/recents/model/Task;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-boolean v8, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v8, v4}, Lcom/android/systemui/recents/views/TaskStackView;->getChildViewForTask(Lcom/android/systemui/recents/model/Task;)Lcom/android/systemui/recents/views/TaskView;

    move-result-object v7

    if-nez v7, :cond_0

    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mViewPool:Lcom/android/systemui/recents/views/ViewPool;

    invoke-virtual {v8, v4, v4}, Lcom/android/systemui/recents/views/ViewPool;->pickUpViewFromPool(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskView;

    new-instance v0, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v0, v6}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    invoke-virtual {v7, v0}, Lcom/android/systemui/recents/views/TaskView;->prepareTaskTransformForFilterTaskHidden(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v0, v8}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    mul-int/lit8 v8, v3, 0x19

    iput v8, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    invoke-virtual {p3, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v8, v6, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    iget v9, v0, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    invoke-static {v2, v8}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v3, v3, 0x1

    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_1
    iget-object v8, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v8, v8, Lcom/android/systemui/recents/RecentsConfiguration;->filteringNewViewsAnimDuration:I

    return v8
.end method

.method getExitTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskView;",
            ">;)I"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10}, Lcom/android/systemui/recents/views/TaskStackView;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mStackView:Lcom/android/systemui/recents/views/TaskStackView;

    invoke-virtual {v10, v2}, Lcom/android/systemui/recents/views/TaskStackView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTask()Lcom/android/systemui/recents/model/Task;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    if-ltz v6, :cond_0

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget-boolean v10, v10, Lcom/android/systemui/recents/views/TaskViewTransform;->visible:Z

    if-nez v10, :cond_1

    :cond_0
    const/4 v9, 0x1

    :goto_1
    if-eqz v9, :cond_3

    if-gez v6, :cond_2

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    :goto_2
    invoke-virtual {v8, v7}, Lcom/android/systemui/recents/views/TaskView;->prepareTaskTransformForFilterTaskVisible(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    move-object/from16 v0, p6

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    mul-int/lit8 v10, v4, 0x19

    iput v10, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->startDelay:I

    move-object/from16 v0, p5

    invoke-virtual {v0, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    goto :goto_1

    :cond_2
    new-instance v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-direct {v7, v10}, Lcom/android/systemui/recents/views/TaskViewTransform;-><init>(Lcom/android/systemui/recents/views/TaskViewTransform;)V

    goto :goto_2

    :cond_3
    move-object/from16 v0, p4

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/recents/views/TaskViewTransform;

    iget v10, v7, Lcom/android/systemui/recents/views/TaskViewTransform;->translationY:I

    invoke-virtual {v8}, Lcom/android/systemui/recents/views/TaskView;->getTranslationY()F

    move-result v11

    float-to-int v11, v11

    sub-int/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    invoke-static {v3, v10}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_3

    :cond_4
    iget-object v10, p0, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->mConfig:Lcom/android/systemui/recents/RecentsConfiguration;

    iget v10, v10, Lcom/android/systemui/recents/RecentsConfiguration;->filteringCurrentViewsAnimDuration:I

    return v10
.end method

.method startFilteringAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/model/Task;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/systemui/recents/views/TaskViewTransform;",
            ">;)V"
        }
    .end annotation

    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/HashMap;

    invoke-direct {v8}, Ljava/util/HashMap;-><init>()V

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->getExitTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;Ljava/util/ArrayList;)I

    move-result v18

    invoke-virtual {v9}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_0

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2, v8}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;->getEnterTransformsForFilterAnimation(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/HashMap;)I

    move-result v20

    move/from16 v0, v18

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v18

    :cond_0
    invoke-virtual {v8}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/systemui/recents/views/TaskView;

    invoke-virtual {v8, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/android/systemui/recents/views/TaskViewTransform;

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v13}, Lcom/android/systemui/recents/views/TaskView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v10, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;

    move-object/from16 v11, p0

    move-object v12, v8

    move-object v14, v9

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    invoke-direct/range {v10 .. v17}, Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm$1;-><init>(Lcom/android/systemui/recents/views/TaskStackViewFilterAlgorithm;Ljava/util/HashMap;Lcom/android/systemui/recents/views/TaskView;Ljava/util/ArrayList;ZLjava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v10}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-object/from16 v0, v21

    move/from16 v1, v18

    invoke-virtual {v13, v0, v1}, Lcom/android/systemui/recents/views/TaskView;->updateViewPropertiesToTaskTransform(Lcom/android/systemui/recents/views/TaskViewTransform;I)V

    goto :goto_0

    :cond_1
    return-void
.end method
