.class public Lcom/android/incallui/SecAnimationUtils$Move;
.super Ljava/lang/Object;
.source "SecAnimationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SecAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Move"
.end annotation


# direct methods
.method public static checkAndMove(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 28

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const-string v24, "checkAndMove: no move: at least one view is null"

    # invokes: Lcom/android/incallui/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/SecAnimationUtils;->access$000(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v24

    if-eqz v24, :cond_2

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getX()F

    move-result v22

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getY()F

    move-result v23

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v19

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v25

    mul-float v16, v24, v25

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v25

    mul-float v4, v24, v25

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v25

    mul-float v17, v24, v25

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v25

    mul-float v5, v24, v25

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v8, v17, v24

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    div-float v9, v16, v24

    const/16 v24, 0x0

    cmpl-float v24, v16, v24

    if-eqz v24, :cond_3

    const/16 v24, 0x0

    cmpl-float v24, v17, v24

    if-eqz v24, :cond_3

    const/16 v24, 0x0

    cmpl-float v24, v4, v24

    if-eqz v24, :cond_3

    const/16 v24, 0x0

    cmpl-float v24, v5, v24

    if-nez v24, :cond_4

    :cond_3
    const-string v24, "checkAndMove: no move: view\'s width or height is zero"

    # invokes: Lcom/android/incallui/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/SecAnimationUtils;->access$000(Ljava/lang/String;)V

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "checkAndMove: startW: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", startH: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", endW: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ", endH: "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    # invokes: Lcom/android/incallui/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/SecAnimationUtils;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/4 v15, 0x0

    if-nez p3, :cond_5

    const-string v24, "checkAndMove: move immediately: duration is zero"

    # invokes: Lcom/android/incallui/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/SecAnimationUtils;->access$000(Ljava/lang/String;)V

    const/4 v15, 0x1

    :cond_5
    cmpl-float v24, v22, v6

    if-nez v24, :cond_6

    cmpl-float v24, v23, v7

    if-nez v24, :cond_6

    cmpl-float v24, v21, v5

    if-nez v24, :cond_6

    cmpl-float v24, v20, v4

    if-nez v24, :cond_6

    const-string v24, "checkAndMove: move immediately: it is same location"

    # invokes: Lcom/android/incallui/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/SecAnimationUtils;->access$000(Ljava/lang/String;)V

    const/4 v15, 0x1

    :cond_6
    cmpl-float v24, v18, v6

    if-nez v24, :cond_7

    cmpl-float v24, v19, v7

    if-nez v24, :cond_7

    cmpl-float v24, v17, v5

    if-nez v24, :cond_7

    cmpl-float v24, v16, v4

    if-nez v24, :cond_7

    const-string v24, "checkAndMove: move immediately: maybe start view == end view"

    # invokes: Lcom/android/incallui/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v24 .. v24}, Lcom/android/incallui/SecAnimationUtils;->access$000(Ljava/lang/String;)V

    const/4 v15, 0x1

    :cond_7
    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    if-eqz v15, :cond_8

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/view/View;->setX(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/view/View;->setY(F)V

    div-float v24, v5, v17

    mul-float v24, v24, v8

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleX(F)V

    div-float v24, v4, v16

    mul-float v24, v24, v9

    move-object/from16 v0, p0

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->requestLayout()V

    goto/16 :goto_0

    :cond_8
    const-string v24, "y"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v19, v25, v26

    const/16 v26, 0x1

    aput v7, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v24, "x"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v18, v25, v26

    const/16 v26, 0x1

    aput v6, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v24, "scaleX"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v8, v25, v26

    const/16 v26, 0x1

    div-float v27, v5, v17

    mul-float v27, v27, v8

    aput v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v24, "scaleY"

    const/16 v25, 0x2

    move/from16 v0, v25

    new-array v0, v0, [F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput v9, v25, v26

    const/16 v26, 0x1

    div-float v27, v4, v16

    mul-float v27, v27, v9

    aput v27, v25, v26

    move-object/from16 v0, p0

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v24, v0

    move-wide/from16 v0, v24

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v24, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v24 .. v24}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v24

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public static move(Landroid/view/View;Landroid/view/View;Landroid/view/View;I)V
    .locals 23

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    :cond_0
    const-string v19, "Move: no move: at least one view is null"

    # invokes: Lcom/android/incallui/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/SecAnimationUtils;->access$000(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getVisibility()I

    move-result v19

    if-nez v19, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getX()F

    move-result v17

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getX()F

    move-result v6

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getY()F

    move-result v18

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getY()F

    move-result v7

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleY()F

    move-result v20

    mul-float v15, v19, v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleY()F

    move-result v20

    mul-float v4, v19, v20

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getScaleX()F

    move-result v20

    mul-float v16, v19, v20

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getScaleX()F

    move-result v20

    mul-float v5, v19, v20

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v8, v16, v19

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v19

    move/from16 v0, v19

    int-to-float v0, v0

    move/from16 v19, v0

    div-float v9, v15, v19

    const/16 v19, 0x0

    cmpl-float v19, v15, v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    cmpl-float v19, v16, v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    cmpl-float v19, v4, v19

    if-eqz v19, :cond_3

    const/16 v19, 0x0

    cmpl-float v19, v5, v19

    if-nez v19, :cond_4

    :cond_3
    const-string v19, "Move: no move: view\'s width or height is zero "

    # invokes: Lcom/android/incallui/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/SecAnimationUtils;->access$000(Ljava/lang/String;)V

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Move: startW: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", startH: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", endW: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ", endH: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    # invokes: Lcom/android/incallui/SecAnimationUtils;->log(Ljava/lang/String;)V
    invoke-static/range {v19 .. v19}, Lcom/android/incallui/SecAnimationUtils;->access$000(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_4
    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotX(F)V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/view/View;->setPivotY(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/view/View;->setScaleX(F)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/view/View;->setScaleY(F)V

    const-string v19, "y"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v18, v20, v21

    const/16 v21, 0x1

    aput v7, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v14

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v14, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v14, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v19, "x"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v17, v20, v21

    const/16 v21, 0x1

    aput v6, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v13

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v13, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v13, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v19, "scaleX"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v8, v20, v21

    const/16 v21, 0x1

    div-float v22, v5, v16

    mul-float v22, v22, v8

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v12, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v12, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-string v19, "scaleY"

    const/16 v20, 0x2

    move/from16 v0, v20

    new-array v0, v0, [F

    move-object/from16 v20, v0

    const/16 v21, 0x0

    aput v9, v20, v21

    const/16 v21, 0x1

    div-float v22, v4, v15

    mul-float v22, v22, v9

    aput v22, v20, v21

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v11

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    invoke-virtual {v11, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v19, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct/range {v19 .. v19}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    move-object/from16 v0, v19

    invoke-virtual {v11, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v10, Landroid/animation/AnimatorSet;

    invoke-direct {v10}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v10, v14}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v10}, Landroid/animation/AnimatorSet;->start()V

    goto/16 :goto_0
.end method

.method public static moveDownToHide(Landroid/view/View;Z)V
    .locals 8

    const-wide/16 v6, 0xfa

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v2, 0x0

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v5, v5, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v3, v5}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    new-instance v3, Lcom/android/incallui/SecAnimationUtils$Move$1;

    invoke-direct {v3, p0}, Lcom/android/incallui/SecAnimationUtils$Move$1;-><init>(Landroid/view/View;)V

    invoke-virtual {v1, v3}, Landroid/view/animation/AnimationSet;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static moveUpToShow(Landroid/view/View;Z)V
    .locals 8

    const-wide/16 v6, 0xfa

    const/4 v5, 0x0

    const/4 v4, 0x1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v4}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    new-instance v2, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-direct {v2, v5, v5, v3, v5}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    invoke-virtual {v2, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v2, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    if-eqz p1, :cond_1

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-direct {v0, v5, v3}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    invoke-virtual {v0, v6, v7}, Landroid/view/animation/Animation;->setDuration(J)V

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v4}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    invoke-virtual {p0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
