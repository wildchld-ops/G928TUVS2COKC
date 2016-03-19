.class public Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;
.super Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;
.source "ToolBarInputModePopupView.java"


# static fields
.field private static final SHANGUI:I = 0x186a0

.field public static final STROKE:I = 0xa


# instance fields
.field mInputManager:Lcom/ime/framework/common/InputManager;

.field mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v0

    iput-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$100(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z

    move-result v0

    return v0
.end method

.method private static adjustTableRowMargins(Landroid/widget/TableRow;)V
    .locals 4

    if-nez p0, :cond_0

    const-string v1, "SamsungIME_UnifiedIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToolBarInputModePopupView: adjustTableRowMargins() row: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TableRow;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout$LayoutParams;

    iget v1, v0, Landroid/widget/TableLayout$LayoutParams;->topMargin:I

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/TableLayout$LayoutParams;->topMargin:I

    sget-boolean v1, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "SamsungIME_UnifiedIME"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToolBarInputModePopupView: adjustTableRowMargins() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/TableLayout$LayoutParams;->leftMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/TableLayout$LayoutParams;->topMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/TableLayout$LayoutParams;->rightMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Landroid/widget/TableLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0, v0}, Landroid/widget/TableRow;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method private buildTable(Landroid/widget/TableLayout;)V
    .locals 17

    if-nez p1, :cond_0

    const-string v14, "SamsungIME_UnifiedIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ToolBarInputModePopupView: buildTable() table: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p1

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v14, :cond_1

    const-string v14, "SamsungIME_UnifiedIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ToolBarInputModePopupView: build() mInputManager: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    :cond_1
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    const v14, 0x7f1000fb

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/TableRow;

    const v14, 0x7f1000fc

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TableRow;

    const v14, 0x7f1000fd

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TableRow;

    const v14, 0x7f1000fe

    move-object/from16 v0, p1

    invoke-virtual {v0, v14}, Landroid/widget/TableLayout;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TableRow;

    if-eqz v10, :cond_2

    if-eqz v7, :cond_2

    if-eqz v9, :cond_2

    if-nez v8, :cond_3

    :cond_2
    const-string v14, "SamsungIME_UnifiedIME"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v16, "ToolBarInputModePopupView: buildView() rowOne: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", rowTwo: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string v16, ", rowThree: "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z

    move-result v14

    if-nez v14, :cond_4

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isSplitMode()Z

    move-result v14

    if-eqz v14, :cond_5

    :cond_4
    invoke-static {v9}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->adjustTableRowMargins(Landroid/widget/TableRow;)V

    invoke-static {v8}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->adjustTableRowMargins(Landroid/widget/TableRow;)V

    :cond_5
    invoke-direct/range {p0 .. p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isTalkBackEnabled()Z

    move-result v5

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isTabletMode()Z

    move-result v4

    if-nez v5, :cond_7

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getInputLanguage()I

    move-result v14

    const v15, 0x7a68434e

    if-ne v14, v15, :cond_7

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputEnabled()Z

    move-result v2

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z

    move-result v14

    if-nez v14, :cond_8

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v14}, Lcom/ime/framework/inputmode/InputModeManager;->isHandwritingInputEnabled()Z

    move-result v14

    if-eqz v14, :cond_8

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/common/Language;->getId()I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_6

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_3
    new-instance v12, Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-direct {v12, v14}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v14

    invoke-virtual {v14}, Lcom/ime/framework/common/Language;->getName()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f09078b

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextSize(F)V

    invoke-virtual/range {p0 .. p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f0b00a5

    invoke-virtual {v14, v15}, Landroid/content/res/Resources;->getColor(I)I

    move-result v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v14

    const-string v15, "SAMSUNGSANS_NUM3L"

    sget-object v16, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface/range {v14 .. v16}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v12, v14}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    invoke-virtual {v10, v12}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v11

    packed-switch v11, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v7, v13}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/List;)V

    const/16 v14, 0x8

    invoke-virtual {v9, v14}, Landroid/widget/TableRow;->setVisibility(I)V

    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/TableRow;->setVisibility(I)V

    goto/16 :goto_0

    :cond_7
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x0

    goto/16 :goto_2

    :sswitch_0
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v14, 0x7a68484b

    if-eq v6, v14, :cond_9

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    if-eqz v3, :cond_a

    const/16 v14, 0x9

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_a
    const/16 v14, 0xa

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v2, :cond_b

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_b
    if-eqz v1, :cond_6

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :sswitch_1
    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-nez v4, :cond_c

    const/4 v14, 0x1

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isNoteModel()Z

    move-result v14

    if-eqz v14, :cond_6

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v14}, Lcom/ime/framework/common/InputManager;->isUseBstHWRPanel()Z

    move-result v14

    if-eqz v14, :cond_6

    if-eqz v2, :cond_d

    const/4 v14, 0x2

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_d
    if-eqz v1, :cond_6

    const/4 v14, 0x4

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :pswitch_1
    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-interface {v13, v14, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/List;)V

    const/4 v14, 0x2

    invoke-interface {v13, v14, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/List;)V

    const/16 v14, 0x8

    invoke-virtual {v8, v14}, Landroid/widget/TableRow;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    const/4 v14, 0x0

    const/4 v15, 0x2

    invoke-interface {v13, v14, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v7, v14}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/List;)V

    const/4 v14, 0x2

    const/4 v15, 0x4

    invoke-interface {v13, v14, v15}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v9, v14}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/List;)V

    const/4 v14, 0x4

    invoke-interface {v13, v14, v11}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v14

    move-object/from16 v0, p0

    invoke-direct {v0, v8, v14}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->buildTableRow(Landroid/widget/TableRow;Ljava/util/List;)V

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x656e0000 -> :sswitch_1
        0x656e4155 -> :sswitch_1
        0x656e4742 -> :sswitch_1
        0x656e5553 -> :sswitch_1
        0x6b6f0000 -> :sswitch_1
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_0
        0x7a685457 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private buildTableRow(Landroid/widget/TableRow;Ljava/util/List;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TableRow;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const/16 v12, 0x9

    const/4 v11, 0x4

    const/4 v10, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    iget-object v9, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v9}, Lcom/ime/framework/common/InputManager;->getCurrentInputLanguage()Lcom/ime/framework/common/Language;

    move-result-object v9

    invoke-virtual {v9}, Lcom/ime/framework/common/Language;->getId()I

    move-result v3

    :cond_0
    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    iget-object v9, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mOnClickListener:Landroid/view/View$OnClickListener;

    if-nez v9, :cond_3

    :cond_1
    const-string v7, "SamsungIME_UnifiedIME"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "ToolBarInputModePopupView: buildTableRow() Null Pointer: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", mOnClickListener: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    :cond_3
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v7, v3, v0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->initButtonView(IILandroid/widget/Button;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v8, v3, v0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->initButtonView(IILandroid/widget/Button;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v12, v3, v0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->initButtonView(IILandroid/widget/Button;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_7

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    const/16 v9, 0xa

    invoke-direct {p0, v9, v3, v0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->initButtonView(IILandroid/widget/Button;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_8

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v11, v3, v0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->initButtonView(IILandroid/widget/Button;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {p2, v9}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_9

    new-instance v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, v10, v3, v0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->initButtonView(IILandroid/widget/Button;)V

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p1, v9}, Landroid/widget/TableRow;->setWeightSum(F)V

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z

    move-result v9

    if-nez v9, :cond_a

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isSplitMode()Z

    move-result v9

    if-eqz v9, :cond_d

    :cond_a
    move v4, v8

    :goto_0
    iget-object v9, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    if-eqz v9, :cond_e

    iget-object v9, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v9}, Lcom/ime/framework/inputmode/InputModeManager;->getInputRange()I

    move-result v9

    if-nez v9, :cond_e

    move v2, v8

    :goto_1
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_b
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    iget-object v7, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1, v5}, Landroid/widget/TableRow;->addView(Landroid/view/View;)V

    if-eqz v2, :cond_c

    invoke-virtual {p0, v5}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isActive(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_c

    invoke-virtual {p0, v5}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->highLight(Landroid/widget/Button;)V

    :cond_c
    if-eqz v4, :cond_b

    invoke-virtual {p0, v5}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->shrink(Landroid/widget/Button;)V

    goto :goto_2

    :cond_d
    move v4, v7

    goto :goto_0

    :cond_e
    move v2, v7

    goto :goto_1
.end method

.method private getKeyboardTypeId()I
    .locals 3

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    if-nez v1, :cond_2

    const/4 v0, 0x0

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isShuangPinMode()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x9

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isPhonePadMode()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isChineseStrokeModeOn()Z

    move-result v1

    if-eqz v1, :cond_3

    const/16 v0, 0xa

    goto :goto_0

    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_5

    const/4 v0, 0x4

    goto :goto_0

    :cond_5
    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_6

    const/4 v0, 0x2

    goto :goto_0

    :cond_6
    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getValidInputMethod()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isFloatingPhonepadKeyboard()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v1}, Lcom/ime/framework/common/InputManager;->isChineseStrokeModeOn()Z

    move-result v1

    if-eqz v1, :cond_7

    const/16 v0, 0xa

    goto :goto_0

    :cond_7
    const/4 v0, 0x1

    goto :goto_0

    :cond_8
    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->getCurrentPreferenceInputMethod()I

    move-result v1

    if-nez v1, :cond_9

    const/4 v0, 0x0

    goto :goto_0

    :cond_9
    iget-object v1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-virtual {v1}, Lcom/ime/framework/inputmode/InputModeManager;->isBstHWRmodeEnable()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x2

    goto :goto_0
.end method

.method private getTable()Landroid/widget/TableLayout;
    .locals 1

    const v0, 0x7f1000fa

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TableLayout;

    return-object v0
.end method

.method private initButtonView(IILandroid/widget/Button;)V
    .locals 10

    invoke-virtual {p3, p1}, Landroid/widget/Button;->setId(I)V

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v8

    iput-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0206f2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {p3, v8}, Landroid/widget/Button;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/4 v6, -0x1

    packed-switch p1, :pswitch_data_0

    :goto_0
    :pswitch_0
    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v8}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v1

    const/4 v8, -0x1

    if-eq v6, v8, :cond_2

    if-eqz v5, :cond_2

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {p3, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0b009e

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v8

    invoke-virtual {p3, v8}, Landroid/widget/Button;->setTextColor(I)V

    const v8, 0x7f0907d1

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0907cd

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    const v8, 0x7f0907cf

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v2, v8

    const v8, 0x7f0907d0

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v3, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isSplitMode()Z

    move-result v8

    if-eqz v8, :cond_1

    :cond_0
    const v8, 0x7f0907d2

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const v8, 0x7f0907ce

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v8, v2

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    float-to-int v2, v8

    int-to-float v8, v3

    const/high16 v9, 0x3f800000    # 1.0f

    mul-float/2addr v8, v9

    float-to-int v3, v8

    :cond_1
    const/4 v8, 0x0

    int-to-float v9, v7

    invoke-virtual {p3, v8, v9}, Landroid/widget/Button;->setTextSize(IF)V

    const-string v8, "ROBOTO_KEYPAD_REGULAR"

    sget-object v9, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    invoke-interface {v1, v8, v9}, Lcom/ime/framework/common/FontManager;->getFont(Ljava/lang/String;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {p3, v8}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    new-instance v4, Landroid/widget/TableRow$LayoutParams;

    invoke-direct {v4}, Landroid/widget/TableRow$LayoutParams;-><init>()V

    const/4 v8, 0x0

    iput v8, v4, Landroid/widget/TableRow$LayoutParams;->width:I

    iput v0, v4, Landroid/widget/TableRow$LayoutParams;->height:I

    const/high16 v8, 0x3f800000    # 1.0f

    iput v8, v4, Landroid/widget/TableRow$LayoutParams;->weight:F

    const/16 v8, 0x11

    iput v8, v4, Landroid/widget/TableRow$LayoutParams;->gravity:I

    iput v2, v4, Landroid/widget/TableRow$LayoutParams;->leftMargin:I

    iput v3, v4, Landroid/widget/TableRow$LayoutParams;->rightMargin:I

    invoke-virtual {p3, v4}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void

    :pswitch_1
    const/4 v8, -0x1

    if-eq p2, v8, :cond_3

    sparse-switch p2, :sswitch_data_0

    const v6, 0x7f0d0014

    goto/16 :goto_0

    :sswitch_0
    const v6, 0x7f0d0323

    goto/16 :goto_0

    :sswitch_1
    const v6, 0x7f0d031f

    goto/16 :goto_0

    :sswitch_2
    const v6, 0x7f0d0324

    goto/16 :goto_0

    :sswitch_3
    const v6, 0x7f0d0322

    goto/16 :goto_0

    :cond_3
    const v6, 0x7f0d0014

    goto/16 :goto_0

    :pswitch_2
    const/4 v8, -0x1

    if-eq p2, v8, :cond_4

    sparse-switch p2, :sswitch_data_1

    const v6, 0x7f0d0326

    goto/16 :goto_0

    :sswitch_4
    const v6, 0x7f0d0329

    goto/16 :goto_0

    :sswitch_5
    const v6, 0x7f0d032a

    goto/16 :goto_0

    :sswitch_6
    const v6, 0x7f0d001a

    goto/16 :goto_0

    :cond_4
    const v6, 0x7f0d0326

    goto/16 :goto_0

    :pswitch_3
    const v6, 0x7f0d0325

    goto/16 :goto_0

    :pswitch_4
    const v6, 0x7f0d0320

    goto/16 :goto_0

    :pswitch_5
    const v6, 0x7f0d031c

    goto/16 :goto_0

    :pswitch_6
    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-static {}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->isSupportHwBoxOnly()Z

    move-result v8

    if-nez v8, :cond_5

    const v6, 0x7f0d031d

    goto/16 :goto_0

    :cond_5
    const v6, 0x7f0d031b

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x6b6f0000 -> :sswitch_3
        0x7a68434e -> :sswitch_0
        0x7a68484b -> :sswitch_1
        0x7a685457 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x6b6f0000 -> :sswitch_6
        0x7a68434e -> :sswitch_4
        0x7a685457 -> :sswitch_5
    .end sparse-switch
.end method

.method private static isSupportHwBoxOnly()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method private isTalkBackEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v0}, Lcom/ime/framework/common/InputManager;->isTalkbackEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public build(Landroid/widget/PopupWindow;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
    .locals 3

    invoke-super {p0, p1, p2}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->build(Landroid/widget/PopupWindow;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v0, :cond_0

    const-string v0, "SamsungIME_UnifiedIME"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ToolBarInputModePopupView: build() mInputModeSwitcher: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance v0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;

    invoke-direct {v0, p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView$1;-><init>(Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;)V

    iput-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getTable()Landroid/widget/TableLayout;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->buildTable(Landroid/widget/TableLayout;)V

    goto :goto_0
.end method

.method protected getVisibleContentView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getTable()Landroid/widget/TableLayout;

    move-result-object v0

    return-object v0
.end method

.method public highLight(Landroid/widget/Button;)V
    .locals 5

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz v1, :cond_0

    const v2, 0x7f0b009f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    sget-boolean v2, Lcom/ime/framework/util/Debug;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "SamsungIME_UnifiedIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToolBarInputModePopupView: highLight() "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method protected isActive(Landroid/view/View;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    if-nez v2, :cond_1

    :cond_0
    const-string v2, "SamsungIME_UnifiedIME"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToolBarInputModePopupView: isActive() view: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", mInputModeSwitcher: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    return v1

    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    invoke-direct {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getKeyboardTypeId()I

    move-result v3

    if-ne v2, v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    move v1, v0

    goto :goto_0
.end method

.method public shrink(Landroid/widget/Button;)V
    .locals 4

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarInputModePopupView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-eqz v0, :cond_0

    const v2, 0x7f0907d2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/widget/Button;->setTextSize(IF)V

    :cond_0
    return-void
.end method
