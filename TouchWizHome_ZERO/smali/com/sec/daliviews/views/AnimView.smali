.class public Lcom/sec/daliviews/views/AnimView;
.super Lcom/sec/daliviews/views/ItemView;
.source "AnimView.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/sec/daliviews/views/ItemView;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 27

    invoke-direct/range {p0 .. p2}, Lcom/sec/daliviews/views/ItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    sget-object v3, Lcom/sec/daliviews/R$styleable;->AnimView:[I

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v16

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_animType:I

    const/4 v4, 0x0

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_page_anim_duration:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_page_anim_displacement:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v8

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_page_anim_src:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/views/AnimView;->getPeer()J

    move-result-wide v4

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/sec/daliviews/views/AnimView;->setPageAnim(JLjava/lang/String;FF)V

    goto :goto_0

    :pswitch_1
    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_folder_anim_duration:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_folder_anim_first_stage_interval:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_folder_anim_rotation_angle:I

    const/high16 v4, 0x42340000    # 45.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_folder_anim_src:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/views/AnimView;->getPeer()J

    move-result-wide v10

    move-object/from16 v9, p0

    move-object v12, v6

    move v13, v7

    invoke-direct/range {v9 .. v15}, Lcom/sec/daliviews/views/AnimView;->setFolderAnim(JLjava/lang/String;FFF)V

    goto :goto_0

    :pswitch_2
    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_trash_anim_duration:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v7

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_trash_anim_scale:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v23

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_trash_anim_wiggle_number:I

    const/4 v4, 0x5

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v24

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_trash_anim_wiggle_angle:I

    const/high16 v4, 0x40a00000    # 5.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v14

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_trash_anim_scale_stage_interval:I

    const/high16 v4, 0x3f800000    # 1.0f

    move-object/from16 v0, v16

    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v15

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_trash_anim_lid_src:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v21

    sget v3, Lcom/sec/daliviews/R$styleable;->AnimView_trash_anim_can_src:I

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/sec/daliviews/views/AnimView;->getPeer()J

    move-result-wide v18

    move-object/from16 v17, p0

    move/from16 v22, v7

    move/from16 v25, v14

    move/from16 v26, v15

    invoke-direct/range {v17 .. v26}, Lcom/sec/daliviews/views/AnimView;->setTrashAnim(JLjava/lang/String;Ljava/lang/String;FFIFF)V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private native play(J)V
.end method

.method private native revert(J)V
.end method

.method private native setFolderAnim(JLjava/lang/String;FFF)V
.end method

.method private native setPageAnim(JLjava/lang/String;FF)V
.end method

.method private native setTrashAnim(JLjava/lang/String;Ljava/lang/String;FFIFF)V
.end method


# virtual methods
.method public clone()Lcom/sec/daliviews/views/NativeViewBase;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-super {p0}, Lcom/sec/daliviews/views/ItemView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    check-cast v0, Lcom/sec/daliviews/views/AnimView;

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AnimView;->clone()Lcom/sec/daliviews/views/NativeViewBase;

    move-result-object v0

    return-object v0
.end method

.method protected native create()J
.end method

.method public isCloneable()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public play()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AnimView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/AnimView;->play(J)V

    return-void
.end method

.method public revert()V
    .locals 2

    invoke-virtual {p0}, Lcom/sec/daliviews/views/AnimView;->getPeer()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/sec/daliviews/views/AnimView;->revert(J)V

    return-void
.end method
