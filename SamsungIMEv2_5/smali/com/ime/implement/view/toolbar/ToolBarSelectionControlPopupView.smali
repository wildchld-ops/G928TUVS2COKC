.class public Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;
.super Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;
.source "ToolBarSelectionControlPopupView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;
    }
.end annotation


# instance fields
.field private CopyButton:Landroid/widget/Button;

.field private CutButton:Landroid/widget/Button;

.field private DeleteButton:Landroid/widget/Button;

.field private DownButton:Landroid/widget/ImageButton;

.field private FrontButton:Landroid/widget/ImageButton;

.field private LastButton:Landroid/widget/ImageButton;

.field private LeftButton:Landroid/widget/ImageButton;

.field private PasteButton:Landroid/widget/Button;

.field private RightButton:Landroid/widget/ImageButton;

.field private SelectAllButton:Landroid/widget/Button;

.field private SelectButton:Landroid/widget/ToggleButton;

.field private UpButton:Landroid/widget/ImageButton;

.field private controlPopup:Landroid/widget/RelativeLayout;

.field private controlPopupArrow:Landroid/widget/RelativeLayout;

.field private deleteAction:Z

.field private isSelectingState:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mContext:Landroid/content/Context;

.field protected mFontManager:Lcom/ime/framework/common/FontManager;

.field private mInputManager:Lcom/ime/framework/common/InputManager;

.field private mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field private mText:Landroid/view/inputmethod/ExtractedText;

.field private mType:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

.field private str:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mText:Landroid/view/inputmethod/ExtractedText;

    iput-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->str:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isSelectingState:Z

    iput-boolean v1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->deleteAction:Z

    iput-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mFontManager:Lcom/ime/framework/common/FontManager;

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isSelectingState:Z

    return v0
.end method

.method static synthetic access$002(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isSelectingState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IIZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->sendEvent(IIZ)V

    return-void
.end method

.method static synthetic access$200(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V
    .locals 0

    invoke-direct {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->resetSelectButton()V

    return-void
.end method

.method static synthetic access$300(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Lcom/ime/framework/common/InputManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/ToggleButton;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$502(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;

    return-object p1
.end method

.method static synthetic access$600(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Lcom/ime/framework/inputmode/InputModeManager;
    .locals 1

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->deleteAction:Z

    return v0
.end method

.method static synthetic access$702(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->deleteAction:Z

    return p1
.end method

.method private getTable()Landroid/widget/RelativeLayout;
    .locals 1

    const v0, 0x7f100102

    invoke-virtual {p0, v0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method private resetSelectButton()V
    .locals 3

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isSelectingState:Z

    const/16 v0, 0x3b

    const/16 v1, 0x41

    invoke-direct {p0, v0, v1, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->sendEvent(IIZ)V

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setSoundEffectsEnabled(Z)V

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0}, Landroid/widget/ToggleButton;->performClick()Z

    :cond_0
    return-void
.end method

.method private sendEvent(IIZ)V
    .locals 30

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v6}, Lcom/ime/framework/common/InputManager;->getCurrentInputConnection()Landroid/view/inputmethod/InputConnection;

    move-result-object v27

    const/16 v6, 0x3b

    move/from16 v0, p1

    if-eq v0, v6, :cond_7

    if-nez p2, :cond_7

    const/16 v28, 0x0

    const/4 v2, 0x0

    const/16 v29, 0x0

    if-eqz v27, :cond_0

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v6, v8}, Landroid/view/inputmethod/InputConnection;->getTextAfterCursor(II)Ljava/lang/CharSequence;

    move-result-object v28

    const/4 v6, 0x1

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v6, v8}, Landroid/view/inputmethod/InputConnection;->getTextBeforeCursor(II)Ljava/lang/CharSequence;

    move-result-object v2

    :try_start_0
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v6, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v26

    if-eqz v26, :cond_0

    move-object/from16 v0, v26

    iget-object v0, v0, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    move-object/from16 v29, v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    if-eqz v28, :cond_4

    if-eqz v2, :cond_4

    if-eqz v29, :cond_4

    if-nez p3, :cond_4

    invoke-interface/range {v28 .. v28}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_1

    const/16 v6, 0x16

    move/from16 v0, p1

    if-eq v0, v6, :cond_2

    :cond_1
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_4

    const/16 v6, 0x15

    move/from16 v0, p1

    if-ne v0, v6, :cond_4

    :cond_2
    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v6, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v6

    if-eqz v6, :cond_3

    new-instance v6, Landroid/view/inputmethod/ExtractedTextRequest;

    invoke-direct {v6}, Landroid/view/inputmethod/ExtractedTextRequest;-><init>()V

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v6, v8}, Landroid/view/inputmethod/InputConnection;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;

    move-result-object v6

    iget-object v6, v6, Landroid/view/inputmethod/ExtractedText;->text:Ljava/lang/CharSequence;

    const/4 v8, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v8}, Landroid/view/inputmethod/InputConnection;->getSelectedText(I)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    :cond_3
    :goto_1
    return-void

    :catch_0
    move-exception v25

    const-string v6, "SamsungIME_UnifiedIME"

    const-string v8, "ToolBarSelectionControlPopupView: NullPointerException in onDownKeyEvent"

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    if-eqz p3, :cond_6

    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    const/16 v9, 0x3b

    const/4 v10, 0x0

    const/16 v11, 0x41

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x8

    move-wide v6, v4

    invoke-direct/range {v3 .. v14}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    if-eqz v27, :cond_5

    move-object/from16 v0, v27

    invoke-interface {v0, v3}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    :cond_5
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    move-wide v8, v4

    move-wide v10, v4

    move/from16 v13, p1

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    :goto_2
    const/16 v6, 0x102

    invoke-virtual {v7, v6}, Landroid/view/KeyEvent;->setSource(I)V

    new-instance v9, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const/4 v14, 0x1

    const/16 v16, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x6

    move-wide v12, v4

    move/from16 v15, p1

    move/from16 v17, p2

    invoke-direct/range {v9 .. v20}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    const/16 v6, 0x102

    invoke-virtual {v9, v6}, Landroid/view/KeyEvent;->setSource(I)V

    if-eqz v27, :cond_3

    move-object/from16 v0, v27

    invoke-interface {v0, v7}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-object/from16 v0, v27

    invoke-interface {v0, v9}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    if-eqz p3, :cond_3

    new-instance v11, Landroid/view/KeyEvent;

    const/16 v16, 0x1

    const/16 v17, 0x3b

    const/16 v18, 0x0

    const/16 v19, 0x41

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x8

    move-wide v12, v4

    move-wide v14, v4

    invoke-direct/range {v11 .. v22}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v11}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto :goto_1

    :cond_6
    new-instance v7, Landroid/view/KeyEvent;

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x6

    move-wide v8, v4

    move-wide v10, v4

    move/from16 v13, p1

    move/from16 v15, p2

    invoke-direct/range {v7 .. v18}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    goto :goto_2

    :cond_7
    const/16 v6, 0x1000

    move/from16 v0, p2

    if-ne v0, v6, :cond_8

    if-eqz v27, :cond_3

    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v19, p1

    move/from16 v21, p2

    invoke-direct/range {v13 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v19, p1

    move/from16 v21, p2

    invoke-direct/range {v13 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_1

    :cond_8
    if-eqz v27, :cond_3

    const/4 v6, 0x1

    move/from16 v0, p3

    if-ne v0, v6, :cond_9

    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x0

    const/16 v19, 0x3b

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v21, p2

    invoke-direct/range {v13 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_1

    :cond_9
    new-instance v13, Landroid/view/KeyEvent;

    const/16 v18, 0x1

    const/16 v19, 0x3b

    const/16 v20, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x6

    move-wide v14, v4

    move-wide/from16 v16, v4

    move/from16 v21, p2

    invoke-direct/range {v13 .. v24}, Landroid/view/KeyEvent;-><init>(JJIIIIIII)V

    move-object/from16 v0, v27

    invoke-interface {v0, v13}, Landroid/view/inputmethod/InputConnection;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    goto/16 :goto_1
.end method


# virtual methods
.method public build(Landroid/widget/PopupWindow;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V
    .locals 7

    const/16 v6, 0x1f4

    const/16 v5, 0x32

    invoke-super {p0, p1, p2}, Lcom/ime/framework/view/toolbar/AbstractToolbarPopupView;->build(Landroid/widget/PopupWindow;Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;)V

    iput-object p1, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mPopupWindow:Landroid/widget/PopupWindow;

    iput-object p2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mType:Lcom/ime/framework/view/toolbar/ToolBarView$ContentViewType;

    invoke-static {}, Lcom/ime/framework/common/InputManagerImpl;->getInstance()Lcom/ime/framework/common/InputManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getInputModeManager()Lcom/ime/framework/inputmode/InputModeManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputModeManager:Lcom/ime/framework/inputmode/InputModeManager;

    invoke-static {}, Lcom/ime/framework/common/FontManagerImpl;->getInstance()Lcom/ime/framework/common/FontManager;

    move-result-object v2

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mFontManager:Lcom/ime/framework/common/FontManager;

    const v2, 0x7f100102

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopup:Landroid/widget/RelativeLayout;

    const v2, 0x7f100103

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mInputManager:Lcom/ime/framework/common/InputManager;

    invoke-interface {v2}, Lcom/ime/framework/common/InputManager;->getService()Lcom/ime/framework/common/AbstractInputMethod;

    move-result-object v2

    const-string v3, "clipboardEx"

    invoke-virtual {v2, v3}, Lcom/ime/framework/common/AbstractInputMethod;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/sec/clipboard/ClipboardExManager;

    new-instance v1, Landroid/sec/clipboard/data/list/ClipboardDataText;

    invoke-direct {v1}, Landroid/sec/clipboard/data/list/ClipboardDataText;-><init>()V

    const v2, 0x7f100104

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->UpButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->UpButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;

    new-instance v4, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$1;

    invoke-direct {v4, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$1;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-direct {v3, p0, v6, v5, v4}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f100107

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->DownButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->DownButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;

    new-instance v4, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$2;

    invoke-direct {v4, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$2;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-direct {v3, p0, v6, v5, v4}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f100105

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->LeftButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->LeftButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;

    new-instance v4, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$3;

    invoke-direct {v4, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$3;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-direct {v3, p0, v6, v5, v4}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f100106

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->RightButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->RightButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;

    new-instance v4, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$4;

    invoke-direct {v4, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$4;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-direct {v3, p0, v6, v5, v4}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v2, 0x7f100108

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->FrontButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->FrontButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$5;

    invoke-direct {v3, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$5;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f100109

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->LastButton:Landroid/widget/ImageButton;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->LastButton:Landroid/widget/ImageButton;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$6;

    invoke-direct {v3, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$6;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10010a

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectAllButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectAllButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mFontManager:Lcom/ime/framework/common/FontManager;

    invoke-interface {v3}, Lcom/ime/framework/common/FontManager;->getControlPopupFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectAllButton:Landroid/widget/Button;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$7;

    invoke-direct {v3, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$7;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10010b

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ToggleButton;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;

    iget-object v3, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mFontManager:Lcom/ime/framework/common/FontManager;

    invoke-interface {v3}, Lcom/ime/framework/common/FontManager;->getControlPopupFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;

    invoke-direct {v3, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$8;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-virtual {v2, v3}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10010c

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CutButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CutButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mFontManager:Lcom/ime/framework/common/FontManager;

    invoke-interface {v3}, Lcom/ime/framework/common/FontManager;->getControlPopupFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CutButton:Landroid/widget/Button;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$9;

    invoke-direct {v3, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$9;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10010d

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CopyButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CopyButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mFontManager:Lcom/ime/framework/common/FontManager;

    invoke-interface {v3}, Lcom/ime/framework/common/FontManager;->getControlPopupFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CopyButton:Landroid/widget/Button;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$10;

    invoke-direct {v3, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$10;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10010e

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->PasteButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->PasteButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mFontManager:Lcom/ime/framework/common/FontManager;

    invoke-interface {v3}, Lcom/ime/framework/common/FontManager;->getControlPopupFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->PasteButton:Landroid/widget/Button;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$11;

    invoke-direct {v3, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$11;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f10010f

    invoke-virtual {p0, v2}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->DeleteButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->DeleteButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mFontManager:Lcom/ime/framework/common/FontManager;

    invoke-interface {v3}, Lcom/ime/framework/common/FontManager;->getControlPopupFont()Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->DeleteButton:Landroid/widget/Button;

    new-instance v3, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;

    new-instance v4, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$12;

    invoke-direct {v4, p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$12;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;)V

    invoke-direct {v3, p0, v6, v5, v4}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView$RepeatListener;-><init>(Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;IILandroid/view/View$OnClickListener;)V

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->resetSelectButton()V

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->updateArrowSize()V

    return-void
.end method

.method protected getVisibleContentView()Landroid/view/View;
    .locals 1

    invoke-direct {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getTable()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method protected isActive(Landroid/view/View;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public playSound()V
    .locals 3

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    iget-object v0, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->playSoundEffect(IF)V

    return-void
.end method

.method protected updateArrowButtonSize()V
    .locals 13

    const/4 v12, 0x0

    iget-object v10, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->UpButton:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v10, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->LeftButton:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v10, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->RightButton:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v10, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->DownButton:Landroid/widget/ImageButton;

    invoke-virtual {v10}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0907a0

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0907a6

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v9, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0907a4

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v8, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0907a2

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0907a3

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f0907a1

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isFloating()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090853

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v4, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090858

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v9, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090857

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v8, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090855

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v6, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090856

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v7, v10

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090854

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    float-to-int v5, v10

    :cond_0
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v9, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v3, v12, v8, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v9, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v1, v6, v12, v12, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v9, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v2, v12, v12, v7, v12}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v9, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v12, v12, v12, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v10, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->UpButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, v3}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->LeftButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, v1}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->RightButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, v2}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v10, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->DownButton:Landroid/widget/ImageButton;

    invoke-virtual {v10, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateArrowSize()V
    .locals 8

    const/4 v7, 0x0

    iget-object v5, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v5}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907a7

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907af

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907ac

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907aa

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isFloating()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907b0

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09085a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090859

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    :cond_0
    :goto_0
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v2, v3, v7, v7}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v5, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopupArrow:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isHandwriteFSMode()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907a9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v1, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907b1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v4, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907ad

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v3, v5

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0907ab

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v5

    float-to-int v2, v5

    goto :goto_0
.end method

.method protected updateControlPopupSize()V
    .locals 4

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0907bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isFloating()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09085e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :cond_0
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v0, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->controlPopup:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected updateOtherButtonSize()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CutButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CopyButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->PasteButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->DeleteButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907bf

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907c2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907c0

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907c1

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090860

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090863

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090862

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090861

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    :cond_0
    iput v4, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v7, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v1, v10, v10, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v7, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v0, v5, v10, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v3, v5, v10, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v2, v5, v10, v10, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CutButton:Landroid/widget/Button;

    invoke-virtual {v8, v1}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CutButton:Landroid/widget/Button;

    invoke-virtual {v8, v6, v10, v10, v10}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CopyButton:Landroid/widget/Button;

    invoke-virtual {v8, v0}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->CopyButton:Landroid/widget/Button;

    invoke-virtual {v8, v6, v10, v10, v10}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->PasteButton:Landroid/widget/Button;

    invoke-virtual {v8, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->PasteButton:Landroid/widget/Button;

    invoke-virtual {v8, v6, v10, v10, v10}, Landroid/widget/Button;->setPadding(IIII)V

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->DeleteButton:Landroid/widget/Button;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->DeleteButton:Landroid/widget/Button;

    invoke-virtual {v8, v6, v10, v10, v10}, Landroid/widget/Button;->setPadding(IIII)V

    return-void
.end method

.method protected updateSelectButtonSize()V
    .locals 11

    const/4 v10, 0x0

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8}, Landroid/widget/ToggleButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectAllButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907c3

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907c6

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907c5

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907c4

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907c8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0907c7

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->isFloating()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090864

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v4, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090867

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v7, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090866

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v6, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090865

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v5, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090869

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v1, v8

    invoke-virtual {p0}, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090868

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    float-to-int v0, v8

    :cond_0
    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v7, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v3, v10, v6, v5, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iput v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    iput v7, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    invoke-virtual {v2, v10, v1, v0, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8, v3}, Landroid/widget/ToggleButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v8, p0, Lcom/ime/implement/view/toolbar/ToolBarSelectionControlPopupView;->SelectAllButton:Landroid/widget/Button;

    invoke-virtual {v8, v2}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
