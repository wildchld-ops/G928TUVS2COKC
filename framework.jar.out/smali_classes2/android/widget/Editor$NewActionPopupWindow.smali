.class Landroid/widget/Editor$NewActionPopupWindow;
.super Ljava/lang/Object;
.source "Editor.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/Editor$TextViewPositionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NewActionPopupWindow"
.end annotation


# static fields
.field private static final CLIPBOARD:I = 0x4

.field private static final COPY:I = 0x2

.field private static final CUT:I = 0x1

.field private static final DICTIONARY:I = 0x6

.field private static final PASTE:I = 0x3

.field private static final SELECTALL:I = 0x0

.field private static final SHARE:I = 0x5

.field private static final TRANSLATE:I = 0x8

.field private static final TW_POPUP_TEXT_LAYOUT:I = 0x109013b

.field private static final WEBSEARCH:I = 0x7


# instance fields
.field private MAX_ITEMS_LANDSCAPE_PHONE:I

.field private MAX_ITEMS_LANDSCAPE_TABLET:I

.field private MAX_ITEMS_PORTRAIT_PHONE:I

.field private MAX_ITEMS_PORTRAIT_TABLET:I

.field private final TOTAL_ITEMS:I

.field private mActionBarHeight:I

.field private mContentView:Landroid/view/ViewGroup;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerWidth:I

.field private mExtraItemWidth:I

.field private mHandlerHeight:I

.field private mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

.field mIconDrawables:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field private mIsTablet:Z

.field private mItemWidth:I

.field private mMaxShowingMenuCount:I

.field mMenuEnables:[Z

.field private mMenuItemCount:I

.field mMenuTextViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupBgPaddingHeight:I

.field private mPopupBgPaddingWidth:I

.field private mPopupHeight:I

.field private mPopupMaxWidth:I

.field private mPopupWidth:I

.field private mPopupWindow:Landroid/widget/PopupWindow;

.field mPositionX:I

.field mPositionY:I

.field private mStatusbarHeight:I

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 2

    const/16 v1, 0x9

    iput-object p1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->TOTAL_ITEMS:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIsTablet:Z

    new-array v0, v1, [Z

    fill-array-data v0, :array_0

    iput-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    # invokes: Landroid/widget/Editor;->isTablet()Z
    invoke-static {p1}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;)Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIsTablet:Z

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->createPopupWindow()V

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->initContentView()V

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->setHeight()V

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void

    nop

    :array_0
    .array-data 1
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method private calculatePopupWindowWidth()V
    .locals 4

    const/4 v0, 0x0

    const/4 v2, 0x0

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    const/4 v1, 0x0

    :goto_0
    const/16 v2, 0x9

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    aget-boolean v2, v2, v1

    if-eqz v2, :cond_2

    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    add-int/lit8 v0, v0, 0x1

    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->getPopupWidthLimit()I

    move-result v3

    if-le v2, v3, :cond_1

    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    add-int/lit8 v0, v0, -0x1

    :cond_0
    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuItemCount:I

    if-ge v0, v2, :cond_3

    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mExtraItemWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    :goto_1
    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    return-void

    :cond_1
    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->getMenuLimit()I

    move-result v2

    if-ge v0, v2, :cond_0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    goto :goto_1
.end method

.method private computeLocalPosition()V
    .locals 2

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->measureContent()V

    const/4 v1, 0x2

    new-array v0, v1, [I

    invoke-direct {p0, v0}, Landroid/widget/Editor$NewActionPopupWindow;->getNewActionPopupPosition([I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPositionX:I

    const/4 v1, 0x1

    aget v1, v0, v1

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPositionY:I

    return-void
.end method

.method private createPopupWindow()V
    .locals 6

    const/4 v5, 0x0

    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10809ac

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    iget v2, v1, Landroid/graphics/Rect;->top:I

    iget v3, v1, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v2, v3

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingHeight:I

    const/4 v1, 0x0

    :goto_0
    new-instance v2, Landroid/widget/PopupWindow;

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v5}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v2, v0}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    :cond_0
    iput v5, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingWidth:I

    goto :goto_0
.end method

.method private getMenuLimit()I
    .locals 2

    const/4 v0, 0x1

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    if-ne v1, v0, :cond_0

    :goto_0
    iget-boolean v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIsTablet:Z

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->MAX_ITEMS_PORTRAIT_TABLET:I

    :goto_1
    return v1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->MAX_ITEMS_LANDSCAPE_TABLET:I

    goto :goto_1

    :cond_2
    if-eqz v0, :cond_3

    iget v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->MAX_ITEMS_PORTRAIT_PHONE:I

    goto :goto_1

    :cond_3
    iget v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->MAX_ITEMS_LANDSCAPE_PHONE:I

    goto :goto_1
.end method

.method private getNewActionPopupPosition([I)V
    .locals 38

    if-nez p1, :cond_0

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 p1, v0

    :cond_0
    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v18, v0

    const/16 v34, 0x2

    move/from16 v0, v34

    new-array v0, v0, [I

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v33

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationInWindow([I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    move-object/from16 v0, v34

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    const/16 v34, 0x0

    aget v34, v18, v34

    const/16 v35, 0x0

    aget v35, v33, v35

    sub-int v16, v34, v35

    const/16 v34, 0x1

    aget v34, v18, v34

    const/16 v35, 0x1

    aget v35, v33, v35

    sub-int v17, v34, v35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->viewportToContentVerticalOffset()I

    move-result v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->viewportToContentHorizontalOffset()I

    move-result v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    move/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v34

    move-object/from16 v0, v34

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    move/from16 v20, v0

    move/from16 v8, v20

    const/16 v21, 0x0

    move/from16 v19, v20

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v24

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v4

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v28, v34, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v27, v34, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineTop(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v6, v34, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v4}, Landroid/text/Layout;->getLineBottom(I)I

    move-result v34

    const/16 v35, 0x1

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v5, v34, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v29, v34, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    move-object/from16 v0, v34

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v34

    move/from16 v0, v34

    float-to-int v0, v0

    move/from16 v34, v0

    const/16 v35, 0x0

    aget v35, v33, v35

    add-int v34, v34, v35

    add-int v7, v34, v30

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/text/Layout;->getWidth()I

    move-result v12

    const/16 v34, 0x0

    aget v34, v33, v34

    add-int v13, v12, v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getWidth()I

    move-result v34

    const/16 v35, 0x0

    aget v35, v33, v35

    add-int v32, v34, v35

    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    move-object/from16 v0, p0

    iget v10, v0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    const/4 v11, 0x1

    move/from16 v9, v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupBgPaddingHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mPopupHeight:I

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v34

    invoke-interface/range {v34 .. v34}, Landroid/view/IWindowManager;->isStatusBarVisible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v11

    :goto_0
    if-nez v11, :cond_1

    const/16 v34, 0x0

    move/from16 v0, v34

    move-object/from16 v1, p0

    iput v0, v1, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->isMultiWindow()Z

    move-result v34

    if-eqz v34, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    const-string v35, "multiwindow_facade"

    invoke-virtual/range {v34 .. v35}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/samsung/android/multiwindow/MultiWindowFacade;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/content/Context;->getBaseActivityToken()Landroid/os/IBinder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v15, v0}, Lcom/samsung/android/multiwindow/MultiWindowFacade;->getStackBound(Landroid/os/IBinder;)Landroid/graphics/Rect;

    move-result-object v25

    if-eqz v25, :cond_2

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move/from16 v21, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move/from16 v19, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Rect;->height()I

    move-result v20

    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Landroid/widget/TextView;->isScaleWindow()Z

    move-result v34

    if-nez v34, :cond_c

    move/from16 v21, v17

    :cond_3
    :goto_1
    move/from16 v0, v26

    if-ne v0, v4, :cond_f

    const/16 v34, 0x0

    sub-int v35, v7, v29

    div-int/lit8 v35, v35, 0x2

    add-int v35, v35, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    aput v35, p1, v34

    const/16 v34, 0x0

    aget v34, v33, v34

    move/from16 v0, v29

    move/from16 v1, v34

    if-ge v0, v1, :cond_e

    const/16 v34, 0x0

    const/16 v35, 0x0

    aget v35, v33, v35

    const/16 v36, 0x0

    aget v36, v33, v36

    sub-int v36, v7, v36

    div-int/lit8 v36, v36, 0x2

    add-int v35, v35, v36

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    aput v35, p1, v34

    :cond_4
    :goto_2
    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    if-gtz v34, :cond_5

    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    invoke-static/range {v36 .. v36}, Ljava/lang/Math;->abs(I)I

    move-result v36

    sub-int v36, v36, v16

    add-int v35, v35, v36

    aput v35, p1, v34

    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    if-gtz v34, :cond_5

    const/16 v34, 0x0

    const/16 v35, 0x0

    aput v35, p1, v34

    :cond_5
    const/16 v34, 0x0

    aget v34, p1, v34

    add-int v34, v34, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v22

    if-le v0, v1, :cond_6

    const/16 v34, 0x0

    aget v35, p1, v34

    const/16 v36, 0x0

    aget v36, p1, v36

    add-int v36, v36, v16

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    move/from16 v37, v0

    add-int v36, v36, v37

    sub-int v36, v36, v22

    sub-int v35, v35, v36

    aput v35, p1, v34

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static/range {v34 .. v34}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v34

    if-eqz v34, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    move-object/from16 v34, v0

    invoke-virtual/range {v34 .. v34}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    move-result-object v34

    if-eqz v34, :cond_b

    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v28, v35

    aput v35, p1, v34

    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    move/from16 v35, v0

    add-int v35, v35, v2

    add-int v35, v35, v21

    move/from16 v0, v34

    move/from16 v1, v35

    if-gt v0, v1, :cond_7

    const/16 v34, 0x1

    add-int v35, v5, v10

    aput v35, p1, v34

    :cond_7
    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v19

    if-le v0, v1, :cond_9

    move/from16 v0, v19

    if-le v5, v0, :cond_10

    move/from16 v14, v19

    :goto_3
    if-gez v27, :cond_8

    const/16 v27, 0x0

    :cond_8
    add-int v34, v27, v10

    sub-int v34, v14, v34

    div-int/lit8 v14, v34, 0x2

    add-int v34, v27, v10

    sub-int v34, v5, v34

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    move/from16 v0, v34

    move/from16 v1, v35

    if-le v0, v1, :cond_11

    const/16 v34, 0x1

    add-int v35, v27, v10

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupHeight:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v36, v14, v36

    add-int v35, v35, v36

    aput v35, p1, v34

    :cond_9
    :goto_4
    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v9

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    add-int v34, v34, v35

    move/from16 v0, v34

    move/from16 v1, v19

    if-gt v0, v1, :cond_a

    const/16 v34, 0x1

    aget v34, p1, v34

    add-int v34, v34, v9

    move/from16 v0, v34

    move/from16 v1, v21

    if-ge v0, v1, :cond_b

    :cond_a
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v19, v35

    aput v35, p1, v34

    const/16 v34, 0x1

    aget v35, p1, v34

    sub-int v35, v35, v21

    aput v35, p1, v34

    :cond_b
    return-void

    :catch_0
    move-exception v3

    const-string v34, "Editor"

    const-string v35, "Remote exception while to check isStatusBarVisible"

    invoke-static/range {v34 .. v35}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_c
    if-eqz v17, :cond_d

    add-int v9, v21, v17

    :cond_d
    const/16 v21, 0x0

    move/from16 v19, v8

    goto/16 :goto_1

    :cond_e
    move/from16 v0, v32

    if-le v7, v0, :cond_4

    const/16 v34, 0x0

    sub-int v35, v32, v29

    div-int/lit8 v35, v35, 0x2

    add-int v35, v35, v29

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_2

    :cond_f
    const/16 v34, 0x0

    div-int/lit8 v35, v13, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    move/from16 v36, v0

    div-int/lit8 v36, v36, 0x2

    sub-int v35, v35, v36

    aput v35, p1, v34

    goto/16 :goto_2

    :cond_10
    move v14, v5

    goto/16 :goto_3

    :cond_11
    const/16 v34, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupHeight:I

    move/from16 v35, v0

    sub-int v35, v19, v35

    aput v35, p1, v34

    goto/16 :goto_4
.end method

.method private getPopupWidthLimit()I
    .locals 4

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->getMenuLimit()I

    move-result v0

    iget v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    mul-int/2addr v1, v0

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupMaxWidth:I

    iget v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupMaxWidth:I

    return v1
.end method

.method private getTextOffset()I
    .locals 2

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v0}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result v1

    add-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private initContentView()V
    .locals 12

    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v8, -0x2

    const/4 v9, 0x0

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00c4

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->MAX_ITEMS_PORTRAIT_PHONE:I

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00c5

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->MAX_ITEMS_LANDSCAPE_PHONE:I

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00c6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->MAX_ITEMS_PORTRAIT_TABLET:I

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e00c7

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    iput v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->MAX_ITEMS_LANDSCAPE_TABLET:I

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501dd

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mItemWidth:I

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10501e3

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    iput v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mExtraItemWidth:I

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10809aa

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDivider:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v6

    iput v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDividerWidth:I

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "layout_inflater"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    new-instance v2, Landroid/widget/LinearLayout;

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v6}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v2, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v11}, Landroid/widget/LinearLayout;->setShowDividers(I)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setDividerDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v9}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v6, 0x11

    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    iput-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v6, Landroid/widget/HorizontalScrollView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;)V

    iput-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    new-instance v7, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v7}, Landroid/widget/HorizontalScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v6, v9}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809af

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809a8

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809a7

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809ae

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809a6

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809b0

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809a9

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809b2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v7}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual {v7}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10809b1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isTablet()Z
    invoke-static {v6}, Landroid/widget/Editor;->access$3800(Landroid/widget/Editor;)Z

    move-result v5

    const/4 v0, 0x0

    :goto_0
    const/16 v6, 0x9

    if-ge v0, v6, :cond_1

    const v6, 0x109013b

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v1, v6, v7, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mIconDrawables:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, v10, v6, v10, v10}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz v5, :cond_0

    const-string/jumbo v6, "sans-serif-light"

    invoke-static {v6, v9}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    :cond_0
    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v0, v4}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x104000d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x1040003

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x1040001

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x104000b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v7, 0x4

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x10407e1

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v7, 0x5

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x1040585

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v7, 0x6

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x104096b

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v7, 0x7

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x1040587

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x104096d

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget-object v7, p0, Landroid/widget/Editor$NewActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v7}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;)V

    iget-object v6, p0, Landroid/widget/Editor$NewActionPopupWindow;->mContentView:Landroid/view/ViewGroup;

    invoke-virtual {v6, v9}, Landroid/view/ViewGroup;->setLayoutDirection(I)V

    return-void
.end method

.method private measureContent()V
    .locals 5

    const/high16 v4, -0x80000000

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v2, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/widget/HorizontalScrollView;->measure(II)V

    return-void
.end method

.method private setHeight()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    sget-object v4, Landroid/R$styleable;->ActionBar:[I

    const v5, 0x10102ce

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mActionBarHeight:I

    iget-object v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v2}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    iget v3, v3, Landroid/widget/TextView;->mTextSelectHandleRes:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHandlerHeight:I

    const/high16 v2, 0x41c80000    # 25.0f

    iget-object v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v3}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mStatusbarHeight:I

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private updateNewActionPopupPosition()V
    .locals 5

    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPositionX:I

    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPositionY:I

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPositionX:I

    iget v4, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPositionY:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_0
.end method


# virtual methods
.method public hide()V
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v0}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/Editor$PositionListener;->removeSubscriber(Landroid/widget/Editor$TextViewPositionListener;)V

    return-void
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_1

    const v0, 0x102001f

    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->onTextContextMenuItem(I)Z

    return-void

    :cond_1
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_2

    const v0, 0x1020020

    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_3

    const v0, 0x1020021

    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_4

    const v0, 0x1020022

    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    :cond_4
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_5

    const v0, 0x102004a

    goto :goto_0

    :cond_5
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_6

    const v0, 0x1020498

    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    :cond_6
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_7

    const v0, 0x1020048

    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_8

    const v0, 0x102049a

    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0

    :cond_8
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne p1, v1, :cond_0

    const v0, 0x1020049

    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto/16 :goto_0
.end method

.method public relocateNewActionPopupWindow(I)V
    .locals 2

    if-ltz p1, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->computeLocalPosition()V

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->calculatePopupWindowWidth()V

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->updateNewActionPopupPosition()V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 8

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    instance-of v1, v1, Landroid/inputmethodservice/ExtractEditText;

    if-eqz v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-object v4, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-virtual {v4}, Landroid/widget/Editor;->isTranslatorEnabled()Z

    move-result v4

    iput-boolean v4, v1, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    iput v3, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuItemCount:I

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    iget-object v4, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v4}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/TextView;->canCut()Z

    move-result v4

    aput-boolean v4, v1, v2

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    const/4 v4, 0x2

    iget-object v5, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v5}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/TextView;->canCopy()Z

    move-result v5

    aput-boolean v5, v1, v4

    iget-object v4, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    const/4 v5, 0x3

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canPaste()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mPasteEnable:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    aput-boolean v1, v4, v5

    iget-object v4, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mThemeIsDeviceDefault:Z
    invoke-static {v1}, Landroid/widget/Editor;->access$2200(Landroid/widget/Editor;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getSecClipboardEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    instance-of v1, v1, Landroid/text/Editable;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getKeyListener()Landroid/text/method/KeyListener;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->getClipboardExManager()Landroid/sec/clipboard/ClipboardExManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/clipboard/ClipboardExManager;->getDataListSize()I

    move-result v1

    if-lez v1, :cond_2

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mClipboardEnable:Z

    if-eqz v1, :cond_2

    move v1, v2

    :goto_2
    aput-boolean v1, v4, v6

    iget-object v4, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    const/4 v5, 0x5

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mShareEnable:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isFinishSetupWizard()Z

    move-result v1

    if-eqz v1, :cond_3

    move v1, v2

    :goto_3
    aput-boolean v1, v4, v5

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    const/4 v4, 0x6

    iget-object v5, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->isDictionaryEnabled()Z
    invoke-static {v5}, Landroid/widget/Editor;->access$3500(Landroid/widget/Editor;)Z

    move-result v5

    aput-boolean v5, v1, v4

    iget-object v4, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    const/4 v5, 0x7

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mWebSearchEnable:Z

    if-eqz v1, :cond_4

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->isFinishSetupWizard()Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v2

    :goto_4
    aput-boolean v1, v4, v5

    iget-object v4, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # getter for: Landroid/widget/Editor;->mTextView:Landroid/widget/TextView;
    invoke-static {v1}, Landroid/widget/Editor;->access$1000(Landroid/widget/Editor;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/TextView;->canTranslate()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    iget-boolean v1, v1, Landroid/widget/Editor;->mCurrentTranslateEnable:Z

    if-eqz v1, :cond_5

    move v1, v2

    :goto_5
    aput-boolean v1, v4, v7

    const/4 v0, 0x0

    :goto_6
    const/16 v1, 0x9

    if-ge v0, v1, :cond_7

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_6

    iget v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuItemCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuItemCount:I

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_1
    move v1, v3

    goto/16 :goto_1

    :cond_2
    move v1, v3

    goto :goto_2

    :cond_3
    move v1, v3

    goto :goto_3

    :cond_4
    move v1, v3

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_5

    :cond_6
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_7

    :cond_7
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuEnables:[Z

    aget-boolean v1, v1, v6

    if-eqz v1, :cond_9

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardShareAllowed()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-static {}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getInstance()Landroid/sec/enterprise/EnterpriseDeviceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/sec/enterprise/EnterpriseDeviceManager;->getRestrictionPolicy()Landroid/sec/enterprise/RestrictionPolicy;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/sec/enterprise/RestrictionPolicy;->isClipboardAllowed(Z)Z

    move-result v1

    if-nez v1, :cond_9

    :cond_8
    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mMenuTextViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_9
    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->calculatePopupWindowWidth()V

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->computeLocalPosition()V

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v2, p0, Landroid/widget/Editor$NewActionPopupWindow;->mPopupWidth:I

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->mHorizontalScrollView:Landroid/widget/HorizontalScrollView;

    invoke-virtual {v1, v3}, Landroid/widget/HorizontalScrollView;->setScrollX(I)V

    iget-object v1, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    # invokes: Landroid/widget/Editor;->getPositionListener()Landroid/widget/Editor$PositionListener;
    invoke-static {v1}, Landroid/widget/Editor;->access$2300(Landroid/widget/Editor;)Landroid/widget/Editor$PositionListener;

    move-result-object v1

    invoke-virtual {v1, p0, v3}, Landroid/widget/Editor$PositionListener;->addSubscriber(Landroid/widget/Editor$TextViewPositionListener;Z)V

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->updateNewActionPopupPosition()V

    goto/16 :goto_0
.end method

.method public updatePosition(IIZZ)V
    .locals 2

    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/Editor$NewActionPopupWindow;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->getTextOffset()I

    move-result v1

    # invokes: Landroid/widget/Editor;->isOffsetVisible(I)Z
    invoke-static {v0, v1}, Landroid/widget/Editor;->access$2500(Landroid/widget/Editor;I)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p4, :cond_0

    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->computeLocalPosition()V

    :cond_0
    invoke-direct {p0}, Landroid/widget/Editor$NewActionPopupWindow;->updateNewActionPopupPosition()V

    :goto_0
    return-void

    :cond_1
    invoke-virtual {p0}, Landroid/widget/Editor$NewActionPopupWindow;->hide()V

    goto :goto_0
.end method
