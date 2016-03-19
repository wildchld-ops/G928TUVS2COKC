.class Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;
.super Ljava/lang/Object;
.source "AbstractEmoticonLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->updateInitialBitmapByThread(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

.field final synthetic val$isFullUpdate:Z

.field final synthetic val$needReset:Z


# direct methods
.method constructor <init>(Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;ZZ)V
    .locals 0

    iput-object p1, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    iput-boolean p2, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->val$isFullUpdate:Z

    iput-boolean p3, p0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->val$needReset:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 23

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Lcom/ime/framework/common/InputManager;->getContext()Landroid/content/Context;

    move-result-object v19

    if-nez v19, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/ime/framework/emoticon/EmoticonManager;->getInstance()Lcom/ime/framework/emoticon/EmoticonManager;

    move-result-object v10

    if-eqz v10, :cond_0

    new-instance v18, Landroid/graphics/Paint;

    invoke-direct/range {v18 .. v18}, Landroid/graphics/Paint;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonFontSize()F

    move-result v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextSize(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonTypeface()Landroid/graphics/Typeface;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    const/high16 v19, -0x1000000

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v19, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual/range {v18 .. v19}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonWidth()I

    move-result v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->this$0:Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->getEmoticonHeight()I

    move-result v14

    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    const/4 v6, 0x0

    const/4 v11, 0x0

    const/16 v17, 0x5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->val$isFullUpdate:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->val$needReset:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    const/16 v17, 0x0

    :cond_2
    const/4 v6, 0x0

    :goto_1
    move/from16 v0, v17

    if-gt v6, v0, :cond_9

    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    if-nez v6, :cond_4

    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mLastestEmoticon:Ljava/util/ArrayList;
    invoke-static {}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$100()Ljava/util/ArrayList;

    move-result-object v11

    :goto_2
    const/4 v12, 0x0

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v16

    :goto_3
    move/from16 v0, v16

    if-ge v12, v0, :cond_5

    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v19

    const/16 v20, 0x30

    move/from16 v0, v19

    move/from16 v1, v20

    if-ge v0, v1, :cond_5

    if-eqz v13, :cond_3

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v19

    move/from16 v0, v19

    if-ge v12, v0, :cond_3

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    move-result v21

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v19

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v20

    sget-object v21, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static/range {v19 .. v21}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    new-instance v5, Landroid/graphics/Canvas;

    invoke-direct {v5, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-interface {v9}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v20

    div-int/lit8 v20, v20, 0x2

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v20, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v21

    div-int/lit8 v21, v21, 0x2

    move/from16 v0, v21

    int-to-float v0, v0

    move/from16 v21, v0

    invoke-virtual {v8}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v22

    sub-float v21, v21, v22

    move-object/from16 v0, v19

    move/from16 v1, v20

    move/from16 v2, v21

    move-object/from16 v3, v18

    invoke-virtual {v5, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    :cond_4
    invoke-virtual {v10, v6}, Lcom/ime/framework/emoticon/EmoticonManager;->getEmoticonMapByCategory(I)Ljava/util/ArrayList;

    move-result-object v11

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->val$isFullUpdate:Z

    move/from16 v19, v0

    if-nez v19, :cond_6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout$5;->val$needReset:Z

    move/from16 v19, v0

    if-eqz v19, :cond_8

    :cond_6
    :try_start_0
    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;
    invoke-static {}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$200()Ljava/util/ArrayList;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_1

    :catch_0
    move-exception v7

    const-string v19, "SamsungIME"

    const-string v20, "try to add mInitialListViewCache in wrong category"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_8
    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;
    invoke-static {}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$200()Ljava/util/ArrayList;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_7

    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;
    invoke-static {}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$200()Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    # getter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mInitialBitmapCache:Ljava/util/ArrayList;
    invoke-static {}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$200()Ljava/util/ArrayList;

    move-result-object v19

    const/16 v20, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_4

    :cond_9
    const/16 v19, 0x0

    # setter for: Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->mNeedInitialization:Z
    invoke-static/range {v19 .. v19}, Lcom/ime/framework/view/emoticon/AbstractEmoticonLayout;->access$302(Z)Z

    goto/16 :goto_0
.end method
